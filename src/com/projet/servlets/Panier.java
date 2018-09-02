package com.projet.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.Client;
import modele.Commande;
import modele.DAO.DAOFactory;

/**
 * Servlet implementation class Panier
 */
@WebServlet("/Panier")
public class Panier extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE = "WEB-INF/panier.jsp";
	private String SESSION_PANIER=com.projet.servlets.Services.SESSION_PANIER;
	private String SESSION_CLIENT=com.projet.servlets.Services.SESSION_CLIENT;
	private String COOKIE_ID_CLIENT_PANIER=com.projet.servlets.Services.COOKIE_ID_CLIENT_PANIER;
	private String COOKIE_ID_COMMANDE_PANIER=com.projet.servlets.Services.COOKIE_ID_COMMANDE_PANIER;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Panier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
			
//		this.getPanierEnCookie(request, response);
		com.projet.servlets.Services services=  new Services();
		services.setRequeteEnCours(request);
		services.setReponseAttendue(response);
		
		int idCommande = 0;
		idCommande=Panier.getPanierSession(request).getIdCommande();
		if (idCommande!=0) {
			Commande panier = null;
			panier=getPanierByIdPanier(idCommande);
			if (panier!=null) {
				sauvePanier(request, response, panier);
			}
		}
		
		request.getRequestDispatcher(VUE).forward(request, response);
		
	}
	
	// Retourne le dernier panier trouvé suivant l'ordre 1. session 2. cookie
	public static int getIdDernierPanier(HttpServletRequest requeteEnCours) {
		int retour=0;
		
		if (requeteEnCours!=null) {
			Commande panier=(Commande)requeteEnCours.getSession().getAttribute(Services.SESSION_PANIER);
			if (panier==null) {
				String idCookie = Services.getCookieValue(requeteEnCours, Services.COOKIE_ID_COMMANDE_PANIER);
				if (idCookie != null && idCookie!="") retour = Integer.parseInt(idCookie);
			} else retour = panier.getIdCommande();
		} 
		
		return retour;
	}
		
	// Retourne le panier d'un client dont on a l'id
	public static Commande getPanierByIdClient(int idClient) {
		
		return DAOFactory.getCommandeDAO().getPanierByIdClient(idClient);
	}
	
	// Retourne le panier d'un client dont on a l'id du panier
	public static Commande getPanierByIdPanier(int idCommande) {
		
		return DAOFactory.getCommandeDAO().getPanierByIdPanier(idCommande);
	}
	
	// Retourne le panier contenu dans la session
	public static Commande getPanierSession(HttpServletRequest request) {
		
		return (Commande)request.getSession().getAttribute(Services.SESSION_PANIER);
	}
	
	// Sauve le panier dans la session et son id dans le cookie
	public static void sauvePanier(HttpServletRequest request, HttpServletResponse response, Commande panier) {
		if (panier!=null) {
			request.getSession().setAttribute(Services.SESSION_PANIER, panier);
			response.addCookie(new Cookie(Services.COOKIE_ID_COMMANDE_PANIER, String.valueOf(panier.getIdCommande())));
		}
	}

	// Renvoie le panier frace a son id dans le cookie
	public static Commande getPanierByCookie(HttpServletRequest request) {
		Commande panier=null;
		
		String str_id=getCookieValue(request, Services.COOKIE_ID_COMMANDE_PANIER);
		if (str_id!=null && str_id!="") {
			int idPanier=Integer.parseInt(getCookieValue(request, Services.COOKIE_ID_COMMANDE_PANIER));
			panier=getPanierByIdPanier(idPanier);
		}
		
		return panier;
	}
	
	/*public void getPanierEnCookie(HttpServletRequest request, HttpServletResponse response) {
		Commande panier=(Commande)request.getSession().getAttribute(SESSION_PANIER);
		String id_commande_panier = this.getCookieValue(request, "cookie_id_commande_panier");
		Client client = (Client) request.getSession().getAttribute(SESSION_CLIENT);		
		
		if (panier==null) {
			// Si pas d'id panier 
			if (id_commande_panier == null) {
				// Si id client
				if (client != null) {
					// On récupère le panier
					panier = DAOFactory.getCommandeDAO().getPanierByIdClient(client.getId());						
				}
			}else {
				// Nous avons l'id du panier, on le récupère
				panier = DAOFactory.getCommandeDAO().getPanierByIdPanier(Integer.parseInt(id_commande_panier));
			}
			if (panier != null) {
				if (getCookieValue(request, COOKIE_ID_COMMANDE_PANIER)==null) {
					response.addCookie(new Cookie(COOKIE_ID_COMMANDE_PANIER, String.valueOf(panier.getIdCommande())));
					response.addCookie(new Cookie(COOKIE_ID_CLIENT_PANIER, String.valueOf(panier.getClient().getId())));
				}
				else {
					if (getCookieValue(request, COOKIE_ID_COMMANDE_PANIER)!="" && getCookieValue(request, COOKIE_ID_COMMANDE_PANIER)!=String.valueOf(panier.getIdCommande())) {
						response.addCookie(new Cookie(COOKIE_ID_COMMANDE_PANIER, String.valueOf(panier.getIdCommande())));
						response.addCookie(new Cookie(COOKIE_ID_CLIENT_PANIER, String.valueOf(panier.getClient().getId())));
					}	
				}
				request.setAttribute(SESSION_PANIER, panier);
			}
		}
	}*/
	
	// Méthode permettant de récupérer la valeur stockée dans un cookie
	private static String getCookieValue( HttpServletRequest request, String nom ) { 
        Cookie[] cookies = request.getCookies(); 
        if ( cookies != null ) { 
            for ( Cookie cookie : cookies ) { 
                if ( cookie != null && nom.equals( cookie.getName() ) ) { 
                    return cookie.getValue(); 
                } 
            } 
        } 
        return null; 
    } 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
