package controler.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import controler.BDDException;
import controler.TypeProduit;

public class TypeProduitDAO extends DAO<TypeProduit>{
	
	Statement statement=null;
	ResultSet resultSet=null;

	public TypeProduitDAO(Connection conn) {
		super(conn);
	}

	@Override
	public ArrayList<TypeProduit> getListe() {
		ArrayList<TypeProduit> listeTypesProduits = new ArrayList<TypeProduit>();
		String requete = "select * from type_produit";
		
		try {
			statement = connexionBDD.createStatement();
			resultSet = statement.executeQuery(requete);
			while (resultSet.next()) listeTypesProduits.add(new TypeProduit(resultSet.getInt("id_type_produit"), resultSet.getString("lib_type_produit"), resultSet.getDouble("tva_type_produit")));
		}catch(SQLException e) {
			new BDDException(e.getErrorCode(), "Erreur avec la BDD pour obtenir la liste des types de produits").afficheErreur();			
		}
		
		return listeTypesProduits;
	}

	@Override
	public TypeProduit insereNouveau(TypeProduit param) throws BDDException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TypeProduit getById(int id) throws BDDException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
