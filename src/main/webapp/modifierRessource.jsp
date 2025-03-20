<%@ page import="org.example.constructionxpert.Model.Ressources" %><%--
  Created by IntelliJ IDEA.
  User: amine
  Date: 19/03/2025
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <title>Title</title>
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Update Ressource</h2>

    <%
        Ressources ressources = (Ressources) request.getAttribute("ressources");
    %>

    <form action="ressources" method="post">
        <input type="hidden" name="idres" value="<%= ressources.getIdres() %>"/>
        <input type="hidden" name="action" value="update"/>

        <div class="form-group">
            <input type="text" class="form-control" name="nomres" value="<%=ressources.getNomres() %>" required />
        </div>

        <div class="form-group">
            <input type="text" class="form-control" name="type" value="<%=ressources.getType() %>" required />
        </div>
        <div class="form-group">
            <input type="number" class="form-control" name="quantite" value="<%=ressources.getQuantite()%>" required />
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="nomfourn" value="<%=ressources.getNomfournisseur()%>" required />
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="local" value="<%=ressources.getLocalfournisseur()%>" required />
        </div>

        <button type="submit" class="btn btn-primary btn-block">Update</button>
    </form>


    <br>
</div>

</body>
</html>
