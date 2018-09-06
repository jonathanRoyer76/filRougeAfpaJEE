package com.projet.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.Client;

/**
 * Servlet implementation class Inscription
 */
@WebServlet("/Inscription")
public class Inscription extends HttpServlet {
	private static final long	serialVersionUID		= 1L;

	public static final String	VUE_INSCRIPTIPON		= "/WEB-INF/inscription.jsp";

	// Les paramètres venants du formulaire
	public static final String	PARAM_NOM				= "nomClient";
	public static final String	PARAM_PRENOM			= "prenomClient";
	public static final String	PARAM_MAIL				= "mailClient";
	public static final String	PARAM_TEL				= "telClient";
	public static final String	PARAM_SEXE				= "comboSexe";
	public static final String	PARAM_DATE_NAISSANCE	= "dateNaissance";
	public static final String	PARAM_ADRESSE			= "adresseClient";
	public static final String	PARAM_CP				= "cpClient";
	public static final String	PARAM_VILLE				= "villeClient";
	public static final String	PARAM_PAYS				= "paysClient";
	public static final String	PARAM_MDP				= "mdpClient";
	public static final String	PARAM_CONFIRME_MDP		= "confirmeMdp";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Inscription() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher(VUE_INSCRIPTIPON).forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/**
		 * tester les 2 mdp hash mdp appeler insertion si succes log auto
		 */

		// Infos provenant du formulaire
		String nomClient = ((request.getParameter(PARAM_NOM) != "") ? request.getParameter(PARAM_NOM) : "");
		String prenomClient = ((request.getParameter(PARAM_PRENOM) != "") ? request.getParameter(PARAM_PRENOM) : "");
		String sexeClient = ((request.getParameter(PARAM_SEXE) != "") ? request.getParameter(PARAM_SEXE) : "");
		String mailClient = ((request.getParameter(PARAM_MAIL) != "") ? request.getParameter(PARAM_MAIL) : "");
		String telClient = ((request.getParameter(PARAM_TEL) != "") ? request.getParameter(PARAM_TEL) : "");
		String dateNaissanceClient = ((request.getParameter(PARAM_DATE_NAISSANCE) != "")
				? request.getParameter(PARAM_DATE_NAISSANCE)
				: "");
		String adresseClient = ((request.getParameter(PARAM_ADRESSE) != "") ? request.getParameter(PARAM_ADRESSE) : "");
		String cpClient = ((request.getParameter(PARAM_CP) != "") ? request.getParameter(PARAM_CP) : "");
		String villeClient = ((request.getParameter(PARAM_VILLE) != "") ? request.getParameter(PARAM_VILLE) : "");
		String paysClient = ((request.getParameter(PARAM_PAYS) != "") ? request.getParameter(PARAM_PAYS) : "");
		String mdpClient = ((request.getParameter(PARAM_MDP) != "") ? request.getParameter(PARAM_MDP) : "");
		String confirmeMdpClient = ((request.getParameter(PARAM_CONFIRME_MDP) != "")
				? request.getParameter(PARAM_CONFIRME_MDP)
				: "");

		// Conversion des objets si nécesaire
		switch (sexeClient) {
		case "Homme":
			sexeClient = "H";
			break;
		case "Femme":
			sexeClient = "F";
			break;
		case "Autre":
			sexeClient = "A";
			break;
		}

		// Tester la date de naissance et la convertir au besoin
		System.out.println("date: " + dateNaissanceClient);
		System.out.println(mdpClient + "\t" + confirmeMdpClient);

		// Si les 2 mdp sont identiques
		if (mdpClient == confirmeMdpClient) {
			// Affectation dans l'objet à manipuler
			Client client = new Client();
			client.setDateInscription(null);
			client.setNom(nomClient);
			client.setPrenom(prenomClient);
			client.setSexe(sexeClient);
			client.setMail(mailClient);
			client.setTelephone(telClient);
			client.setDateNaissance(dateNaissanceClient);
			client.setAdresse(adresseClient);
			client.setCodePostal(cpClient);
			client.setVille(villeClient);
			client.setPays(paysClient);
			client.setMdp(mdpClient);
			System.out.println("plop");
		} else
			modele.Services.afficheErreur("Erreur de saisie", "Les mots de passes saisis ne sont pas identiques");
	}

}
