package controler;

public class GenreProduit {
	
	private int idGenreProduit;
	private String libelle;
	
	public int getIdGenreProduit() {
		return idGenreProduit;
	}
	public void setIdGenreProduit(int idGenreProduit) {
		this.idGenreProduit = idGenreProduit;
	}
	public String getLibelle() {
		return libelle;
	}
	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}
	
	public GenreProduit() {
		
	}
	
	public GenreProduit(int idGenreProduit, String libelle) {
		super();
		this.idGenreProduit = idGenreProduit;
		this.libelle = libelle;
	}
	
	@Override
	public String toString() {
		return libelle;
	}
	
}
