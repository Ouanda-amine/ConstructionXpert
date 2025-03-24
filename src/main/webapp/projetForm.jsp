<%--
  Created by IntelliJ IDEA.
  User: amine
  Date: 17/03/2025
  Time: 10:44
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
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }

        .container {
            max-width: 600px; /* Sets a max width for the form */
            margin: 0 auto;
            padding: 15px;
        }

        .card-body {
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px;
        }

        h2 {
            font-size: 24px;
        }

        button {
            width: 100%; /* Full-width button for better usability */
        }

        /* Media Query for Tablets (screens up to 768px) */
        @media only screen and (max-width: 768px) {
            .container {
                padding: 10px;
            }

            .card-body {
                padding: 15px;
            }

            h2 {
                font-size: 20px;
            }

            label {
                font-size: 14px;
            }

            input, button {
                font-size: 14px;
            }
        }

        /* Media Query for Mobile (screens up to 480px) */
        @media only screen and (max-width: 480px) {
            h2 {
                font-size: 18px;
            }

            label {
                font-size: 12px;
            }

            input, button {
                font-size: 12px;
            }

            .card-body {
                padding: 10px;
            }
        }
    </style>


</head>
<body>

<div class="container my-5">
    <div class="card-body">
        <h2 class="card-title text-center mb-4">ajouter un projet</h2>
        <form action="projet" method="post">
            <input type="hidden" name="action" value="add">
            <div class="mb-3">
                <label for="nom" class="form-label">Nom du projet</label>
                <input type="text" class="form-control" id="nom" name="nompro">
            </div>
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
                <label for="budget" class="form-label">Budget de projet</label>
                <input type="number" class="form-control" id="budget" name="budget">
            </div>
            <div class="mb-3">
                <button type="submit" class="btn btn-primary">Ajouter</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
