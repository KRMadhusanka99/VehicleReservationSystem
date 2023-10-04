<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/4/2023
  Time: 6:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<section class="taco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-3">
                <img class="w-1 h-1" src="images/peofile.png" alt="">
            </div>
        </div>
        <div class="card">
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-9">
                    <div class="login-wrap p-0">
                        <h3 class="mb-4 text-center">Profile Information</h3>
                        <table class="table table-striped text-center">
                            <thead>
                            <tr>
                                <th scope="col">Username</th>
                                <td scope="col">Ramesh1999</td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">Name</th>
                                <td>Ramesh Madhusanka</td>
                            </tr>
                            <tr>
                                <th scope="row">Email</th>
                                <td>Ramesh@gmail.com</td>
                            </tr>
                            <tr>
                                <th scope="row">Contact Number</th>
                                <td>072-055-2665</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="form-group">
                            <button type="button" onclick="window.location.href=''" class="form-control btn btn-primary submit px-3">Back to home</button>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
