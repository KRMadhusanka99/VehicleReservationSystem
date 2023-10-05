<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/2/2023
  Time: 8:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="io.asgardeo.java.saml.sdk.util.SSOAgentConstants" %>
<%@ page import="io.asgardeo.java.saml.sdk.bean.LoggedInSessionBean" %>
<%@ page import="io.asgardeo.java.saml.sdk.bean.LoggedInSessionBean.SAML2SSO" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Retrieve the session bean.
    LoggedInSessionBean sessionBean = (LoggedInSessionBean) session.getAttribute(SSOAgentConstants.SESSION_BEAN_NAME);

    // SAML response
    SAML2SSO samlResponse = sessionBean.getSAML2SSO();

    // Autheticated username
    String subjectId = samlResponse.getSubjectId();

    // Authenticated user's attributes
    Map<String, String> saml2SSOAttributes = samlResponse.getSubjectAttributes();
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link>
    <title>Home-ReserveYourService</title>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<%
    String fname = null;
    String lname = null;
    if (saml2SSOAttributes != null) {
        for (Map.Entry<String, String> entry : saml2SSOAttributes.entrySet()) {
            String attributeName = entry.getKey();
            String attributeValue = entry.getValue();
            if ("http://wso2.org/claims/givenname".equals(attributeName)) {
                fname = attributeValue;
            }
            else if ("http://wso2.org/claims/lastname".equals(attributeName)) {
                lname = attributeValue;
            }
        }
    }
%>
<section class="taco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-4">
                    <h2 class="heading-section">Hello <%=fname%>&nbsp;<%=lname%></h2>
                        <a href="logout?SAML2.HTTPBinding=HTTP-POST" class="form-control btn btn-danger submit px-3" >Log out</a>
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
