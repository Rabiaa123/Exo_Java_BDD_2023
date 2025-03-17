<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Les conditions</title>
</head>
<body bgcolor="white">
    <h1>Exercices sur les conditions</h1>

    <h2>Exercice 1 : Comparaison de 3 valeurs</h2>
    <form action="#" method="post">
        <p>Saisir la valeur A : <input type="text" name="valeur1"></p>
        <p>Saisir la valeur B : <input type="text" name="valeur2"></p>
        <p>Saisir la valeur C : <input type="text" name="valeur3"></p>
        <p><input type="submit" value="Afficher"></p>
    </form>

    <%-- Récupération des valeurs --%>
    <% 
        String valeur1 = request.getParameter("valeur1");
        String valeur2 = request.getParameter("valeur2");
        String valeur3 = request.getParameter("valeur3");

        if (valeur1 != null && valeur2 != null && valeur3 != null && !valeur1.isEmpty() && !valeur2.isEmpty() && !valeur3.isEmpty()) {
            try {
                // Conversion des valeurs en entiers
                int intValeur1 = Integer.parseInt(valeur1);
                int intValeur2 = Integer.parseInt(valeur2);
                int intValeur3 = Integer.parseInt(valeur3);
                
                // Vérification si C est compris entre A et B
                if ((intValeur3 > intValeur1 && intValeur3 < intValeur2) || 
                    (intValeur3 > intValeur2 && intValeur3 < intValeur1)) {
    %>
                    <p>Oui, C est compris entre A et B.</p>
    <% 
                } else {
    %>
                    <p>Non, C n'est pas compris entre A et B.</p>
    <% 
                }
            } catch (NumberFormatException e) {
    %>
                <p style="color:red;">Veuillez entrer des valeurs numériques valides.</p>
    <% 
            }
        }
    %>

    <h2>Exercice 2 : Vérification Pair ou Impair</h2>
    <form action="#" method="post">
        <p>Saisir un nombre pour vérifier s'il est pair ou impair : <input type="text" name="nombre"></p>
        <p><input type="submit" value="Vérifier"></p>
    </form>

    <%-- Récupération de la valeur saisie par l'utilisateur pour vérifier Pair ou Impair --%>
    <% 
        String nombre = request.getParameter("nombre");
        
        if (nombre != null && !nombre.isEmpty()) {
            try {
                // Conversion du nombre en entier
                int intNombre = Integer.parseInt(nombre);

                // Vérification si le nombre est pair ou impair
                if (intNombre % 2 == 0) {
    %>
                    <p>Le nombre <%= intNombre %> est pair.</p>
    <% 
                } else {
    %>
                    <p>Le nombre <%= intNombre %> est impair.</p>
    <% 
                }
            } catch (NumberFormatException e) {
    %>
                <p style="color:red;">Veuillez entrer un nombre valide.</p>
    <% 
            }
        }
    %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>

