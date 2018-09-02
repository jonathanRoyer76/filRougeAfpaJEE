<!DOCTYPE html>
<html>
    <head>
        <title>Affichage de la liste des produits</title>
    </head>
    <body>
    	<%@ include file="/WEB-INF/menu.jsp" %>
        <div class="card-columns">
			<c:forEach items="${ listeProduits }" var="produit">
				<div class="container">
					  <div class="card">
					    <div class="card-body">
					    <div class="card-text"><small class="text-muted">Référence : ${ produit.idProduit }</small></div>
					      <h5 class="card-title">${ produit.nomProduit }</h5>
					      <p class="card-text">${ produit.prixVenteTTC } euros</p>
					      <p class="card-text">
					      	<c:if test="${ produit.libelleStatutProduit=='rupture' }">
					      		<span class="text-danger">Rupture momentanée</span>
					      	</c:if>
					      	<c:if test="${ produit.libelleStatutProduit!='rupture' }">
					      		<span class="text-info">En stock : ${ produit.quantiteStock }</span>
					      	</c:if>
					      </p>
						      <a href="" onclick="ajoutPanier(${produit.idProduit})" class="btn btn-primary">Ajouter au panier</a>				      
					    </div>
					  </div>
				</div>
			</c:forEach>
		</div>
		
		<%-- <script type="text/javascript" src="<c:url value="/inc/scriptsJS/script.js"/>"></script> --%>
		<script type="text/javascript">
			function ajoutPanier(idProduit){
				var xhttp = new XMLHttpRequest();
			 	xhttp.onreadystatechange = function() {
				    if (this.readyState == 4 && this.status == 200) {
				     /* console.log("terminé") */
				    }
			  	};
				  xhttp.open("GET", "services?role=ajoutPanier&idProduit="+idProduit, true);
				  xhttp.send();
		    }			
		</script>
    </body> 
</html> 