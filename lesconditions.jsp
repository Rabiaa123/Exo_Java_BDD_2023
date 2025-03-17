<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<h2>Exercice 1 : Comparaison 1</h2>
<form action="#" method="post">
    <p>Saisir la valeur A : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur B : <input type="text" id="inputValeur" name="valeur2">
    <p>Saisir la valeur C : <input type="text" id="inputValeur" name="valeur3">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>
    <% String valeur3 = request.getParameter("valeur3"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null && valeur3 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        <% int intValeur3 = Integer.parseInt(valeur3); %>
        
<%-- Condition if pour comparer les valeurs --%>
<% if ((intValeur3 > intValeur1 && intValeur3 < intValeur2) || (intValeur3 > intValeur2 && intValeur3 < intValeur1)) { %>
    <p>Oui, C est compris entre A et B.</p>
<% } else { %>
    <p>Non, C n'est pas compris entre A et B.</p>
<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
