package controler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnexionSingleton {
	// Objet représentant la connexion à la BDDD
	private static Connection	connexionBDD	= null;
	private static String		fournisseur		= "mysql";
	private static String		url				= "localhost";
	private static String		port			= "3306";
	private static String		nomBDD			= "ecommerce";
	private static String		user			= "jojo";
	private static String		pass			= "jsnl10s1983";

	public static String getFournisseur() {
		return fournisseur;
	}

	public static void setFournisseur(String fournisseur) {
		ConnexionSingleton.fournisseur = fournisseur;
	}

	public static String getPort() {
		return port;
	}

	public static void setPort(String port) {
		ConnexionSingleton.port = port;
	}

	public static String getNomBDD() {
		return nomBDD;
	}

	public static void setNomBDD(String nomBDD) {
		ConnexionSingleton.nomBDD = nomBDD;
	}

	public static String getUser() {
		return user;
	}

	public static void setUser(String user) {
		ConnexionSingleton.user = user;
	}

	public static String getPass() {
		return pass;
	}

	public static void setPass(String pass) {
		ConnexionSingleton.pass = pass;
	}

	public static void setUrl(String url) {
		ConnexionSingleton.url = url;
	}

	// Constructeur privé
	private ConnexionSingleton() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			ConnexionSingleton.connexionBDD = DriverManager.getConnection("jdbc:" + fournisseur + "://" + url + ":"
					+ port + "/" + nomBDD + "?zeroDateTimeBehavior=convertToNull", user, pass);
		} catch (SQLException e) {
			Services.afficheErreur("BDD non rejointe", "Erreur dans la connexion à la BDD");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	// méthode retournant la connexion
	public static Connection getInstance() {
		if (connexionBDD == null)
			new ConnexionSingleton();
		return connexionBDD;
	}
}
