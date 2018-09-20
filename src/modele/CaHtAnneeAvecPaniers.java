package modele;

public class CaHtAnneeAvecPaniers {
	private int		idCommande;
	private double	totalHTCommande;
	private String	dateDernierStatut;
	private double	CAHTMois;
	private String	Mois;

	public int getIdCommande() {
		return idCommande;
	}

	public void setIdCommande(int idCommande) {
		this.idCommande = idCommande;
	}

	public double getTotalHTCommande() {
		return totalHTCommande;
	}

	public void setTotalHTCommande(double totalHTCommande) {
		this.totalHTCommande = totalHTCommande;
	}

	public String getDateDernierStatut() {
		return dateDernierStatut;
	}

	public void setDateDernierStatut(String dateDernierStatut) {
		this.dateDernierStatut = dateDernierStatut;
	}

	public double getCAHTMois() {
		return CAHTMois;
	}

	public void setCAHTMois(double cAHTMois) {
		CAHTMois = cAHTMois;
	}

	public String getMois() {
		return Mois;
	}

	public void setMois(String mois) {
		Mois = mois;
	}
}
