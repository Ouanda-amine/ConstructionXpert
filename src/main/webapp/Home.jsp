<%--
  Created by IntelliJ IDEA.
  User: amine
  Date: 24/03/2025
  Time: 10:09
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
            background-color: #f8f9fa;
        }

        h1 {
            font-size: 36px;
        }

        .card {
            margin-bottom: 20px;
        }

        img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
        }

        .btn {
            font-size: 16px;
            padding: 10px 20px;
        }

        .navbar h1 {
            font-size: 24px;
        }

        .container {
            max-width: 90%;
            margin: 0 auto;
        }

        @media only screen and (max-width: 768px) {
            h1 {
                font-size: 28px;
            }

            .card-title {
                font-size: 20px;
            }

            .btn {
                font-size: 14px;
            }

            img {
                max-width: 100%;
                height: auto;
            }

            .navbar h1 {
                font-size: 20px;
            }

            .row {
                justify-content: center;
            }
        }

        @media only screen and (max-width: 480px) {
            h1 {
                font-size: 22px;
            }

            .card-title {
                font-size: 18px;
            }

            .btn {
                font-size: 12px;
                padding: 8px 16px;
            }

            img {
                width: 100%;
                height: auto;
            }

            .navbar h1 {
                font-size: 18px;
            }

            .container {
                padding: 15px;
            }

            .card-body {
                padding: 15px;
            }
        }
    </style>


</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-warning">
    <div class="container">
        <h1 style="font-family: 'Arial Rounded MT Bold' ; color: black"> Construction_Xpert </h1>
        <form action="logout" > <button  class="btn btn-primary">logout</button> </form>
    </div>
</nav>
<div class="container mt-5">
    <div class="text-center mb-4">
        <h1 class="fw-bold" style="color: #d1c301">Welcome TO ConstructionXpert</h1>
        <h2 class="text-muted"></h2>
    </div>


    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card shadow-sm">
                <div class="card-body text-center">
                    <h2 class="card-title">PROJECTS</h2>
                    <img src="projet.jpg" style="width: 400px; height: 200px;" class="rounded mx-auto d-block">
                    <a   href="projet" class="btn btn-warning mt-3" >VOIR -></a>                </div>
            </div>
        </div>

        <div class="col-md-5">
            <div class="card shadow-sm">
                <div class="card-body text-center">
                    <h2 class="card-title">RESSOURCES</h2>
                    <img src="ress.jpg" style="width:400px;height:200px;">


                    <a   href="ressources" class="btn btn-warning mt-3" >VOIR -></a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
