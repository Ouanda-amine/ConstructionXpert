<%@ page import="org.example.constructionxpert.Model.Tache" %>
<%@ page import="org.example.constructionxpert.Model.Ressources" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: amine
  Date: 20/03/2025
  Time: 11:23
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

        form {
            margin: 0 auto;
            max-width: 600px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        select, input {
            width: 100%;
            margin-top: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #ffffff;
            font-weight: bold;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Media Query for Tablets (screens up to 768px) */
        @media only screen and (max-width: 768px) {
            form {
                max-width: 90%; /* Reduce the form width for smaller screens */
            }

            label {
                font-size: 14px;
            }

            select, input {
                font-size: 14px;
            }

            button {
                font-size: 14px;
                padding: 12px;
            }
        }

        /* Media Query for Mobile Phones (screens up to 480px) */
        @media only screen and (max-width: 480px) {
            form {
                max-width: 100%; /* Take full width on mobile devices */
                padding: 15px;
            }

            label {
                font-size: 12px;
            }

            select, input {
                font-size: 12px;
            }

            button {
                font-size: 12px;
            }
        }
    </style>


</head>
<body>
<%
    Tache tache = (Tache) request.getAttribute("tache");
%>
<form action="affectation" method="post">
    <input type="hidden" name="tachid" value="<%= tache.getIdtache() %>">
    <input type="hidden" name="action" value="affectation">


    <div class="form-group">
        <label for="select">RESSOURCES :</label>
        <select name="select" class="form-control" id="select" style="margin-bottom: 40px">
            <%
                List<Ressources> ressourcesList = (List<Ressources>) request.getAttribute("ressourceslist");

                for (Ressources ressources : ressourcesList) {
            %>
            <option value="<%=ressources.getIdres()%>"><%= ressources.getNomres() %> <p style="color: bisque">QUANTITE</p> <%=ressources.getQuantite()%></option>
            <%
                }
            %>
        </select>
        <input type="number" name="quantity" placeholder="Quantity">
    </div>
    <button type="submit" class="btn btn-primary">Assigner</button>
</form>

</body>
</html>
