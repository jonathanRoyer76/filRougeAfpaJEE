package com.projet.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controler.BDDException;
import controler.Client;
import controler.Services;
import controler.DAO.DAOFactory;

/**
 * Servlet implementation class Connexion
 */
@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	private static final long	serialVersionUID	= 1L;
	private static final String	VUE					= "/WEB-INF/connexion.jsp";
	private static final String	ACCES_REFUSE		= "/WEB-INF/accesRefuse.jsp";
	private static final String	ACCES_LISTE_CLIENTS	= "/admin/listeClients";
	private static final String	CLIENT_SESSION		= "client_session";
	private static final String	PARAM_MAIL			= "mail";
	private static final String	PARAM_MDP			= "mdp";

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

		// Si les infos saisies sont vérifiables dans la bdd
		if (mail != "" && mdp != "") {
			try {
				if (new Services().verifieID(mail, mdp)) {
					Client client = DAOFactory.getClientDAO().getByMail(mail);
					request.getSession().setAttribute(CLIENT_SESSION, client);
					response.sendRedirect(request.getContextPath() + ACCES_LISTE_CLIENTS);
				} else {
					this.getServletContext().getRequestDispatcher(ACCES_REFUSE).forward(request, response);
				}
			} catch (BDDException e) {
				e.printStackTrace();
			}
		} else {
			this.getServletContext().getRequestDispatcher(ACCES_REFUSE).forward(request, response);
		}
	}

}
