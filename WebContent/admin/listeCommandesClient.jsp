<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file='/WEB-INF/menu.jsp' %>
	<div class="table-responsive-xl">
	  <table class="table">
	    <thead>
		    <tr>
		      <th scope="col">Référence</th>
		      <th scope="col">Date de commande</th>
		      <th scope="col">Nombre d'articles</th>
		      <th scope="col">Total TTC</th>
		      <th scope="col">Dernier statut</th>
		      <th scope="col">   </th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach items="${ listeCommandes }" var="commande">
		  		<tr>
			      <td>${ commande.idCommande }</td>
			      <td>${ commande.dateCreationCommande }</td>
			      <td>${ commande.nombreProduits }</td>
			      <td>${ commande.totalTTCcommande }</td>
			      <td>${ commande.dernierStatutCommande }</td>
			      <td><c:if test="${ commande.nombreProduits>0 }"><button class="btn btn-primary">Détails</button></c:if></td>
			    </tr>
		  	</c:forEach>
		  </tbody>
	  </table>
	</div>
</body>
</html>