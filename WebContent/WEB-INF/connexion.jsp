<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Connexion</title>
        <%-- <link rel=stylesheet href="<c:url value="/inc/style.css"/>"/>
        <link rel=stylesheet href="<c:url value="/inc/bootstrap/css/bootstrap.css"/>"/> --%>
    </head>
    <body>    	
        <form action="" method="POST" class="col-lg-6">
            <legend class="test">Connexion au site</legend>
            <label for="inputMail">Adresse e-mail :</label>
            <input value="jonathan.royer@gmail.com"placeholder="e-mail de connexion" type="text" name="mail" id="inputMail" class="form-control">
            <label for="inputPassword">Mot de passe :</label>
            <input value="aucun" placeholder="mot de passe" type="password" name="mdp" id="inputPassword" class="form-control">
            <br>
            <button class="btn btn-primary">Connexion</button>
        </form> 
    </body> 
</html> 