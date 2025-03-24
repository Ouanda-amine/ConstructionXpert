<%@ page import="org.example.constructionxpert.Model.Tache" %><%--
  Created by IntelliJ IDEA.
  User: amine
  Date: 18/03/2025
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <title>Title</title>
    <style>
        @media (max-width: 576px) {
            body {
                font-size: 14px;
            }
            .container {
                padding: 10px;
            }
            h2 {
                font-size: 20px;
            }
            .form-group input, button {
                font-size: 14px;
            }
            button {
                padding: 8px 12px;
            }
        }

        @media (min-width: 577px) and (max-width: 768px) {
            body {
                font-size: 16px;
            }
            .container {
                padding: 20px;
            }
            h2 {
                font-size: 22px;
            }
            .form-group input, button {
                font-size: 16px;
            }
        }

        @media (min-width: 769px) {
            body {
                font-size: 18px;
            }
            .container {
                margin: auto;
                max-width: 700px;
            }
            h2 {
                font-size: 24px;
            }
            .form-group input, button {
                font-size: 18px;
            }
            button {
                padding: 10px 20px;
            }
        }
    </style>

</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Update Student</h2>

    <%
        Tache tache = (Tache) request.getAttribute("tache");
    %>

    <form action="tache" method="post">
        <input type="hidden" name="idtache" value="<%= tache.getIdtache() %>"/>
        <input type="hidden" name="idpro" value="<%=tache.getIdpro() %>">

        <input type="hidden" name="action" value="update"/>


        <div class="form-group">
            <input type="text" class="form-control" name="description" value="<%=tache.getDescription() %>" required />
        </div>
        <div class="form-group">
            <input type="date" class="form-control" name="datedeb" value="<%=tache.getDatedebut() %>" required />
        </div>
        <div class="form-group">
            <input type="date" class="form-control" name="datefin" value="<%=tache.getDatefin()%>" required />
        </div>


        <button type="submit" class="btn btn-primary btn-block">Update</button>
    </form>


    <br>
</div>

</body>
</html>
