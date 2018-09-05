package modele.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import modele.BDDException;
import modele.Client;
import modele.Services;

public class ClientDAO extends DAO<Client> {
	Statement			monState	= null;
	ResultSet			retour		= null;
	CallableStatement	ps_insert;

	// Constructeur par défaut
	public ClientDAO(Connection conn) {
		super(conn);
	}

	// Renvoie le liste des clients dans la BDD
	public ArrayList<Client> getListe() {
		ArrayList<Client> listeClients = new ArrayList<Client>();
		String requete = "select * from vue_client";
		try {
			monState = connexionBDD.createStatement();
			retour = monState.executeQuery(requete);
			while (retour.next()) {
				Client temp = new Client();
				temp.setId(retour.getInt("id_client"));
				temp.setNom(retour.getString("nom_client"));
				temp.setPrenom(retour.getString("prenom_client"));
				temp.setDateInscription((retour.getString("date_inscription_client") == null) ? ""
						: retour.getString("date_inscription_client"));
				temp.setSexe(retour.getString("sexe_client"));
				temp.setMail(retour.getString("mail_client"));
				temp.setTelephone(retour.getString("tel_client"));
				temp.setDateNaissance((retour.getString("date_naissance_client") == null) ? ""
						: retour.getString("date_naissance_client"));
				temp.setAdresse(retour.getString("adresse_client"));
				temp.setCodePostal(retour.getString("code_postal_client"));
				temp.setVille(retour.getString("ville_client"));
				temp.setPays(retour.getString("pays_client"));
				temp.setCommentaire(retour.getString("commentaire_client"));
				temp.setMdp(retour.getString("mdp_client"));
				temp.setStatut(retour.getString("statut"));
				listeClients.add(temp);
			}
		} catch (SQLException e) {
			new BDDException(e.getErrorCode(), "Erreur avec la BDD pour obtenir la liste des clients").afficheErreur();
		}

		return listeClients;
	}

