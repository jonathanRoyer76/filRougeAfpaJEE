package controler.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import controler.BDDException;
import controler.Client;
import controler.Commande;
import controler.Produit;
import controler.ProduitCommande;

public class CommandeDAO extends DAO<Commande>{
	

	public CommandeDAO(Connection conn) {
		super(conn);
	}
	
	@Override
	public ArrayList<Commande> getListe() {
		return null;
	}
	
	public int insereNouveau(int idClient, Produit produit, int quantite) throws BDDException{
		return 0;
	}
		
	public ArrayList<Commande> getListeByIdClient(int idClient)  throws BDDException{
		ArrayList<Commande> retour = new ArrayList<Commande>();
		if (idClient!=0) { 
			try {
				Client client = DAOFactory.getClientDAO().getById(idClient);
				try {
					PreparedStatement statement = connexionBDD.prepareStatement("select * from vue_listeCommandesClient where id_client=?");
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
					new BDDException(e.getErrorCode(), "Erreur lors de l'obtention de la liste des commandes").afficheErreur();
				}
			} catch (BDDException e1) {
				new BDDException(e1.getCodeErreur(), "Erreur lors de la récupération des infos du client connecté").afficheErreur();
			} catch (SQLException e1) {
				new BDDException(e1.getErrorCode(), "Erreur non gérée pendant la récupération des infos du client connecté, merci de contacter l'administrateur.").afficheErreur();			
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
		
		PreparedStatement statement = connexionBDD.prepareStatement("select * from vue_detailCommande where idCommande=?");
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
			System.out.println(result.getDouble("totalTTCApresRemise"));
		}
		
		return retour;
	}
	
	//Renvoi la liste des produits contenus dans une commande
	public ArrayList<ProduitCommande> getListeProduitsCommande(int idCommande) throws BDDException, SQLException{
		ArrayList<ProduitCommande> liste = null;
		
		try {
			PreparedStatement state = connexionBDD.prepareStatement("select * from vue_detailProduitsCommande where idCommande=?");
			state.setInt(1, idCommande);
			ResultSet result = state.executeQuery();
			liste = new ArrayList<ProduitCommande>();
			while (result.next()) {
				liste.add(new ProduitCommande(
						result.getInt("idProduit"),
						result.getString("nomProduit"),
						result.getDouble("prixProduit"),
						result.getInt("quantiteProduit"),
						result.getDouble("totalTTCProduit")
						));
			}
		} catch (SQLException e) {
//			e.printStackTrace();
			new BDDException(e.getErrorCode(), "Erreur dans la récupération de la liste de produits de la commande").afficheErreur();
		}
		
		return liste;
	}
}
