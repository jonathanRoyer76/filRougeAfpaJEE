package com.projet.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.BDDException;
import modele.Commande;
import modele.DAO.DAOFactory;

/**
 * Servlet implementation class Detailcommande
 */
@WebServlet("/Detailcommande")
public class Detailcommande extends HttpServlet {
	private static final long	serialVersionUID	= 1L;

	private static final String	VUE_DETAIL_COMMANDE	= "admin/detailCommande.jsp";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Detailcommande() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Commande commande = null;
		int idCommande = 0;
		idCommande = Integer.parseInt(request.getParameter("idCommande"));
		if (idCommande != 0)
			try {
				commande = DAOFactory.getCommandeDAO().getById(idCommande);
			} catch (BDDException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		request.getSession().setAttribute(Services.SESSION_DETAILS_COMMANDE, commande);
		request.getRequestDispatcher(VUE_DETAIL_COMMANDE).forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
