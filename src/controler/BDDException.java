package controler;

@SuppressWarnings("serial")
public class BDDException extends Exception {
	
	private int codeErreur;
	
	public BDDException(int pCcodeErreur, String messageErreur) {
		super(messageErreur);
		codeErreur=pCcodeErreur;
	}
	
	public int getCodeErreur() {
		return codeErreur;
	}
	
	public void afficheErreur() {
		Services.afficheErreur("Erreur code : "+codeErreur, getMessage());
	}
}
