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
<section class="taco-section">
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
                            <a type="button" href="reservation.jsp" class="form-control btn btn-primary submit px-3">Make a reservation</a>
                        </div>
                        <div class="form-group">
                            <%--<button type="button" onclick="window.location.href=''" class="form-control btn btn-primary submit px-3">View your reservation</button>--%>
                                <form method="get" action="view">
                                    <input type="submit" id="btn-login" class="form-control btn btn-primary submit px-3" value="View reservations"/>
                                </form>
                        </div>
                        <div class="form-group">
                            <a type="button" href="profile.jsp" class="form-control btn btn-primary submit px-3">Profile information</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
