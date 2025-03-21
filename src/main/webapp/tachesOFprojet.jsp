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
    <style>

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            margin: 0 auto;
            max-width: 90%;
        }

        table {
            width: 100%;
            margin-top: 20px;
        }

        h2 {
            font-size: 28px;
        }

        .btn {
            margin: 5px 0;
        }

        @media only screen and (max-width: 768px) {
            h2 {
                font-size: 24px;
            }

            table {
                font-size: 14px;
            }

            .btn {
                font-size: 12px;
                width: 100%;
            }

            td, th {
                word-break: break-word;
            }
        }

        @media only screen and (max-width: 480px) {
            h2 {
                font-size: 20px;
            }

            table {
                font-size: 12px;
            }

            th, td {
                font-size: 12px;
                padding: 5px;
                text-align: center;
            }

            .btn {
                font-size: 10px;
                width: 100%;
            }
        }
    </style>


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
                <a href="tache?action=delete&idtache=<%= tache.getIdtache() %>&idpro=<%= tache.getIdpro() %>" class="btn btn-danger">Delete</a>
                <a href="affectation?idtache=<%= tache.getIdtache() %>" class="btn  btn-primary">Assigner ressource</a>
                <a href="affectation?action=affectation&idtache=<%= tache.getIdtache() %>" class="btn  btn-primary">list rres</a>





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
