package controler;

public class TypeProduit {
	
	private int idTypeProduit;
	private String libelle;
	private double tauxTva;
	
	public int getIdTypeProduit() {
		return idTypeProduit;
	}

	public void setIdTypeProduit(int idTypeProduit) {
		this.idTypeProduit = idTypeProduit;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public double getTauxTva() {
		return tauxTva;
	}

	public void setTauxTva(double tauxTva) {
		this.tauxTva = tauxTva;
	}

	public TypeProduit() {
				
	}
	
	public TypeProduit(int id, String lib, double taux) {
		idTypeProduit=id;
		libelle=lib;
		tauxTva=taux;
	}

	@Override
	public String toString() {
		return libelle;
	}	
}
