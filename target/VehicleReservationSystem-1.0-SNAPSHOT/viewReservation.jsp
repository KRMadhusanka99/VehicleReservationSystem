<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/4/2023
  Time: 3:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reservation List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<section class="taco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-4">
                <h2 class="heading-section">Reservation Table</h2>
            </div>
        </div>
        <div class="card">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-10">
                    <div class="login-wrap p-0">
                        <div>
                            <table class="table">
                                <thead>
                                <tr>
                                    <th scope="col">Date</th>
                                    <th scope="col">Time</th>
                                    <th scope="col">Location</th>
                                    <th scope="col">Registration Number</th>
                                    <th scope="col">Mileage</th>
                                    <th scope="col">Message</th>
                                    <th scope="col">Cancel</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>
                                        <div class="form-group">
                                            <button type="button" onclick="window.location.href=''" class="form-control btn btn-danger submit px-3">Delete</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>
                                        <div class="form-group">
                                            <button type="button" onclick="window.location.href=''" class="form-control btn btn-danger submit px-3">Delete</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>
                                        <div class="form-group">
                                            <button type="button" onclick="window.location.href=''" class="form-control btn btn-danger submit px-3">Delete</button>
                                        </div>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
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
