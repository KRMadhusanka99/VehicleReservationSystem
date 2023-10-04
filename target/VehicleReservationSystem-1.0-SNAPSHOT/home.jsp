<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/2/2023
  Time: 8:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link>
    <title>Home-ReserveYourService</title>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-4">
                <h2 class="heading-section">Hello  !!</h2>
                <img src="images/home.png" alt="">
            </div>
        </div>
        <div class="card">
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4">
                    <div class="login-wrap p-0">
                        <h3 class="mb-4 text-center">Reserve Your Service</h3>

                        <div class="form-group">
                            <button type="button" onclick="window.location.href='https://api.asgardeo.io/t/learnmasith/oauth2/authorize?response_type=code&client_id=EGjadG6IuA1nPWue_CiKusnbBu8a&scope=openid%20email%20phone%20profile&redirect_uri=http%3A%2F%2Flocalhost%3A8080%2FDriveCareXpress%2Fauthorize.jsp'" class="form-control btn btn-primary submit px-3">Make a reservation</button>
                        </div>
                        <div class="form-group">
                            <button type="button" onclick="window.location.href='https://api.asgardeo.io/t/learnmasith/oauth2/authorize?response_type=code&client_id=EGjadG6IuA1nPWue_CiKusnbBu8a&scope=openid%20email%20phone%20profile&redirect_uri=http%3A%2F%2Flocalhost%3A8080%2FDriveCareXpress%2Fauthorize.jsp'" class="form-control btn btn-primary submit px-3">View your reservation</button>

                        </div>
                        <div class="form-group">
                            <button type="button" onclick="window.location.href='https://api.asgardeo.io/t/learnmasith/oauth2/authorize?response_type=code&client_id=EGjadG6IuA1nPWue_CiKusnbBu8a&scope=openid%20email%20phone%20profile&redirect_uri=http%3A%2F%2Flocalhost%3A8080%2FDriveCareXpress%2Fauthorize.jsp'" class="form-control btn btn-primary submit px-3">Profile information</button>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
