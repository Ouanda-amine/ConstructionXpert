<%@ page import="org.example.constructionxpert.Model.Tache" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: amine
  Date: 18/03/2025
  Time: 12:23
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
    <h2 class="text-center mb-4">tache List</h2>

    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Description</th>
            <th>Date de debut</th>
            <th>date de fin</th>

        </tr>
        </thead>
        <tbody>
        <%
            List<Tache> tacheList = (List<Tache>) request.getAttribute("tachelist");

            for (Tache tache : tacheList) {
        %>
        <tr>
            <td><%= tache.getIdtache() %></td>
            <td><%= tache.getDescription() %></td>
            <td><%= tache.getDatedebut()%></td>
            <td><%= tache.getDatefin() %></td>


            <td>
                <a href="tache?action=edit&idtache=<%= tache.getIdtache() %>" class="btn btn-warning btn-sm">Edit</a>
                <a href="tache?action=delete&idtache=<%= tache.getIdtache() %>" class="btn btn-danger btn-sm">Delete</a>



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
