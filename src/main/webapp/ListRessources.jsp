<%@ page import="org.example.constructionxpert.Model.Ressources" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: amine
  Date: 19/03/2025
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container mt-5">
    <div class="row" style="justify-content: space-between ; margin-bottom: 20px">
    <h2 class="text-center mb-4">Ressources List</h2><a href="ressources?action=add" class="btn btn-primary btn-sm">ADD NEW RESSOURCE</a>

    </div>

    <table class="table table-primary table-bordered">
        <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>NOM DE RESSOURCE</th>
            <th>TYPE</th>
            <th>QUANTITE</th>
            <th>NOM DE FOURNISSEUR</th>
            <th>LOCAL DE FOURNISSEUR</th>




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
            <td><%= ressources.getType()%></td>
            <td><%= ressources.getQuantite() %></td>
            <td><%= ressources.getNomfournisseur() %></td>
            <td><%= ressources.getLocalfournisseur() %></td>


            <td>
                <a href="ressources?action=edit&idres=<%= ressources.getIdres() %>" class="btn btn-warning btn-sm">Edit</a>
                <a href="ressources?action=delete&idres=<%= ressources.getIdres()%>" class="btn btn-danger btn-sm">Delete</a>



            </td>
        </tr>
        <%

            }
        %>
        </tbody>
    </table>

    <a href="projet" class="btn btn-success">back to project</a>
</div>

</body>
</html>
