package com.projet.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.BDDException;
import modele.Client;
import modele.Commande;
import modele.CommandeProduit;
import modele.Produit;
import modele.DAO.DAOFactory;

/**
 * Servlet implementation class Services
 */
@WebServlet("/Services")
public class Services extends HttpServlet {
	private static final long	serialVersionUID			= 1L;

	// Les valeurs stockées en session/cookies
	// Le client en session
	public static final String	SESSION_CLIENT				= "session_client";
	// Le panier en session
	public static final String	SESSION_PANIER				= "session_panier";
	// L'id du panier en cooie
	public static final String	COOKIE_ID_COMMANDE_PANIER	= "cookie_id_commande_panier";
	// L'id du client ayant fait le panier, en cookie
	public static final String	COOKIE_ID_CLIENT_PANIER		= "cookie_id_client_panier";
	// Si le client connecté est un invité, valeur : vrai
	public static final String	SESSION_IS_CLIENT_GUEST		= "isGuest";
	// Si le client connecté est un invité, valeur : vrai
	public static final String	SESSION_PANIER_VALIDE		= "session_panier_valide";

	// Les rôles que peut remplir le service
	private static final String	ROLE						= "role";
	private static final String	ROLE_DECONNEXION			= "deconnexion";
	private static final String	ROLE_AJOUT_PANIER			= "ajoutPanier";
	private static final String	ROLE_VALIDATION_PANIER		= "validationPanier";

	// Contient la requète ayant mené à la servlet
	private HttpServletRequest	requeteEnCours				= null;
	// Contient la réponse attendue, avec la requète
	private HttpServletResponse	reponseAttendue				= null;

	// Route vers le panier
	private final String		VUE_PANIER					= "/monPanier";
	private final String		VUE_LISTE_PRODUITS			= "/listeProduits";

	public HttpServletRequest getRequeteEnCours() {
		return requeteEnCours;
	}

	public void setRequeteEnCours(HttpServletRequest requeteEnCours) {
		this.requeteEnCours = requeteEnCours;
	}

	public HttpServletResponse getReponseAttendue() {
		return reponseAttendue;
	}

	public void setReponseAttendue(HttpServletResponse reponseAttendue) {
		this.reponseAttendue = reponseAttendue;
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Services() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String role = request.getParameter(ROLE);
		requeteEnCours = request;
		reponseAttendue = response;

		if (role != "" && role != null) {
			switch (role) {
			case ROLE_DECONNEXION:
				this.deconnexion();
				break;
			case ROLE_AJOUT_PANIER:
				int idProduit = -1;
				idProduit = Integer.parseInt(requeteEnCours.getParameter("idProduit"));
				if (idProduit != -1)
					this.ajoutPanier(idProduit, 1);
				break;
			case ROLE_VALIDATION_PANIER:
				this.validePanierSession();
				break;
			}
		}
	}

	// Supprime le panier en mémoire de la session et du cookie
	public void disposePanier() {
		if (Panier.getPanierSession(requeteEnCours) != null && requeteEnCours != null) {
			requeteEnCours.getSession().setAttribute(SESSION_PANIER, null);
			if (reponseAttendue != null)
				reponseAttendue.addCookie(new Cookie(COOKIE_ID_COMMANDE_PANIER, ""));
		}
	}

