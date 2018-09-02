package modele.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import modele.BDDException;
import modele.Produit;

public class ProduitDAO extends DAO<Produit> {
	
	Statement statement;
	ResultSet resultset;	
	PreparedStatement preparedStatement;

	public ProduitDAO(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public ArrayList<Produit> getListe() {
		ArrayList<Produit> listeProduits = new ArrayList<Produit>();
		
		String requete = "select * from vue_listeProduits";
		try {
			statement = connexionBDD.createStatement();
			resultset = statement.executeQuery(requete);
			
			while (resultset.next()) {
				Produit temp = new Produit();
				temp.setIdProduit(resultset.getInt("idProduit"));
				temp.setNomProduit(resultset.getString("nomProduit"));
				temp.setQuantiteStock(resultset.getInt("quantiteStock"));
				temp.setStockMinimum(resultset.getInt("stockMinimum"));
				temp.setStockObjectif(resultset.getInt("stockObjectif"));
				temp.setPrixVenteHT(resultset.getDouble("prixVenteHT"));
				temp.setTauxTVA(resultset.getDouble("tauxTVA"));
				temp.setPrixVenteTTC(resultset.getDouble("prixVenteTTC"));
				temp.setIdTypeProduit(resultset.getInt("idTypeProduit"));
				temp.setLibelleTypeProduit(resultset.getString("libelleTypeProduit"));
				temp.setIdStatutProduit(resultset.getInt("idStatutProduit"));
				temp.setLibelleStatutProduit(resultset.getString("libelleStatutProduit"));
				listeProduits.add(temp);
			}
		} catch (SQLException e) {
			new BDDException(e.getErrorCode(), "Erreur avec la BDD lors de l'obtention de la liste des produits");
		}		
		
		return listeProduits;
	}
	
	

	@Override
	public Produit insereNouveau(Produit param) throws BDDException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	//Filtre pour les produits à afficher en fonction des id du genre et du type de produit
		public ArrayList<Produit> listeProduitsParTypeGenre(int idType, int idGenre){
			ArrayList<Produit> listeFiltree = new ArrayList<Produit>();
			
			String requete = "select distinct produit.id_produit as idProduit, \n" + 
					"nom_produit as nomProduit, \n" + 
					"stock_inventaire_produit as quantiteStock, \n" + 
					"stock_minimum as stockMinimum, \n" + 
					"stock_objectif as StockObjectif,\n" + 
					"prixht_produit as prixVenteHT, \n" + 
					"tva_produit as tauxTVA, \n" + 
					"(prixht_produit*(1+tva_produit)) as prixVenteTTC,\n" + 
					"produit.id_type_produit as idtypeProduit,\n" + 
					"lib_type_produit as libelleTypeProduit,\n" + 
					"(select statut_produit.id_statut_produit\n" + 
					"from statut_produit, histo_produit, produit\n" + 
					"where statut_produit.id_statut_produit=histo_produit.id_statut_produit\n" + 
					"and histo_produit.id_produit=produit.id_produit\n" + 
					"and produit.id_produit=idProduit\n" + 
					"order by histo_produit.date_chg_statut desc limit 1) as idStatutProduit,\n" + 
					"(select statut_produit.lib_statut_produit\n" + 
					"from statut_produit, histo_produit, produit\n" + 
					"where statut_produit.id_statut_produit=histo_produit.id_statut_produit\n" + 
					"and histo_produit.id_produit=produit.id_produit\n" + 
					"and produit.id_produit=idProduit\n" + 
					"order by histo_produit.date_chg_statut desc limit 1) as libelleStatutProduit\n" + 
					"from produit, type_produit, histo_produit, statut_produit, produit_genre_produit, genre_produit\n" + 
					"where produit.id_type_produit=type_produit.id_type_produit\n" + 
					"and produit.id_produit=histo_produit.id_produit\n" + 
					"and histo_produit.id_statut_produit=statut_produit.id_statut_produit\n" + 
					"and produit.id_produit = produit_genre_produit.id_produit\n" + 
					"and produit_genre_produit.id_genre_produit = genre_produit.id_genre_produit\n";
			
			try {
				if (idType!=0 && idGenre!=0) {
					requete+="and type_produit.id_type_produit=? and genre_produit.id_genre_produit=?";
					preparedStatement = connexionBDD.prepareStatement(requete);
					preparedStatement.setInt(1, idType);
					preparedStatement.setInt(2, idGenre);
				}else if (idType!=0 && idGenre==0) {
					requete+="and type_produit.id_type_produit=?";
					preparedStatement = connexionBDD.prepareStatement(requete);
					preparedStatement.setInt(1, idType);
				}else if(idType==0 && idGenre!=0){
					requete+="and genre_produit.id_genre_produit=?";
					preparedStatement = connexionBDD.prepareStatement(requete);
					preparedStatement.setInt(1, idGenre);
				}else preparedStatement = connexionBDD.prepareStatement(requete);
				resultset=preparedStatement.executeQuery();
				while(resultset.next()) {
					Produit temp = new Produit();
					temp.setIdProduit(resultset.getInt("idProduit"));
					temp.setNomProduit(resultset.getString("nomProduit"));
					temp.setQuantiteStock(resultset.getInt("quantiteStock"));
					temp.setStockMinimum(resultset.getInt("stockMinimum"));
					temp.setStockObjectif(resultset.getInt("stockObjectif"));
					temp.setPrixVenteHT(resultset.getDouble("prixVenteHT"));
					temp.setTauxTVA(resultset.getDouble("tauxTVA"));
					temp.setPrixVenteTTC(resultset.getDouble("prixVenteTTC"));
					temp.setIdTypeProduit(resultset.getInt("idTypeProduit"));
					temp.setLibelleTypeProduit(resultset.getString("libelleTypeProduit"));
					temp.setIdStatutProduit(resultset.getInt("idStatutProduit"));
					temp.setLibelleStatutProduit(resultset.getString("libelleStatutProduit"));
					listeFiltree.add(temp);
				}
				
			} catch (SQLException e) {
				new BDDException(e.getErrorCode(), "Erreur lors de l'obtention de la liste de produits filtrée").afficheErreur();
			}
			
			return listeFiltree;
		}

		@Override
		public Produit getById(int id) throws BDDException, SQLException {
			// TODO Auto-generated method stub
			return null;
		}
}
