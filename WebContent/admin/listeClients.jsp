<!DOCTYPE html>
<html>
    <head>
        <title>Affichage de la liste des clients</title>
    </head>
    <body>
    	<%@ include file="/WEB-INF/menu.jsp" %>
		<div class="card-columns">
			<c:forEach items="${ listeClients }" var="client">
				<c:if test="${ client.statut != 'guest' }">
					<div class="card text-center">
					  <div class="card-body">
					    <h5 class="card-title">${client.prenom} ${client.nom}</h5>
					    <p class="card-text">adresse mail : ${client.mail}</p>
					    <p class="card-text">Statut : ${ client.statut }</p>
					    <p class="card-text"><small class="text-muted">identifiant : ${client.id}</small></p>
					  </div>
					</div>
				</c:if>
			</c:forEach>
		</div>
    </body> 
</html> 