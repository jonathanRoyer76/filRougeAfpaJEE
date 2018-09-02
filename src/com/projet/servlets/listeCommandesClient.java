package com.projet.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.BDDException;
import modele.Client;
import modele.Commande;
import modele.Services;
import modele.DAO.DAOFactory;

/**
 * Servlet implementation class listeCommandesClient
 */
@WebServlet("/listeCommandesClient")
public class listeCommandesClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE = "/admin/listeCommandesClient.jsp";
	private static final String ATT_LISTE_COMMANDES = "listeCommandes";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listeCommandesClient() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Commande> listeCommandes = new ArrayList<Commande>();
		Client client = (Client) request.getSession().getAttribute("client_session");
		
		if (client!=null) {
			try {
				listeCommandes = DAOFactory.getCommandeDAO().getListeByIdClient(client.getId());
			} catch (BDDException e) {
				Services.afficheErreur("Erreur lors de l'obtention de la liste des commandes", "Les commandes n'ont pas pu être récupérées");
			}
		}
		
		request.getSession().setAttribute(ATT_LISTE_COMMANDES, listeCommandes);
		request.getRequestDispatcher(VUE).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
