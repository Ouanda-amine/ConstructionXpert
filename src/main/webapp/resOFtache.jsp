<%@ page import="org.example.constructionxpert.Model.Ressources" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: amine
  Date: 20/03/2025
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<h1>RESSOURCES Assigned to TACHE</h1>
<table class="table table-bordered table-striped">
    <thead class="thead-dark">
    <tr>
        <th>ID</th>
        <th>NOM de tache</th>
        <th>QUANTITE</th>

    </tr>
    </thead>
    <tbody>
    <%
        List<Ressources> ressourcesList = (List<Ressources>) request.getAttribute("ressourceslist");

        for (Ressources ressources : ressourcesList) {
    %>
    <tr>
        <td><%= ressources.getIdres() %></td>
        <td><%= ressources.getNomres() %></td>
        <td><%= ressources.getQuantite()%></td>


    </tr>
    <%

        }
    %>
    </tbody>
</table>

</body>
</html>
