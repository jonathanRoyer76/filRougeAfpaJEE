<nav class="navbar navbar-expand-lg navbar-dark bg-info">  
   	<c:choose>
		<c:when test="${empty session_client }">
           	<a class="nav-link navbar-brand" href="connexion">Me connecter<span class="sr-only">(current)</span></a>
		</c:when>
		<c:otherwise>
			<c:if test="${ isGuest=='vrai' }">
	           	<a class="nav-link navbar-brand" href="connexion">Me connecter<span class="sr-only">(current)</span></a>
			</c:if>
			<c:if test="${ isGuest!='vrai' }">
				<a class="nav-link navbar-brand dropdown-toggle" href="" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	           		${ session_client.prenom } ${ session_client.nom } 
	           	</a>
	           	<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	           		<c:if test="${ !empty session_panier }"><a class="dropdown-item" href="http://localhost:8080/ExoJEEeCommerce/monPanier">Mon panier en cours</a></c:if>
	           		<a class="dropdown-item" href="http://localhost:8080/ExoJEEeCommerce/listeCommandes">Mes commandes</a>
	                <a class="dropdown-item" href="http://localhost:8080/ExoJEEeCommerce/services?role=deconnexion">Me déconnecter</a>
	            </div>   
			</c:if>			      	
		</c:otherwise>
	</c:choose> 
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>    
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <ul class="navbar-nav">  
        	<c:if test="${ !empty session_panier }">
        		<li class="nav-item">
				<a class="nav-link" href="http://localhost:8080/ExoJEEeCommerce/monPanier">
			    	<img src="<c:url value="/inc/panier.png"/>" alt="..." class="rounded" style="max-width: 33px;">
			    	<span id="totalArticlesPanier">${ session_panier.nombreProduits }</span>
			    </a>
			</li>  
        	</c:if>
	        <c:if test="${ isGuest=='vrai' || empty session_client }">	
	        	<li class="nav-item">
			        <a class="nav-link" href="inscription">M'inscrire</a>	            
			    </li> 	
		    </c:if>
	        <li class="nav-item">
	            <a class="nav-link" href="http://localhost:8080/ExoJEEeCommerce/listeProduits">Produits</a>	            
	        </li>	       
	        <c:choose>
				<c:when test="${session_client.statut=='administrateur'||session_client.statut=='magasinier'||session_client.statut=='direction'}">
		          	<li class="nav-item">
			            <a class="nav-link" href="http://localhost:8080/ExoJEEeCommerce/admin/listeClients">Liste des clients</a>
			        </li>
				</c:when>			
			</c:choose>
			<c:if test="${session_client.statut=='direction'}">
	          	<li class="nav-item">
		            <a class="nav-link" href="http://localhost:8080/ExoJEEeCommerce/admin/direction">Dashboard direction</a>
		        </li>
			</c:if>			
        </ul>  
    </div>
</nav>