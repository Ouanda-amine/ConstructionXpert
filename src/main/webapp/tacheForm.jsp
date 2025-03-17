<%--
  Created by IntelliJ IDEA.
  User: amine
  Date: 17/03/2025
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="container my-5">
    <div class="card-body">
        <h2 class="card-title text-center mb-4">ajouter un projet</h2>
        <form action="projet" method="post">

            <div class="mb-3">
                <label for="desc" class="form-label">Description</label>
                <input type="text" class="form-control" id="desc" name="description">
            </div>
            <div class="mb-3">
                <label for="dd" class="form-label">Date de debut</label>
                <input type="date" class="form-control" id="dd" name="datedebut">
            </div>
            <div class="mb-3">
                <label for="datefin" class="form-label">Date de fin</label>
                <input type="date" class="form-control" id="datefin" name="datefin">
            </div>
            <div class="mb-3">
                <label for="budget" class="form-label">Description</label>
                <input type="number" class="form-control" id="budget" name="budget">
            </div>
            <div class="mb-3">
                <button type="submit" class="btn btn-primary" onclick="window.location.href='StudentList.jsp'">Ajouter</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
