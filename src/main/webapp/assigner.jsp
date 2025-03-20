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
        <select name="select" class="form-control" id="select">
            <%
                List<Ressources> ressourcesList = (List<Ressources>) request.getAttribute("ressourceslist");

                for (Ressources ressources : ressourcesList) {
            %>
            <option value="<%=ressources.getIdres()%>"><%= ressources.getNomres() %> <p style="color: bisque">QUANTITE</p> <%=ressources.getQuantite()%></option>
            <%
                }
            %>
        </select>
        <input type="number" min="0" max="10" step="1" value="0" name="quantity" placeholder="Quantity">
    </div>
    <button type="submit" class="btn btn-primary">Assigner</button>
</form>

</body>
</html>
