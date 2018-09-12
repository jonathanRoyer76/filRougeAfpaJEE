package com.projet.filtres;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projet.servlets.Panier;
import com.projet.servlets.Services;

import modele.Client;
import modele.Commande;

/**
 * Servlet Filter implementation class FiltrePanier
 */
@WebFilter("/FiltrePanier")
public class FiltrePanier implements Filter {

	/**
	 * Default constructor.
	 */
	public FiltrePanier() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		com.projet.servlets.Services services = new Services();
		HttpServletRequest requeteEnCours = (HttpServletRequest) request;
		HttpServletResponse reponseAttendue = (HttpServletResponse) response;
		services.setReponseAttendue(reponseAttendue);
		services.setRequeteEnCours(requeteEnCours);

		Commande panier = Panier.getPanierSession(requeteEnCours);
		if (panier == null) {
			Client client = services.getClientSession();
			// Si un client est connecté on a pas son panier (s'il en a un)
			if (client != null) {
				panier = Panier.getPanierByIdClient(client.getId());
			} else {
				// Si pas de client connecté, ni de panier en session(comme un première
				// connexion)
				int idDernierPanier = Panier.getIdDernierPanier(requeteEnCours);
				if (idDernierPanier != 0) {
					panier = Panier.getPanierByIdPanier(idDernierPanier);
					if (panier != null)
						Panier.sauvePanier(requeteEnCours, reponseAttendue, panier);
				} // Sinon pas de panier en cookie ni session
			}
		}

		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
