package controler.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import controler.BDDException;
import controler.GenreProduit;

public class GenreProduitDAO extends DAO<GenreProduit>{

	Statement statement;
	ResultSet resultset;
	
	public GenreProduitDAO(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public ArrayList<GenreProduit> getListe() {
		ArrayList<GenreProduit> listeGenresProduits = new ArrayList<GenreProduit>();
		String requete = "select * from genre_produit";
		try {
			statement = connexionBDD.createStatement();
			resultset = statement.executeQuery(requete);
			while (resultset.next()) listeGenresProduits.add(new GenreProduit(resultset.getInt("id_genre_produit"), resultset.getString("lib_genre_produit")));
		} catch (SQLException e) {
			new BDDException(e.getErrorCode(), "Erreur avec la BDD pour obtenir la liste des genres de produits").afficheErreur();
		}
		
		return listeGenresProduits;
	}

	@Override
	public GenreProduit insereNouveau(GenreProduit param) throws BDDException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public GenreProduit getById(int id) throws BDDException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}	
}
