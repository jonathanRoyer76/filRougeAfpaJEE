package modele.DAO;

import java.sql.Connection;

import modele.ConnexionSingleton;

public class DAOFactory {
	protected static final Connection connexionBDD=ConnexionSingleton.getInstance();
	
	//Retourne une nouvelle instance de classe ClientDAO
	public static ClientDAO getClientDAO() {
		return new ClientDAO(connexionBDD);
	}
	
	//Retourne une nouvelle instance de classe FournisseurDAO
	public static FournisseurDAO getFournisseurDAO() {
		return new FournisseurDAO(connexionBDD);
	}
	
	//Retourne une nouvelle instance de classe TypeProduitDAO
	public static TypeProduitDAO getTypeProduitDAO() {
		return new TypeProduitDAO(connexionBDD);
	}
	
	//Retourne une nouvelle instance de classe GenreProduitDAO
	public static GenreProduitDAO getGenreProduitDAO() {
		return new GenreProduitDAO(connexionBDD);
	}
	
	//Retourne une nouvelle instance de classe ProduitDAO
	public static ProduitDAO getProduitDAO() {
		return new ProduitDAO(connexionBDD);
	}
	
	//Retourne une nouvelle instance de classe InfosAnnexesDAO
	public static InfosAnnexesDAO getInfosAnnexesDAO() {
		return new InfosAnnexesDAO(connexionBDD);
	}
	
	//Retourne une nouvelle instance de classe StatutClientDAO
	public static StatutClientDAO getStatutClientDAO() {
		return new StatutClientDAO(connexionBDD);
	}
	
	//Retourne une nouvelle instance de classe CommandeDAO
	public static CommandeDAO getCommandeDAO() {
		return new CommandeDAO(connexionBDD);
	}	
	
	//Retourne une nouvelle instance de classe CommandeProduitDAO
	public static CommandeProduitDAO getCommandeProduitDAO() {
		return new CommandeProduitDAO(connexionBDD);
	}
}
