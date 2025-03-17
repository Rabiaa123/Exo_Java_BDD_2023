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
<p>Le carré de la première valeur est : <%= chiffres[0] * chiffres[0] %></p>

<h2>Exercice 2 : La somme des deux premières valeurs</h2>
<p>La somme des deux premières valeurs est : <%= chiffres[0] + chiffres[1] %></p>

<h2>Exercice 3 : La somme de toutes les valeurs</h2>
<p>La somme de toutes les valeurs saisies est :
<% 
    int somme = 0;
    for (int i = 0; i < chiffres.length; i++) {
        somme += chiffres[i];
    }
    out.println(somme);
%></p>

<h2>Exercice 4 : La valeur maximale</h2>
<p>La valeur maximale saisie est : 
<% 
    int max = chiffres[0];
    for (int i = 1; i < chiffres.length; i++) {
        if (chiffres[i] > max) {
            max = chiffres[i];
        }
    }
    out.println(max);
%></p>

<h2>Exercice 5 : La valeur minimale</h2>
<p>La valeur minimale saisie est : 
<% 
    int min = chiffres[0];
    for (int i = 1; i < chiffres.length; i++) {
        if (chiffres[i] < min) {
            min = chiffres[i];
        }
    }
    out.println(min);
%></p>

<h2>Exercice 6 : La valeur la plus proche de 0</h2>
<p>La valeur la plus proche de 0 est : 
<% 
    int procheDeZero = chiffres[0];
    for (int i = 1; i < chiffres.length; i++) {
        if (Math.abs(chiffres[i]) < Math.abs(procheDeZero)) {
            procheDeZero = chiffres[i];
        }
    }
    out.println(procheDeZero);
%></p>

<h2>Exercice 7 : La valeur la plus proche de 0 (version 2)</h2>
<p>La valeur la plus proche de 0 est : 
<% 
    int valeurProcheZero = chiffres[0];
    for (int i = 1; i < chiffres.length; i++) {
        if (Math.abs(chiffres[i]) < Math.abs(valeurProcheZero)) {
            valeurProcheZero = chiffres[i];
        } else if (Math.abs(chiffres[i]) == Math.abs(valeurProcheZero) && chiffres[i] > valeurProcheZero) {
            valeurProcheZero = chiffres[i];
        }
    }
    out.println(valeurProcheZero);
%></p>

<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
