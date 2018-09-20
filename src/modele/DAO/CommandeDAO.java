package modele.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import modele.BDDException;
import modele.CAHTMensuel;
import modele.CaHtAnneeAvecPaniers;
import modele.Client;
import modele.Commande;
import modele.Produit;
import modele.ProduitCommande;
import modele.Services;

public class CommandeDAO extends DAO<Commande> {

	public CommandeDAO(Connection conn) {
		super(conn);
	}

	@Override
	public ArrayList<Commande> getListe() {
		return null;
	}

	public int insereNouveau(int idClient, Produit produit, int quantite) throws BDDException {
		return 0;
	}

	// Pour la direction, retourne la répartition du CAHT par famille
	public ArrayList<CAHTMensuel> getCAMensuel() throws BDDException {
		ArrayList<CAHTMensuel> listeRetour = new ArrayList<CAHTMensuel>();

		try {
			Statement state = connexionBDD.createStatement();
			ResultSet set = state.executeQuery("select * from vue_CAHT_parFamille_moisEnCours");
			while (set.next()) {
				CAHTMensuel temp = new CAHTMensuel();
				temp.setCAHT(set.getInt("totalHTProduit"));
				temp.setLibelleFamille(set.getString("libelleFamille"));
				listeRetour.add(temp);

			}
		} catch (SQLException e) {
//			Services.afficheErreur("Erreur avec la base de données",
//					"Impossible de récupérer la liste des produits en stock");
			e.printStackTrace();
		}

		return listeRetour;
	}

	public ArrayList<Commande> getListeByIdClient(int idClient) throws BDDException {
		ArrayList<Commande> retour = new ArrayList<Commande>();
		if (idClient != 0) {
			try {
				Client client = DAOFactory.getClientDAO().getById(idClient);
				try {
					PreparedStatement statement = connexionBDD
							.prepareStatement("select * from vue_listeCommandesClient where id_client=?");
					statement.setInt(1, idClient);
					ResultSet result = statement.executeQuery();
					while (result.next()) {
						Commande temp = new Commande();
						temp.setIdCommande(result.getInt("idCommande"));
						temp.setDateCreationCommande(result.getString("dateCommande"));
						temp.setNombreProduits(result.getInt("totalNbProduit"));
						temp.setTotalTTCcommande(result.getDouble("TotalTTCCommande"));
						temp.setDernierStatutCommande(result.getString("statutCommande"));
						temp.setClient(client);
						retour.add(temp);
					}
				} catch (SQLException e) {
//					e.printStackTrace();
					new BDDException(e.getErrorCode(), "Erreur lors de l'obtention de la liste des commandes")
							.afficheErreur();
				}
			} catch (BDDException e1) {
				new BDDException(e1.getCodeErreur(), "Erreur lors de la récupération des infos du client connecté")
						.afficheErreur();
			} catch (SQLException e1) {
				new BDDException(e1.getErrorCode(),
						"Erreur non gérée pendant la récupération des infos du client connecté, merci de contacter l'administrateur.")
								.afficheErreur();
			}
		}

		return retour;
	}

	@Override
	public Commande insereNouveau(Commande param) throws BDDException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Commande getById(int id) throws BDDException, SQLException {
		Commande retour = new Commande();

		PreparedStatement statement = connexionBDD
				.prepareStatement("select * from vue_detailCommande where idCommande=?");
		statement.setInt(1, id);
		ResultSet result = statement.executeQuery();

		while (result.next()) {
			Client client = new Client();
			client.setId(result.getInt("idClient"));
			client.setPrenom(result.getString("prenomClient"));
			client.setNom(result.getString("nomClient"));
			retour.setClient(client);
			retour.setIdCommande(id);
			retour.setRemiseGlobale(result.getDouble("montantRemise"));
			retour.setDateCreationCommande(result.getString("dateCreation"));
			retour.setTotalTTCSansRemise(result.getDouble("totalTTCSansRemise"));
			retour.setTotalTTCcommande(result.getDouble("totalTTCApresRemise"));
//			System.out.println(result.getDouble("totalTTCApresRemise"));
		}
		ArrayList<ProduitCommande> listeProduitsPanier = null;
		try {
			listeProduitsPanier = getListeProduitsCommande(retour.getIdCommande());
			if (listeProduitsPanier != null) {
				retour.setListeProduitsCommande(listeProduitsPanier);
				int nombreProduits = 0;
				for (ProduitCommande temp : listeProduitsPanier)
					nombreProduits += temp.getQuantite();
				retour.setNombreProduits(nombreProduits);
			}
		} catch (BDDException e) {
			Services.afficheErreur("Erreur", "Une erreur dans l'échange avec la bdd s'est produite");
		} catch (SQLException e) {
			Services.afficheErreur("Erreur", "Une erreur SQL s'est produite");
		}

		return retour;
	}

