package com.projet.filtres;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FiltreRestriction implements Filter {

	public static final String	ACCES_REFUSE	= "/accesRefuse";

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;

		HttpSession session = request.getSession();

		// Non-filtrage des ressources statiques
		String chemin = request.getRequestURI().substring(request.getContextPath().length());
		if (chemin.startsWith("/inc")) {
			chain.doFilter(request, response);
			return;
		}

		// Si l'utilisateur n'est pas loggé
		if (session.getAttribute(com.projet.servlets.Services.SESSION_CLIENT) == null) {
			// Redirection vers la page de refus
			response.sendRedirect(request.getContextPath() + ACCES_REFUSE);
		} else {
			// Affichage de la page demandée
			chain.doFilter(request, response);
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

}
