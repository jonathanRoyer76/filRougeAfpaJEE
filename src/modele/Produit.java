package modele;

public class Produit {
	
	private int idProduit;
	private String nomProduit;
	private int quantiteStock;
	private int stockMinimum;
	private int stockObjectif;
	private double prixVenteHT;		
	private double tauxTVA;
	private double prixVenteTTC;
	private int idTypeProduit;	
	private String libelleTypeProduit;
	private int idStatutProduit;
	private String libelleStatutProduit;
	
	public int getIdProduit() {
		return idProduit;
	}
	public void setIdProduit(int idProduit) {
		this.idProduit = idProduit;
	}
	public String getNomProduit() {
		return nomProduit;
	}
	public void setNomProduit(String nomProduit) {
		this.nomProduit = nomProduit;
	}
	public int getQuantiteStock() {
		return quantiteStock;
	}
	public void setQuantiteStock(int quantiteStock) {
		this.quantiteStock = quantiteStock;
	}
	public int getStockMinimum() {
		return stockMinimum;
	}
	public void setStockMinimum(int stockMinimum) {
		this.stockMinimum = stockMinimum;
	}
	public int getStockObjectif() {
		return stockObjectif;
	}
	public void setStockObjectif(int stockObjectif) {
		this.stockObjectif = stockObjectif;
	}
	public double getPrixVenteHT() {
		return prixVenteHT;
	}
	public void setPrixVenteHT(double prixVenteHT) {
		this.prixVenteHT = prixVenteHT;
	}
	public double getTauxTVA() {
		return tauxTVA;
	}
	public void setTauxTVA(double tauxTva) {
		this.tauxTVA = tauxTva;
	}
	public double getPrixVenteTTC() {
		return prixVenteTTC;
	}
	public void setPrixVenteTTC(double prixVenteTTC) {
		this.prixVenteTTC = prixVenteTTC;
	}
	public int getIdTypeProduit() {
		return idTypeProduit;
	}
	public void setIdTypeProduit(int idTypeProduit) {
		this.idTypeProduit = idTypeProduit;
	}
	public String getLibelleTypeProduit() {
		return libelleTypeProduit;
	}
	public void setLibelleTypeProduit(String libelleTypeProduit) {
		this.libelleTypeProduit = libelleTypeProduit;
	}
	public int getIdStatutProduit() {
		return idStatutProduit;
	}
	public void setIdStatutProduit(int idStatutProduit) {
		this.idStatutProduit = idStatutProduit;
	}
	public String getLibelleStatutProduit() {
		return libelleStatutProduit;
	}
	public void setLibelleStatutProduit(String libelleStatutProduit) {
		this.libelleStatutProduit = libelleStatutProduit;
	}
	
	public Produit(int idProduit, String nomProduit, int quantiteStock, int stockMinimum, int stockObjectif,
			double prixVenteHT, double tauxTva, double prixVenteTTC, int idTypeProduit, String libelleTypeProduit,
			int idStatutProduit, String libelleStatutProduit) {
		super();
		this.idProduit = idProduit;
		this.nomProduit = nomProduit;
		this.quantiteStock = quantiteStock;
		this.stockMinimum = stockMinimum;
		this.stockObjectif = stockObjectif;
		this.prixVenteHT = prixVenteHT;
		this.tauxTVA = tauxTva;
		this.prixVenteTTC = prixVenteTTC;
		this.idTypeProduit = idTypeProduit;
		this.libelleTypeProduit = libelleTypeProduit;
		this.idStatutProduit = idStatutProduit;
		this.libelleStatutProduit = libelleStatutProduit;
	}
	
	public Produit() {
		
	}
	
	@Override
	public String toString() {
		return nomProduit;
	}
	
	
}