	// Retourne le CA HT incluant les paniers pour l'année en cours
	public ArrayList<CaHtAnneeAvecPaniers> getCAHTAnneeEnCoursAvecPaniers() {
		ArrayList<CaHtAnneeAvecPaniers> listeRetour = new ArrayList<CaHtAnneeAvecPaniers>();

		try {
			Statement state = connexionBDD.createStatement();
			ResultSet set = state.executeQuery("select * from vue_CAHTMois_avecPaniers");
			while (set.next()) {
				CaHtAnneeAvecPaniers temp = new CaHtAnneeAvecPaniers();
				temp.setCAHTMois(set.getDouble("CAHTMois"));
				temp.setDateDernierStatut(set.getString("dateDernierStatut"));
				temp.setMois(set.getString("Mois"));
				temp.setIdCommande(set.getInt("idCommande"));
				temp.setTotalHTCommande(set.getDouble("totalHTCommande"));
				listeRetour.add(temp);
			}
		} catch (SQLException e) {
//			Services.afficheErreur("Erreur avec la base de données",
//					"Impossible de récupérer le CA HT de l'année en cours");
			e.printStackTrace();
		}

		return listeRetour;
	}

	// Renvoi la liste des produits contenus dans une commande
	public ArrayList<ProduitCommande> getListeProduitsCommande(int idCommande) throws BDDException, SQLException {
		ArrayList<ProduitCommande> liste = null;

		try {
			PreparedStatement state = connexionBDD
					.prepareStatement("select * from vue_detailProduitsCommande where idCommande=?");
			state.setInt(1, idCommande);
			ResultSet result = state.executeQuery();
			liste = new ArrayList<ProduitCommande>();
			while (result.next()) {
				liste.add(new ProduitCommande(result.getInt("idProduit"), result.getString("nomProduit"),
						result.getDouble("prixProduit"), result.getInt("quantiteProduit"),
						result.getDouble("totalTTCProduit")));
			}
		} catch (SQLException e) {
//			e.printStackTrace();
			new BDDException(e.getErrorCode(), "Erreur dans la récupération de la liste de produits de la commande")
					.afficheErreur();
		}

		return liste;
	}

	// Cherche dans la liste des commandes pour trouver un panier et le renvoyer
	public Commande getPanierByIdClient(int idClient) {
		Commande retour = null;

		PreparedStatement statement;
		try {
			statement = connexionBDD.prepareStatement("select * from vue_paniers where idClient=?");
			statement.setInt(1, idClient);
			ResultSet result = statement.executeQuery();

			if (!result.isLast()) {
				retour = new Commande();
				while (result.next()) {
					Client client = new Client();
					client.setId(idClient);
					client.setPrenom(result.getString("prenomClient"));
					client.setNom(result.getString("nomClient"));
					retour.setClient(client);
					retour.setIdCommande(result.getInt("idCommande"));
					retour.setRemiseGlobale(result.getDouble("montantRemise"));
					retour.setDateCreationCommande(result.getString("dateCreation"));
					retour.setTotalTTCSansRemise(result.getDouble("totalTTCSansRemise"));
					retour.setTotalTTCcommande(result.getDouble("totalTTCApresRemise"));
//					System.out.println(result.getDouble("totalTTCApresRemise"));
				}
				ArrayList<ProduitCommande> listeProduitsPanier = null;
				try {
					listeProduitsPanier = getListeProduitsCommande(retour.getIdCommande());
					if (listeProduitsPanier != null) {
						retour.setListeProduitsCommande(listeProduitsPanier);
						Services.calculTotalProduitsCommande(retour);
					}
				} catch (BDDException e) {
					Services.afficheErreur("Erreur", "Une erreur dans l'échange avec la bdd s'est produite");
				} catch (SQLException e) {
					Services.afficheErreur("Erreur", "Une erreur SQL s'est produite");
				}
			}
		} catch (SQLException e) {
//			Services.afficheErreur("Erreur dans la récupération du panier", "Une erreur imprévue est survenue");
			e.printStackTrace();
		}

		return retour;
	}

