<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/menu.jsp" %>
	<c:if test="${ !empty session_panier }">
		<div class="table-responsive-xl">
		  <table class="table table-striped table-hover">
		    <thead>
			    <tr>
			      <th scope="col">Référence</th>
			      <th scope="col">Nom du produit</th>
			      <th scope="col">Quantité</th>
			      <th scope="col">prix unitaire</th>
			      <th scope="col">Total du produit</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:forEach items="${ session_panier.listeProduitsCommande }" var="produit">
			  		<tr>
				      <td>${ produit.idProduit }</td>
				      <td>${ produit.nomProduit }</td>
				      <td>${ produit.quantite }</td>
				      <td>${ produit.prixUnitaireTTC }</td>
				      <td>${ produit.totalTTC }</td>
				    </tr>
			  	</c:forEach>
			  	<tr class="table-info">
			  		<td>Total produits :</td>
			  		<td>${ session_panier.totalTTCSansRemise }</td>
			  	</tr>
			  	<tr>
			  		<td>Réduction :</td>
			  		<td>${ session_panier.remiseGlobale }</td>
			  	</tr>
			  	<tr class="table-success">
			  		<td>Total TTC à régler :</td>
			  		<td>${ session_panier.totalTTCcommande }</td>
			  	</tr>
			  </tbody>
		  </table>
		</div>
	</c:if>
</body>
</html>