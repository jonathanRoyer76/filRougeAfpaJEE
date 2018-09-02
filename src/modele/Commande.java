package modele;

import java.util.ArrayList;

public class Commande {

	private static int idCommandePanier=0;
	private int idCommande;
	private double remiseGlobale;
	private String dateCreationCommande;
	private Client client;
	int nombreProduits;
	double totalTTCSansRemise;
	double totalTTCcommande;
	String dernierStatutCommande;
	private ArrayList<ProduitCommande> listeProduitsCommande;
	
	public ArrayList<ProduitCommande> getListeProduitsCommande() {
		return listeProduitsCommande;
	}
	public void setListeProduitsCommande(ArrayList<ProduitCommande> listeProduitsCommande) {
		this.listeProduitsCommande = listeProduitsCommande;
	}
	public int getIdCommande() {
		return idCommande;
	}
	public void setIdCommande(int idCommande) {
		this.idCommande = idCommande;
	}
	public double getRemiseGlobale() {
		return remiseGlobale;
	}
	public void setRemiseGlobale(double remiseGlobale) {
		this.remiseGlobale = remiseGlobale;
	}
	public String getDateCreationCommande() {
		return dateCreationCommande;
	}
	public void setDateCreationCommande(String dateCreationCommande) {
		this.dateCreationCommande = dateCreationCommande; 
	}
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}		
	public int getNombreProduits() {
		return nombreProduits;
	}
	public void setNombreProduits(int nombreProduits) {
		this.nombreProduits = nombreProduits;
	}
	public double getTotalTTCcommande() {
		return totalTTCcommande;
	}
	public void setTotalTTCcommande(double totalTTCcommande) {
		this.totalTTCcommande = totalTTCcommande;
	}
	public String getDernierStatutCommande() {
		return dernierStatutCommande;
	}
	public void setDernierStatutCommande(String dernierStatutCommande) {
		this.dernierStatutCommande = dernierStatutCommande;
	}		
	public double getTotalTTCSansRemise() {
		return totalTTCSansRemise;
	}
	public void setTotalTTCSansRemise(double totalTTCSansRemise) {
		this.totalTTCSansRemise = totalTTCSansRemise;
	}
	public static int getIdCommandePanier() {
		return idCommandePanier;
	}
	public static void setIdCommandePanier(int idCommandePanier) {
		Commande.idCommandePanier = idCommandePanier;
	}
	public Commande(int idCommande, double remiseGlobale, String dateCreationCommande, Client client) {
		super();
		this.idCommande = idCommande;
		this.remiseGlobale = remiseGlobale;
		this.dateCreationCommande = dateCreationCommande;
		this.client = client;
	}
	
	public Commande() {
		
	}
}
