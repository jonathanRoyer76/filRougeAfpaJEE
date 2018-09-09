package modele;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.CallableStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.swing.JOptionPane;

public class Services {
	
	//Format de conditionnement des dates à la française
	private static final String formatDateFR = "dd/MM/yyyy";
	//Format de Date-heure pour la BDD
	private static final String  formatDateHeureBDD = "yyyy-MM-dd hh:mm:ss";	 
	//Regex vérifiant la date pour un format dd/mm/yyyy, dd.mm.yy ou dd-mm-yyyy
	private final Pattern regExDate= Pattern.compile("^(?:(?:31(\\/|-|\\.)(?:0?[13578]|1[02]))\\1|(?:(?:29|30)(\\/|-|\\.)(?:0?[1,3-9]|1[0-2])\\2))(?:(?:1[6-9]|[2-9]\\d)?\\d{2})$|^(?:29(\\/|-|\\.)0?2\\3(?:(?:(?:1[6-9]|[2-9]\\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\\d|2[0-8])(\\/|-|\\.)(?:(?:0?[1-9])|(?:1[0-2]))\\4(?:(?:1[6-9]|[2-9]\\d)?\\d{2})$", Pattern.CASE_INSENSITIVE);
		
	//Renvoie la date du jour formattée en dd/mm/yyyy
	public String dateJourFormatee() {		
		
		return new SimpleDateFormat(formatDateFR).format(new Date());
		
	}
	
	public static void calculTotalProduitsCommande(Commande commande) {
		if (commande!=null) {
			if (commande.getListeProduitsCommande()!=null) {
				ArrayList<ProduitCommande> liste= commande.getListeProduitsCommande();
				int totalProduits=0;
				for (ProduitCommande produit : liste) {
					totalProduits+= produit.getQuantite();
				}
				commande.setNombreProduits(totalProduits);
			}
		}
	}
	
	// Crypte le MDP pour la BDD
	public static String encodeMdp(String mdp) {
		String retour =null;
		
		try {
			MessageDigest digest = MessageDigest.getInstance("MD5");
			if (digest!=null) {
				byte[] temp = digest.digest(mdp.getBytes(StandardCharsets.UTF_8));
				retour=temp.toString();
			}
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return retour;
	}
	
	// Décrypte le MDP depuis la bdd
	public static String decodeMdp(String mdpCrypte) {
		String retour="";
		byte[] mdp = mdpCrypte.getBytes(StandardCharsets.UTF_8);
		
		StringBuffer buffer = new StringBuffer();
		for (int i=0;i<mdp.length; i++) {
			String temp = Integer.toHexString(0xff & mdp[i]);
			if (temp.length()==1) buffer.append('0');
			buffer.append(temp);
		}
		retour = buffer.toString();
		
		return retour;
	}
		
	//Renvoie une date formattée en dd/mm/yyyy
	public String dateFormateeEnString(String pDate) {		
		String retour="";
		
		try {
			retour= new SimpleDateFormat(formatDateFR).format(new SimpleDateFormat(formatDateFR).parse(pDate));
		} catch (ParseException e) {
//			afficheErreur("Erreur dans le formattage de la date", e.getMessage());
			e.printStackTrace();
		}
		
		return retour;
	}
	
	//Renvoie un booléen disant si la date (string)passée en paramètre est valable
	public boolean verifieDate(String pDate) {		
		Matcher verificateur = regExDate.matcher(pDate);
		
		return verificateur.matches();
	}
	
	//Prépare une date pour une insertion dans la BDD en partant d'une date
	public static String parseDatePourBDD(String stringDate) {
		String retour="";
		
		try {
			Date temp = new SimpleDateFormat(formatDateFR).parse(stringDate);
			retour= new SimpleDateFormat(formatDateHeureBDD).format(temp);
		} catch (ParseException e) {
			afficheErreur("Erreur dans la conversion de la date", e.getMessage());
		}
		
		return retour;
	}
	
	//Pour afficher des erreurs
	public static void afficheErreur(String titreFenetre, String message) {
		JOptionPane.showMessageDialog(null, "Message reçu :\n"+message,titreFenetre, JOptionPane.ERROR_MESSAGE);
	}
	
	//Vérifie les infos saisies par l'utilisateur pour se connecter true: connexion réussie
	public boolean verifieID(String mail, String mdp) throws BDDException{
		boolean retour=false;
		
		try {
			CallableStatement statement=ConnexionSingleton.getInstance().prepareCall("call sp_check_id_for_connexion(?,?,?,?,?)");
			statement.setString(1, mail);
			statement.setString(2, mdp);
			statement.registerOutParameter(3, java.sql.Types.INTEGER);
			statement.registerOutParameter(4, java.sql.Types.VARCHAR);
			statement.registerOutParameter(5, java.sql.Types.BOOLEAN);
			statement.execute();
			
			int erreurCode = statement.getInt(3);
			String erreurMessage=statement.getString(4);
			retour=statement.getBoolean(5);
			
			switch (erreurCode) {
			case 0:
				break;
			case 1062:
				throw new BDDException(erreurCode, "Cet utilisateur est déjà présent dans la BDD");
			case 1022:
				throw new BDDException(erreurCode, "Cet utilisateur est déjà présent dans la BDD");
			case 1292 :
				throw new BDDException(erreurCode, erreurMessage);
			default :
				throw new BDDException(erreurCode, "Une erreur s'est produite, merci de contacter l'administrateur."); 
			}
			
		} catch (SQLException e) {
			new BDDException(e.getErrorCode(), "Erreur avec la BDD lors de la vérification de la connexion.").afficheErreur();
		}
		
		
		return retour;
	}
}