	@Override
	public Client insereNouveau(Client param) throws BDDException {

		// Appeler la procédure stockée
		try {
			ps_insert = connexionBDD.prepareCall("call sp_insert_client(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

			ps_insert.setString(1, param.getDateInscription());
			ps_insert.setString(2, param.getNom());
			ps_insert.setString(3, param.getPrenom());
			ps_insert.setString(4, param.getSexe());
			ps_insert.setString(5, param.getMail());
			ps_insert.setString(6, param.getTelephone());
			ps_insert.setString(7, ((param.getDateNaissance().isEmpty()) ? null : param.getDateNaissance()));
			ps_insert.setString(8, param.getAdresse());
			ps_insert.setInt(9, ((param.getCodePostal().isEmpty()) ? 0 : Integer.parseInt(param.getCodePostal())));
			ps_insert.setString(10, param.getVille());
			ps_insert.setString(11, param.getPays());
			ps_insert.setString(12, param.getCommentaire());
			ps_insert.setString(13, param.getMdp());
			ps_insert.registerOutParameter(14, java.sql.Types.INTEGER);
			ps_insert.registerOutParameter(15, java.sql.Types.VARCHAR);
			ps_insert.registerOutParameter(16, java.sql.Types.INTEGER);

			ps_insert.execute();

			int id = ps_insert.getInt(16);
			String erreurMessage = ps_insert.getString(15);
			int erreurCode = ps_insert.getInt(14);

			// Gérer les exceptions provenants de la BDD et les lancer
			switch (erreurCode) {
			case 0:
				// Tout s'est bien passé
				if (id != 0)
					param.setId(id);
				break;
			case 1062:
				throw new BDDException(erreurCode, "Cet utilisateur est déjà présent dans la BDD");
			case 1022:
				throw new BDDException(erreurCode, "Cet utilisateur est déjà présent dans la BDD");
			case 1292:
				throw new BDDException(erreurCode, erreurMessage);
			default:
				throw new BDDException(erreurCode, "Une erreur s'est produite, merci de contacter l'administrateur.");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return param;
	}

	public Client insereNouveauGuest() throws BDDException {
		Client clientRetour = new Client();

		try {
			ps_insert = connexionBDD.prepareCall("call sp_insert_client_guest(?,?,?)");
			ps_insert.registerOutParameter(1, java.sql.Types.INTEGER);
			ps_insert.registerOutParameter(2, java.sql.Types.VARCHAR);
			ps_insert.registerOutParameter(3, java.sql.Types.INTEGER);
			ps_insert.execute();

			String erreurMessage = ps_insert.getString(2);
			clientRetour.setId(0);
			int erreurCode = ps_insert.getInt(1);

			switch (erreurCode) {
			case 0:
				clientRetour.setId(ps_insert.getInt(3));
				break;
			case 1062:
				throw new BDDException(erreurCode, "Cet utilisateur est déjà présent dans la BDD");
			case 1022:
				throw new BDDException(erreurCode, "Cet utilisateur est déjà présent dans la BDD");
			case 1292:
				throw new BDDException(erreurCode, erreurMessage);
			default:
//				System.out.println(erreurMessage);
				throw new BDDException(erreurCode, "Une erreur s'est produite, merci de contacter l'administrateur.");
			}

		} catch (SQLException e) {
			new BDDException(e.getErrorCode(), "Erreur avec la BDD lors de l'enregistrement d'un invité.")
					.afficheErreur();
		}

		return clientRetour;
	}

	public Client getByMail(String mail) {
		Client clientRetour = new Client();

		try {
			PreparedStatement statement = connexionBDD.prepareCall("select * from vue_client where mail_client=?");
			statement.setString(1, mail);
			ResultSet resultset = statement.executeQuery();
			boolean flag_vue = true;
			if (!resultset.isLast()) {
				statement = connexionBDD.prepareCall("select * from client where mail_client=?");
				statement.setString(1, mail);
				flag_vue = false;
				resultset = statement.executeQuery();
			}
			while (resultset.next()) {
				clientRetour.setId(resultset.getInt("id_client"));
				clientRetour.setDateInscription(resultset.getString("date_inscription_client"));
				clientRetour.setNom(resultset.getString("nom_client"));
				clientRetour.setPrenom(resultset.getString("prenom_client"));
				clientRetour.setSexe(resultset.getString("sexe_client"));
				clientRetour.setMail(resultset.getString("mail_client"));
				clientRetour.setTelephone(resultset.getString("tel_client"));
				clientRetour.setDateNaissance(resultset.getString("date_naissance_client"));
				clientRetour.setAdresse(resultset.getString("adresse_client"));
				clientRetour.setCodePostal(resultset.getString("code_postal_client"));
				clientRetour.setVille(resultset.getString("ville_client"));
				clientRetour.setPays(resultset.getString("pays_client"));
				clientRetour.setCommentaire(resultset.getString("commentaire_client"));
				clientRetour.setStatut((flag_vue) ? resultset.getString("statut") : "administrateur");
			}
		} catch (SQLException e) {
			new BDDException(e.getErrorCode(), "Erreur dans la récupération des infos du client lors de la connexion")
					.afficheErreur();
		}

		return clientRetour;
	}

	@Override
	public Client getById(int id) throws BDDException, SQLException {
		Client clientRetour = new Client();

		PreparedStatement state = connexionBDD.prepareStatement("select * from vue_client where id_client=?");
		state.setInt(1, id);
		ResultSet resultset = state.executeQuery();
		resultset.last();
		if (resultset.getRow() == 1) {
			resultset.first();
			clientRetour.setId(resultset.getInt("id_client"));
			clientRetour.setDateInscription(resultset.getString("date_inscription_client"));
			clientRetour.setNom(resultset.getString("nom_client"));
			clientRetour.setPrenom(resultset.getString("prenom_client"));
			clientRetour.setSexe(resultset.getString("sexe_client"));
			clientRetour.setMail(resultset.getString("mail_client"));
			clientRetour.setTelephone(resultset.getString("tel_client"));
			clientRetour.setDateNaissance(resultset.getString("date_naissance_client"));
			clientRetour.setAdresse(resultset.getString("adresse_client"));
			clientRetour.setCodePostal(resultset.getString("code_postal_client"));
			clientRetour.setVille(resultset.getString("ville_client"));
			clientRetour.setPays(resultset.getString("pays_client"));
			clientRetour.setCommentaire(resultset.getString("commentaire_client"));
			clientRetour.setStatut(resultset.getString("statut"));
		}
		return clientRetour;
	}

	public boolean deleteGuestConnecte(int idClient) throws BDDException {
		boolean retour = false;

		if (idClient != 0) {
			try {
				CallableStatement statement = connexionBDD.prepareCall("call sp_deleteGuest(?,?,?,?)");
				statement.setInt(1, idClient);
				statement.registerOutParameter(2, java.sql.Types.INTEGER);
				statement.registerOutParameter(3, java.sql.Types.VARCHAR);
				statement.registerOutParameter(4, java.sql.Types.BOOLEAN);
				statement.execute();

				int erreurCode = statement.getInt(2);
				retour = statement.getBoolean(4);
				String erreurMessage;
				switch (erreurCode) {
				case 1106:
					erreurMessage = "les paramètres envoyés sont incorrects";
					throw new BDDException(erreurCode, erreurMessage);
				case 1146:
					erreurMessage = "la table indiquée n'existe pas";
					throw new BDDException(erreurCode, erreurMessage);
				case 20005:
					erreurMessage = "Le client indiqué n'a pas été trouvé";
					throw new BDDException(erreurCode, erreurMessage);
				}
			} catch (SQLException e) {
				Services.afficheErreur("Erreur de suppression", "Erreur dans la suppression du guest");
			}
		}

		return retour;
	}
}
