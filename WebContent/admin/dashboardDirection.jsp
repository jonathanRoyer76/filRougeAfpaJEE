<!DOCTYPE html>
<html>
    <head>
        <title>Insctiption client</title>
    </head>
    <body>  
    	<%@ include file="/WEB-INF/menu.jsp" %>
    	<c:if test="${ session_client.statut=='direction'}">
   			<div class="row">
				<div class="col-md-6">
					<div class="card border-danger">
						<div class="card-body">
						  <h5 class="card-title">Produits en stocks limit�s</h5>
						  <canvas class="card-text" id="stocksAlert"></canvas>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card border-primary">
						<div class="card-body">
							<h5 class="card-title">CA HT en euros par famille du mois en cours</h5>
							<canvas class="card-text" id="CaMois"></canvas>
						</div>
					</div>
				</div>
			</div> 
			<div class="row">
				<div class="col-md-6">
					<div class="card ">
						<div class="card-body">
							<h5 class="card-title">CA HT annuel en euros</h5>
							<canvas class="card-text" id="CaHtAnnee"></canvas>
						</div>
					</div>
				</div>
			</div> 
    	</c:if>
    </body> 
    <script type="text/javascript" src ="../inc/scriptsJS/direction.js"></script>
</html>	