<%@ page import="org.example.constructionxpert.Model.Projet" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: amine
  Date: 17/03/2025
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

</head>
<style>
    /* Default styles */


    /* Media Query for Tablets (screens up to 768px) */
    @media only screen and (max-width: 768px) {
        .container {
            width: 100%;
            margin-left: 0;
            padding: 10px;
        }

        .card-body {
            width: 90%;
        }

        h1 {
            font-size: 20px;
        }

        .row {
            flex-direction: column;
            justify-content: flex-start;
        }

        .btn {
            width: 50%; /* Make buttons full width for better usability */
            margin: 5px 0;
        }
    }

    /* Media Query for Mobile (screens up to 480px) */
    @media only screen and (max-width: 480px) {
        h1 {
            font-size: 18px;
        }

        .card-body {
            width: 100%; /* Full-width on small devices */
            margin-bottom: 20px;
        }

        .row {
            justify-content: flex-start;
        }

        .btn {
            width: 60%;
        }


    }
</style>

<body background="bg.jpg">

<nav class="navbar navbar-expand-lg navbar-dark bg-primary" style="margin-right: 0">
    <div class="container">
        <h1 style="font-family: 'Arial Rounded MT Bold' ; color: black"> CONSTRUCTIONxPERT </h1>
        <span ><img src="logo.jpg" style="width: 50px ; height: 50px"></span>
    </div>
</nav>



<div class="container w-70 mt-5" style=" height: 100vh ; margin-left: 50vh">

    <%
        List<Projet> projetList = (List<Projet>) request.getAttribute("projetlist");

        for (Projet projet : projetList) {
    %>

    <div class="card-body w-50 mt-50" style="background-color:rgba(0,0,255,0.69) ; margin-bottom: 60px  ; border-radius: 15px ; ">
        <h1 style="text-align: center ; font-family: 'Baskerville Old Face' ; color: #f6f8f8" ><%=projet.getNomprojet()%></h1>
        <p style="text-align: center"><%=projet.getDescription()%></p>
        <p style="float: right ; margin-bottom: 50px ; color:#9f9f37"><%=projet.getBudget()%>MAD</p>
        <div class="row" style="justify-content: space-between ; width: 300px ; margin-top: 40px ">
            <p><%=projet.getDatedebut()%></p>
            <p> jusqu'a </p>
            <p><%=projet.getDatefin()%></p>
        </div>

        <div class="row" style="justify-content: space-between ; width: 300px ; margin-top: 40px ">
            <div>
                <a href="projet?action=edit&id=<%= projet.getIdpro()%>" class="btn btn-warning btn-sm">Edit</a>
                <a href="projet?action=delete&id=<%= projet.getIdpro() %>" class="btn btn-danger btn-sm">Delete</a>

            </div>
            <div>
                <a href="tache?action=createForm&id=<%= projet.getIdpro()%>" class="btn btn-primary btn-sm">ADD TASK</a>
                <a href="tache?action=tachesByProjet&idpro=<%= projet.getIdpro() %>" class="btn btn-primary btn-sm">LIST OF TASKS</a>



            </div>
        </div>

    </div>

    <% } %>



</div>



</body>
</html>
