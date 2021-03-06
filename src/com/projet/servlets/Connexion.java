package com.projet.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import modele.BDDException;
import modele.Client;
import modele.Commande;
import modele.Services;
import modele.DAO.DAOFactory;

/**
 * Servlet implementation class Connexion
 */
@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	private static final long	serialVersionUID		= 1L;
	private static final String	VUE						= "/WEB-INF/connexion.jsp";
	private static final String	ACCES_REFUSE			= "/WEB-INF/accesRefuse.jsp";
	private static final String	ACCES_LISTE_PRODUITS	= "/";
	private static final String	PARAM_MAIL				= "mail";
	private static final String	PARAM_MDP				= "mdp";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Connexion() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	// Affiche le formulaire de connexion
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	// Traitement de la tentative de connexion
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/**
		 * 1- Contrôler les infos saisies pour la connexion 2- Vérifier avec la BDD si
		 * la connexion est autorisée Si oui : enregistrer l'objet Client dans la
		 * session Si non : rediriger vers la page de refus : accesRefuse.jsp
		 */

		String mail = ((request.getParameter(PARAM_MAIL) != "") ? request.getParameter(PARAM_MAIL) : "");
		String mdp = ((request.getParameter(PARAM_MDP) != "") ? request.getParameter(PARAM_MDP) : "");

		connexion_client(request, response, mail, mdp);
	}

	public static void connexion_client(HttpServletRequest request, HttpServletResponse response, String mail,
			String mdp) {
		// Si les infos saisies sont vérifiables dans la bdd
		if (mail != "" && mdp != "") {
			try {
				if (new Services().verifieID(mail, mdp)) {
					// les infos sont vérifiées
					Client client = DAOFactory.getClientDAO().getByMail(mail);
					com.projet.servlets.Services services = new com.projet.servlets.Services();
					services.setRequeteEnCours(request);
					services.setReponseAttendue(response);

					// Si l'on a un panier pour un guest et si le client se connectant en a un aussi
					Commande panierSession = Panier.getPanierSession(request);
					boolean continuer = true;
					if (panierSession != null && client != null) {
						Client temp = panierSession.getClient();
						if (temp != null) {
							if (temp.getId() != client.getId()) {
								// 2 paniers différents détectés
								int resultatSaisie = JOptionPane.showConfirmDialog(null,
										"Un panier est déjà en cours sur cet ordinateur. Vous connecter le supprimera, voulez-vous continer ?",
										"Warning", JOptionPane.YES_NO_OPTION);
								if (resultatSaisie != JOptionPane.YES_OPTION) {
									continuer = false;
								}
							}
						}
					}
					if (continuer) {
						if (client != null) {
							services.sauveClient(client);
							Commande panier = Panier.getPanierByIdClient(client.getId());
							if (panier != null)
								Panier.sauvePanier(request, response, panier);
							request.getSession().setAttribute(services.SESSION_IS_CLIENT_GUEST, "faux");
						}
					}
					try {
						response.sendRedirect(request.getContextPath() + ACCES_LISTE_PRODUITS);
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} else {
					try {
						request.getServletContext().getRequestDispatcher(ACCES_REFUSE).forward(request, response);
					} catch (ServletException | IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			} catch (BDDException e) {
				e.printStackTrace();
			}
		} else {
			try {
				request.getServletContext().getRequestDispatcher(ACCES_REFUSE).forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
