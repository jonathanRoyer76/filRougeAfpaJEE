package modele;

public class StatutClient {
	
	private int idStatut;
	private String libelle;
	public int getIdStatut() {
		return idStatut;
	}
	public void setIdStatut(int idStatut) {
		this.idStatut = idStatut;
	}
	public String getLibelle() {
		return libelle;
	}
	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}
	public StatutClient(int idStatut, String libelle) {
		super();
		this.idStatut = idStatut;
		this.libelle = libelle;
	}
	public StatutClient() {
		
	}
}
