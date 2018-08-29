package com.projet.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controler.Client;
import controler.DAO.DAOFactory;

/**
 * Servlet implementation class ListeClients
 */
@WebServlet("/ListeClients")
public class ListeClients extends HttpServlet {
	private static final long	serialVersionUID	= 1L;
	private static final String	VUE					= "/admin/listeClients.jsp";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListeClients() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ArrayList<Client> listeClients = DAOFactory.getClientDAO().getListe();

		request.setAttribute("listeClients", listeClients);
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);

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
