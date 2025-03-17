<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor="white">
<h1>Exercices sur les tableaux</h1>

<!-- Formulaire de saisie des chiffres -->
<form action="#" method="post">
    <p>Saisir au minimum 3 chiffres à la suite, exemple : 6 78 15 
    <input type="text" id="inputValeur" name="chaine">
    </p>
    <p><input type="submit" value="Afficher"></p>
</form>

<%-- Récupération de la chaîne de chiffres --%>
<% 
    String chaine = request.getParameter("chaine");
    if (chaine != null && !chaine.isEmpty()) {
        // Division de la chaîne de chiffres séparés par des espaces
        String[] tableauDeChiffres = chaine.split("\\s+");
        
        // Conversion des chaînes en entiers
        int[] chiffres = new int[tableauDeChiffres.length];
        for (int i = 0; i < tableauDeChiffres.length; i++) {
            chiffres[i] = Integer.parseInt(tableauDeChiffres[i]);
        }
%>

    <p>Le tableau contient <%= chiffres.length %> valeurs</p>
    <p>Chiffre 1 : <%= chiffres[0] %></p>
    <p>Chiffre 2 : <%= chiffres[1] %></p>
    <p>Chiffre 3 : <%= chiffres[2] %></p>

<h2>Exercice 1 : Le carré de la première valeur</h2>
<p>Le carré de la première valeur est : <%= chiffres[0] * chiffres[0] %></p*
