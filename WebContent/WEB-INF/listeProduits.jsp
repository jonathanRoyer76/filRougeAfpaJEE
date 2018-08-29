<!DOCTYPE html>
<html>
    <head>
        <title>Affichage de la liste des produits</title>
    </head>
    <body>
    	<%@ include file="/WEB-INF/menu.jsp" %>
        <div class="table-responsive">
        	<table class="table table-striped">
	            <caption>Liste des clients produits</caption>
	            <thead>
	                <tr>
	                    <th>Référence</th>
	                    <th>Nom</th>
	                    <th>Prénom</th>
	                    <th>E-mail</th>
	                </tr>
	            </thead>
	            <tbody>
					<c:forEach items="${ listeClients }" var="client">
						<tr>
							<td>${ client.id }</td>
							<td>${ client.nom }</td>
							<td>${ client.prenom }</td>
							<td>${ client.mail }</td>
						</tr>
					</c:forEach>
	            </tbody>
	        </table>
		</div>
		
    </body> 
</html> 