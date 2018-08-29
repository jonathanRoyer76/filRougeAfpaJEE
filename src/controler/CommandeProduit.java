package controler;

public class CommandeProduit {

		private int idCommandeProduit;
		private int quantite;
		private double prixHT;
		private double tauxRemise;
		private double tauxTVA;
		private double prixTTc;
		private int idCommande;
		private int idProduit;
		
		public int getIdCommandeProduit() {
			return idCommandeProduit;
		}
		public void setIdCommandeProduit(int idCommandeProduit) {
			this.idCommandeProduit = idCommandeProduit;
		}
		public double getPrixHT() {
			return prixHT;
		}		
		public int getQuantite() {
			return quantite;
		}
		public void setQuantite(int quantite) {
			this.quantite = quantite;
		}
		public void setPrixHT(double prixHT) {
			this.prixHT = prixHT;
		}
		public double getTauxRemise() {
			return tauxRemise;
		}
		public void setTauxRemise(double tauxRemise) {
			this.tauxRemise = tauxRemise;
		}
		public double getTauxTVA() {
			return tauxTVA;
		}
		public void setTauxTVA(double tauxTVA) {
			this.tauxTVA = tauxTVA;
		}
		public double getPrixTTc() {
			return prixTTc;
		}
		public void setPrixTTc(double prixTTc) {
			this.prixTTc = prixTTc;
		}
		public int getIdCommande() {
			return idCommande;
		}
		public void setIdCommande(int idCommande) {
			this.idCommande = idCommande;
		}
		public int getIdProduit() {
			return idProduit;
		}
		public void setIdProduit(int idProduit) {
			this.idProduit = idProduit;
		}
		public CommandeProduit(int idCommandeProduit, double prixHT, double tauxRemise, double tauxTVA, double prixTTc,
				int idCommande, int idProduit) {
			super();
			this.idCommandeProduit = idCommandeProduit;
			this.prixHT = prixHT;
			this.tauxRemise = tauxRemise;
			this.tauxTVA = tauxTVA;
			this.prixTTc = prixTTc;
			this.idCommande = idCommande;
			this.idProduit = idProduit;
		}
		public CommandeProduit() {
			
		}
}