	// Cherche dans la liste des commandes pour trouver un panier et le renvoyer
	public Commande getPanierByIdPanier(int idCommande) {
		Commande retour = null;

		PreparedStatement statement;
		try {
			statement = connexionBDD.prepareStatement("select * from vue_paniers where idCommande=?");
			statement.setInt(1, idCommande);
			ResultSet result = statement.executeQuery();

			if (!result.isLast()) {
				retour = new Commande();
				while (result.next()) {
					Client client = new Client();
					client.setId(result.getInt("idClient"));
					client.setPrenom(result.getString("prenomClient"));
					client.setNom(result.getString("nomClient"));
					retour.setClient(client);
					retour.setIdCommande(result.getInt("idCommande"));
					retour.setRemiseGlobale(result.getDouble("montantRemise"));
					retour.setDateCreationCommande(result.getString("dateCreation"));
					retour.setTotalTTCSansRemise(result.getDouble("totalTTCSansRemise"));
					retour.setTotalTTCcommande(result.getDouble("totalTTCApresRemise"));
//					System.out.println(result.getDouble("totalTTCApresRemise"));
				}
				ArrayList<ProduitCommande> listeProduitsPanier = null;
				try {
					listeProduitsPanier = getListeProduitsCommande(retour.getIdCommande());
					if (listeProduitsPanier != null) {
						retour.setListeProduitsCommande(listeProduitsPanier);
						Services.calculTotalProduitsCommande(retour);
					}
				} catch (BDDException e) {
					Services.afficheErreur("Erreur", "Une erreur dans l'échange avec la bdd s'est produite");
				} catch (SQLException e) {
					Services.afficheErreur("Erreur", "Une erreur SQL s'est produite");
				}
			}
		} catch (SQLException e) {
//			Services.afficheErreur("Erreur dans la récupération du panier", "Une erreur imprévue est survenue");
			e.printStackTrace();
		}

		return retour;
	}

	public boolean validationPanier(int idCommande) throws BDDException {
		boolean retour = false;

		CallableStatement statement;
		try {
			statement = connexionBDD.prepareCall("call sp_validation_panier(?, ?, ?, ?)");
			statement.setInt(1, idCommande);
			statement.registerOutParameter(2, java.sql.Types.VARCHAR);
			statement.registerOutParameter(3, java.sql.Types.INTEGER);
			statement.registerOutParameter(4, java.sql.Types.BOOLEAN);
			statement.execute();

			String erreurMessage = statement.getString(2);
			int erreurCode = statement.getInt(3);
			boolean success = statement.getBoolean(4);

			switch (erreurCode) {
			case 0:
				retour = true;
				break;
			case 20001:
				throw new BDDException(erreurCode, "La commande passée en paramètre est invalide");
			default:
				throw new BDDException(erreurCode, "Une erreur inattendue s'est produite");
			}

		} catch (SQLException e) {
//			Services.afficheErreur("Erreur : " + e.getErrorCode(), "Une erreur inattendue s'est produite");
			e.printStackTrace();
		}

		return retour;
	}
}
