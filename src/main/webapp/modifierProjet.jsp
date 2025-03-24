<%@ page import="org.example.constructionxpert.Model.Projet" %><%--
  Created by IntelliJ IDEA.
  User: amine
  Date: 17/03/2025
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        @media (max-width: 576px) {
            body {
                font-size: 14px;
            }
            .container {
                margin: 0 10px;
            }
            .form-group input {
                font-size: 14px;
            }
            h2 {
                font-size: 20px;
            }
            button {
                font-size: 16px;
            }
        }

        @media (min-width: 577px) and (max-width: 768px) {
            body {
                font-size: 16px;
            }
            .container {
                margin: 0 20px;
            }
            .form-group input {
                font-size: 16px;
            }
            h2 {
                font-size: 22px;
            }
            button {
                font-size: 18px;
            }
        }

        @media (min-width: 769px) {
            body {
                font-size: 18px;
            }
            .container {
                margin: auto;
                max-width: 600px;
            }
            .form-group input {
                font-size: 18px;
            }
            h2 {
                font-size: 24px;
            }
            button {
                font-size: 20px;
            }
        }
    </style>


</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Update Project</h2>

    <%
        Projet projet = (Projet) request.getAttribute("projet");
    %>

    <form action="projet" method="post">
        <input type="hidden" name="id" value="<%= projet.getIdpro() %>"/>
        <input type="hidden" name="action" value="update"/>

        <div class="form-group">
            <input type="text" class="form-control" name="nom" value="<%=projet.getNomprojet() %>" required />
        </div>

        <div class="form-group">
            <input type="text" class="form-control" name="description" value="<%=projet.getDescription() %>" required />
        </div>
        <div class="form-group">
            <input type="date" class="form-control" name="datedeb" value="<%=projet.getDatedebut() %>" required />
        </div>
        <div class="form-group">
            <input type="date" class="form-control" name="datefin" value="<%=projet.getDatefin()%>" required />
        </div>
        <div class="form-group">
            <input type="number" class="form-control" name="budget" value="<%=projet.getBudget()%>" required />
        </div>

        <button type="submit" class="btn btn-primary btn-block">Update</button>
    </form>


    <br>
</div>

</body>
</html>
