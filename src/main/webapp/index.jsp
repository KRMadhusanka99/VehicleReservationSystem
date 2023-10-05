<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome-ReverseYourService</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-4">
                <h2 class="heading-section">Welcome to ReserveYourService</h2>
                <img src="images/index.png" alt="">
            </div>
        </div>
        <div class="card">
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4">
                    <div class="login-wrap p-0">
                        <h3 class="mb-4 text-center">Reserve Your Service</h3>
                        <form method="post" action="samlsso?SAML2.HTTPBinding=HTTP-POST">
                            <div class="form-group">
                                <input type="submit" class="form-control btn btn-primary submit px-3" value="Sign In">
                            </div>
                        </form>
                        <div class="social d-flex text-center">
                            <p class="w-50 text-center">&mdash; Don't have an Account &mdash;</p>
                            <a href="https://console.asgardeo.io/" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> Create Account</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>