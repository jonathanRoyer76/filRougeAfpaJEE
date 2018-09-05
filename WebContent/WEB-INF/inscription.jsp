<!DOCTYPE html>
<html>
    <head>
        <title>Insctiption client</title>
        <%-- <link rel=stylesheet href="<c:url value="/inc/style.css"/>"/> --%>
    </head>
    <body>    	
    	<%@ include file="/WEB-INF/menu.jsp" %>
    	<form method="post" action="">
   			<div class="form-row">
			    <div class="form-group col-md-4">
			      <label for="nomClient">Nom</label>
			      <input name ="nomClient" type="text" class="form-control"placeholder="Nom">
			    </div>
			    <div class="form-group col-md-4">
			      <label for="prenomClient">Prénom</label>
			      <input name="prenomClient" type="text" class="form-control" placeholder="Prénom">
			    </div>
		  	
			    <div class="form-group col-md-4">
			      <label for="mailClient">E-mail</label>
			      <input name ="mailClient" type="email" class="form-control" placeholder="E-mail">
			    </div>
		  	</div>
			<div class="form-row">
		  		<div class="form-group col-md-4">
			      <label for="telClient">Téléphone</label>
			      <input name="telClient" type="text" class="form-control" placeholder="Téléphone">
			    </div>
		  		<div class="form-group col-md-4">
			      <label for="comboSexe">Sexe</label>
			      <select name="comboSexe" class="form-control">
			        <option selected>Homme</option>
			        <option>Femme</option>
			        <option>Autre</option>
			      </select>
		  		</div>
		  		<div class="form-group col-md-4">
	  				<label for="dateNaissance">Date de naissance</label>
			      	<input name="dateNaissance" id="dateNaissance" width="276" />
		  		</div>
		  	</div>
		  	<div class="form-row">
			    <div class="form-group col-md-3">
			      <label for="adresseClient">Adresse</label>
			      <input name ="adresseClient" type="text" class="form-control" placeholder="Adresse">
			    </div>
			    <div class="form-group col-md-3">
			      <label for="cpClient">Code postal</label>
			      <input name="cpClient" type="number" class="form-control" placeholder="Code postal">
			    </div>
		  	
			    <div class="form-group col-md-3">
			      <label for="villeClient">Ville</label>
			      <input name ="villeClient" type="text" class="form-control"placeholder="Ville">
			    </div>
			    <div class="form-group col-md-3">
			      <label for="paysClient">Pays</label>
			      <input name ="paysClient" type="text" class="form-control" placeholder="Pays">
			    </div>
		  	</div>
		  	<div class="form-row">
			    <div class="form-group col-md-4">
			      <label for="mdpClient">Mot de passe</label>
			      <input name="mdpClient" type="password" class="form-control" placeholder="Mot de passe">
			    </div>
		  	
			    <div class="form-group col-md-4">
			      <label for="confirmeMdp">Confirmer le mot de passe</label>
			      <input name ="confirmeMdp" type="password" class="form-control"placeholder="Confirmer le mot de passe">
			    </div>
		  	</div>
		  	<button class="btn btn-primary">Valider l'inscription</button>
		</form>
	</body>
    <script>
        $('#dateNaissance').datepicker({
            uiLibrary: 'bootstrap4'
        });
    </script>
</html>