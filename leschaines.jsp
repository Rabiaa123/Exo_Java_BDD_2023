<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaînes</title>
</head>
<body bgcolor="white">
<h1>Exercices sur les chaînes de caractères</h1>

<!-- Formulaire de saisie de la chaîne -->
<form action="#" method="post">
    <p>Saisir une chaîne (Du texte avec 6 caractères minimum) : 
    <input type="text" id="inputValeur" name="chaine">
    </p>
    <p><input type="submit" value="Afficher"></p>
</form>

<%-- Récupération de la chaîne --%>
<% 
    String chaine = request.getParameter("chaine");
    if (chaine != null && !chaine.isEmpty()) {
%>

    <%-- Obtention de la longueur de la chaîne --%>
    <% int longueurChaine = chaine.length(); %>
    <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>

    <%-- Extraction du 3ème caractère --%>
    <% 
        if (longueurChaine >= 3) {
            char caractereExtrait = chaine.charAt(2);
            out.println("<p>Le 3ème caractère de votre chaîne est la lettre " + caractereExtrait + "</p>");
        }
    %>

    <%-- Obtention d'une sous-chaîne --%>
    <% 
        if (longueurChaine >= 6) {
            String sousChaine = chaine.substring(2, 6);
            out.println("<p>Une sous-chaîne de votre texte : " + sousChaine + "</p>");
        }
    %>

    <%-- Recherche de la lettre "e" --%>
    <% 
        char recherche = 'e';
        int position = chaine.indexOf(recherche);
        out.println("<p>Votre premier 'e' est en position : " + position + "</p>");
    %>

    <h2>Exercice 1 : Combien de 'e' dans la chaîne de caractères ?</h2>
    <% 
        int count = 0;
        chaine = chaine.toLowerCase();  // Convertir en minuscule pour prendre en compte 'e' et 'E'

        for (int i = 0; i < chaine.length(); i++) {
            if (chaine.charAt(i) == 'e') {
                count++;
            }
        }
        out.println("<p>Le nombre de lettres 'e' dans la chaîne est : " + count + "</p>");
    %>

    <h2>Exercice 2 : Affichage vertical</h2>
    <p>
        <% 
            for (int i = 0; i < chaine.length(); i++) {
                out.println(chaine.charAt(i) + "<br>");
            }
        %>
    </p>

    <h2>Exercice 3 : Retour à la ligne</h2>
    <p>
        <% 
            String[] mots = chaine.split(" ");
            for (String mot : mots) {
                out.println(mot + "<br>");
            }
        %>
    </p>

    <h2>Exercice 4 : Afficher une lettre sur deux</h2>
    <p>
        <% 
            for (int i = 0; i < chaine.length(); i += 2) {
                out.print(chaine.charAt(i));
            }
        %>
    </p>

    <h2>Exercice 5 : La phrase en verlan</h2>
    <p>
        <% 
            StringBuilder verlan = new StringBuilder();
            for (int i = chaine.length() - 1; i >= 0; i--) {
                verlan.append(chaine.charAt(i));
            }
            out.println(verlan.toString());
        %>
    </p>

    <h2>Exercice 6 : Consonnes et voyelles</h2>
    <p>
        <% 
            int voyelles = 0, consonnes = 0;
            String vowels = "aeiouyAEIOUY";
            for (int i = 0; i < chaine.length(); i++) {
                char c = chaine.charAt(i);
                if (Character.isLetter(c)) {
                    if (vowels.indexOf(c) != -1) {
                        voyelles++;
                    } else {
                        consonnes++;
                    }
                }
            }
            out.println("Voyelles : " + voyelles + "<br>");
            out.println("Consonnes : " + consonnes);
        %>
    </p>

<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
