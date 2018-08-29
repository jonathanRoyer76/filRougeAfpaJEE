package controler;

public class ProduitCommande {
	
	private int idProduit;
	private String nomProduit;
	private double prixUnitaireTTC;
	private int quantite;
	private double totalTTC;
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
	public double getPrixUnitaireTTC() {
		return prixUnitaireTTC;
	}
	public void setPrixUnitaireTTC(double prixUnitaireTTC) {
		this.prixUnitaireTTC = prixUnitaireTTC;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public double getTotalTTC() {
		return totalTTC;
	}
	public void setTotalTTC(double totalTTC) {
		this.totalTTC = totalTTC;
	}
	
	public ProduitCommande() {
		
	}
	public ProduitCommande(int idProduit, String nomProduit, double prixUnitaireTTC, int quantite, double totalTTC) {
		super();
		this.idProduit = idProduit;
		this.nomProduit = nomProduit;
		this.prixUnitaireTTC = prixUnitaireTTC;
		this.quantite = quantite;
		this.totalTTC = totalTTC;
	}
}
