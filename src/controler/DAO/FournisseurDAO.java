package controler.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import controler.BDDException;
import controler.Fournisseur;

public class FournisseurDAO extends DAO<Fournisseur>{
	Statement monState = null;
	ResultSet retour=null;
	
	//Constructeur surchargé
	public FournisseurDAO(Connection conn) {
		super(conn);
	}	
	
	public ArrayList<Fournisseur> getListe(){
		ArrayList<Fournisseur> listeFournisseurs = new ArrayList<Fournisseur>();
		
		try {
			monState=connexionBDD.createStatement();
			retour=monState.executeQuery("select * from fournisseur");
			while (retour.next()) {
				Fournisseur temp = new Fournisseur(retour.getInt("id_fournisseur"), retour.getString("nom_fournisseur"), retour.getString("mail_fournisseur"));
				System.out.println(toString(temp));
				listeFournisseurs.add(temp);				
			}
		} catch (SQLException e) {
			new BDDException(e.getErrorCode(), "Erreur avec la BDD pour obtenir la liste des fournisseurs").afficheErreur();
		}
		
		return listeFournisseurs;
	}
	
	public String toString(Fournisseur fournisseur) {
		return fournisseur.getId()+" - "+fournisseur.getNom()+" - "+fournisseur.getMail();
	}

	@Override
	public Fournisseur insereNouveau(Fournisseur param) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Fournisseur getById(int id) throws BDDException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
