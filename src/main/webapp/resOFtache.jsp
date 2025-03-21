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

    <style>
        /* Default Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }

        h1 {
            text-align: center;
            margin: 20px 0;
            font-size: 28px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: white;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #343a40;
            color: white;
            font-size: 16px;
        }

        td {
            font-size: 14px;
        }

        /* Media Query for Tablets (screens up to 768px) */
        @media only screen and (max-width: 768px) {
            h1 {
                font-size: 24px;
            }

            th, td {
                font-size: 12px;
                padding: 10px;
            }

            table {
                font-size: 12px;
            }
        }

        /* Media Query for Mobile Phones (screens up to 480px) */
        @media only screen and (max-width: 480px) {
            h1 {
                font-size: 20px;
            }

            table {
                font-size: 10px;
            }

            th, td {
                font-size: 10px;
                padding: 8px;
                word-break: break-word;
            }

            td {
                display: block;
                width: 100%; /* Stack the cells vertically for better readability */
            }

            tr {
                display: block;
                margin-bottom: 10px; /* Add spacing between rows */
            }
        }
    </style>


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