	// Validation le panier dans la session
	public boolean validePanierSession() {
		boolean retour = false;

		// Si l'on a bien converti et stockr la requète
		if (requeteEnCours != null) {
			Commande panier = null;
			panier = Panier.getPanierSession(requeteEnCours);
			// Si on a bien récupéré le panier
			if (panier != null) {
				try {
					retour = DAOFactory.getCommandeDAO().validationPanier(panier.getIdCommande());
					if (retour) {
						requeteEnCours.getSession().setAttribute(SESSION_PANIER_VALIDE, "valide");
						disposePanier();
					}
					try {
						reponseAttendue.sendRedirect(requeteEnCours.getContextPath() + VUE_LISTE_PRODUITS);
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (BDDException e) {
					requeteEnCours.getSession().setAttribute(SESSION_PANIER_VALIDE, "invalide");
					e.printStackTrace();
//					modele.Services.afficheErreur("Erreur : " + e.getCodeErreur(),
//							"Une erreur inattendue s'est produite");
				}
			} else
				System.out.println("Panier vide");
		} else
			System.out.println("requete vide");

		return retour;
	}

	// Méthode permettant de récupérer la valeur stockée dans un cookie
	public static String getCookieValue(HttpServletRequest request, String nom) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie != null && nom.equals(cookie.getName())) {
					return cookie.getValue();
				}
			}
		}
		return null;
	}

	// Retourne l'id du client en respectant l'ordre de priorité 1-Session 2-Cookie
	public int getIdClientDernierPanier() {
		int retour = 0;

		if (requeteEnCours != null) {
			Client session_client = (Client) requeteEnCours.getSession().getAttribute(SESSION_CLIENT);
			// Le client session est vide
			if (session_client == null) {
				// On voit dans le cookie
				String idCookie = getCookieValue(requeteEnCours, COOKIE_ID_CLIENT_PANIER);
				// Si on a trouvé quelque chose
				if (idCookie != null && idCookie != "")
					retour = Integer.parseInt(idCookie);
			} else
				retour = session_client.getId();
		}

		return retour;
	}

	// Retourne le client contenu dans la session
	public Client getClientSession() {
		Client retour = null;

		if (requeteEnCours != null) {
			retour = (Client) requeteEnCours.getSession().getAttribute(SESSION_CLIENT);
		}

		return retour;
	}

	// Enregistre le client dans la session et son id dans le cookie
	public void sauveClient(Client client) {
		if (client != null && requeteEnCours != null) {
			requeteEnCours.getSession().setAttribute(SESSION_CLIENT, client);
		}
		if (reponseAttendue != null)
			reponseAttendue.addCookie(new Cookie(COOKIE_ID_CLIENT_PANIER, String.valueOf(client.getId())));
	}

	// Retourne le produit à commander selon son id
	private CommandeProduit getProduitACommander(int idProduit, int quantite) {
		CommandeProduit retour = null;

		ArrayList<Produit> listeProduits = null;
		if (requeteEnCours.getSession().getAttribute("listeProduits") != null) {
			listeProduits = (ArrayList<Produit>) requeteEnCours.getSession().getAttribute("listeProduits");
		} else
			listeProduits = DAOFactory.getProduitDAO().getListe();

		for (Produit temp : listeProduits) {
			if (temp.getIdProduit() == idProduit) {
				retour = new CommandeProduit();
				retour.setPrixHT(temp.getPrixVenteHT());
				retour.setTauxTVA(temp.getTauxTVA());
				retour.setPrixTTc(temp.getPrixVenteTTC());
				retour.setIdProduit(idProduit);
				retour.setQuantite(quantite);
				Commande panier = (Commande) requeteEnCours.getSession().getAttribute(SESSION_PANIER);
				if (panier != null)
					retour.setIdCommandeProduit(panier.getIdCommande());
			}
		}

		return retour;
	}

	// Retourne le client contenu dans le cookie
	private void ajoutPanier(int idProduit, int quantite) {

		if (idProduit != 0 && quantite > 0) {

			// Obtention du panier
			Commande panier = null;
			panier = Panier.getPanierSession(requeteEnCours); // Si pas de panierdans la session
			if (panier == null) {
				// Si pas d'id panier en cookie
				if (requeteEnCours != null)
					panier = Panier.getPanierByCookie(requeteEnCours);
			}

			// Obtention du client
			Client client = null;
			client = getClientSession();
			if (client == null) {
				int idClient = getIdClientDernierPanier();
				if (idClient == 0) {
					// Cela veut dire qu'il n'y a rien ni en session ni en cookie
					try {
						client = DAOFactory.getClientDAO().insereNouveauGuest();
						sauveClient(client);
						requeteEnCours.getSession().setAttribute(SESSION_IS_CLIENT_GUEST, "vrai");
					} catch (BDDException e) {
						modele.Services.afficheErreur("Une erreur s'est produite",
								"Impossible d'enregistrer le nouveau client");
					}
				} else {
					try {
						client = DAOFactory.getClientDAO().getById(idClient);
					} catch (BDDException e) {
						modele.Services.afficheErreur("Une erreur s'est produite",
								"Impossible de récupérer le client enregistré");
					} catch (SQLException e) {
						modele.Services.afficheErreur("Une erreur s'est produite",
								"Impossible de récupérer le client enregistré");
					}
				}
			}

			// On cherche le produit et ses infos
			if (client != null) {
				CommandeProduit produit = getProduitACommander(idProduit, quantite);
				if (produit != null) {
					// Si plus tôt on a trouvé le panier
					if (panier != null) {
						produit.setIdCommande(panier.getIdCommande());
					} else
						produit.setIdCommande(0);
					try {
						CommandeProduit retour = DAOFactory.getCommandeProduitDAO().insereNouveau(produit, client);
						if (retour.getIdCommandeProduit() != 0) {
							// L'ajout du produit a réussi
							panier = Panier.getPanierByIdClient(client.getId());
//							panier = Panier.getPanierByIdPanier(retour.getIdCommande());
							if (panier != null) {
								Panier.sauvePanier(requeteEnCours, reponseAttendue, panier);
								sauveClient(client);
							}
						}
					} catch (BDDException e) {
						// TODO Auto-generated catch block
//						e.printStackTrace();
						modele.Services.afficheErreur("Problème avec le panier",
								"Une erreur est survenue lors de l'ajout du produit dans le panier");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						// modele.Services.afficheErreur("Problème avec le panier", "Une erreur est
						// survenue lors de l'ajout du produit dans le panier");
					}
				}
			}
		}
	}

	private void deconnexion() {

		Client client = getClientSession();
		if (client != null) {
			if (requeteEnCours.getSession().getAttribute(SESSION_IS_CLIENT_GUEST) != "vrai") {
				requeteEnCours.getSession().setAttribute(SESSION_CLIENT, null);
				requeteEnCours.getSession().setAttribute(SESSION_PANIER, null);
				reponseAttendue.addCookie(new Cookie(Services.COOKIE_ID_COMMANDE_PANIER, ""));
				reponseAttendue.addCookie(new Cookie(Services.COOKIE_ID_CLIENT_PANIER, ""));
			}
			try {
				reponseAttendue.sendRedirect(requeteEnCours.getContextPath() + "/listeProduits");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
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
