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

    <style>
        /* Default Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }

        .container {
            max-width: 600px; /* Sets a max width for the form */
            margin: 0 auto;
            padding: 20px;
        }

        .card-body {
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 30px;
        }

        h2 {
            font-size: 24px;
        }

        .form-label {
            font-weight: bold;
        }

        button {
            width: 100%; /* Full-width button for better usability */
        }

        /* Media Query for Tablets (screens up to 768px) */
        @media only screen and (max-width: 768px) {
            .container {
                max-width: 90%; /* Reduce width for smaller screens */
            }

            .card-body {
                padding: 20px;
            }

            h2 {
                font-size: 20px; /* Smaller text for headings */
            }

            label {
                font-size: 14px;
            }

            input, button {
                font-size: 14px;
            }
        }

        /* Media Query for Mobile Phones (screens up to 480px) */
        @media only screen and (max-width: 480px) {
            h2 {
                font-size: 18px;
            }

            .card-body {
                padding: 15px;
            }

            label {
                font-size: 12px;
            }

            input, button {
                font-size: 12px;
            }

            button {
                width: 100%; /* Make buttons 100% width on mobile */
            }
        }
    </style>


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
