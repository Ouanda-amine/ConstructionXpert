<%--
  Created by IntelliJ IDEA.
  User: amine
  Date: 19/03/2025
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container my-5">
    <div class="card-body">
        <h2 class="card-title text-center mb-4">ajouter un ressource</h2>
        <form action="ressources" method="post">
            <input type="hidden" name="action" value="add">
            <div class="mb-3">
                <label for="nom" class="form-label">Nom du ressource</label>
                <input type="text" class="form-control" id="nom" name="nomres">
            </div>
            <div class="mb-3">
                <label for="desc" class="form-label">type de ressource</label>
                <input type="text" class="form-control" id="desc" name="type">
            </div>
            <div class="mb-3">
                <label for="dd" class="form-label">Quantité</label>
                <input type="number" class="form-control" id="dd" name="quantite">
            </div>
            <div class="mb-3">
                <label for="datefin" class="form-label">nom de fournisseur </label>
                <input type="text" class="form-control" id="datefin" name="nomfourn">
            </div>
            <div class="mb-3">
                <label for="budget" class="form-label">local de fournisseur</label>
                <input type="text" class="form-control" id="budget" name="local">
            </div>
            <div class="mb-3">
                <button type="submit" class="btn btn-primary">Ajouter</button>
            </div>
        </form>
    </div>
</div>



</body>
</html>
