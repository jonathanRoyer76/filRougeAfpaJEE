package modele.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import modele.BDDException;
import modele.InfosAnnexes;
import modele.Produit;

public class InfosAnnexesDAO extends DAO<InfosAnnexes>{
	
	private PreparedStatement statement;
	private ResultSet resultset;

	public InfosAnnexesDAO(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public ArrayList<InfosAnnexes> getListe() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public ArrayList<InfosAnnexes> getListe(Produit produit) {
		ArrayList<InfosAnnexes> listeInfosAnnexes = new ArrayList<InfosAnnexes>();
		
		String requete = "select type_info_annexe.id_info_annexe_produit as idTypeInfo, type_info_annexe.lib_info_annexe as typeInfo, produit_info_annexe.lib_info_annexe as libelleInfo\n" + 
				"from produit, type_info_annexe, produit_info_annexe\n" + 
				"where produit.id_produit=produit_info_annexe.id_produit\n" + 
				"and produit_info_annexe.id_info_annexe_produit=type_info_annexe.id_info_annexe_produit\n" + 
				"and produit.id_produit=?";
				
		try {
			statement = connexionBDD.prepareStatement(requete);
			statement.setInt(1, produit.getIdProduit());
			resultset = statement.executeQuery();
			while (resultset.next()) {
				listeInfosAnnexes.add(new InfosAnnexes(resultset.getInt("idTypeInfo"), resultset.getString("typeInfo"), resultset.getString("libelleInfo")));
			}
		} catch (SQLException e) {
			new BDDException(e.getErrorCode(), "Erreur avec la BDD pour obtenir la liste des informations annexes pour le produit demandé.").afficheErreur();
		}
		
		return listeInfosAnnexes;
	}

	@Override
	public InfosAnnexes insereNouveau(InfosAnnexes param) throws BDDException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public InfosAnnexes getById(int id) throws BDDException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
