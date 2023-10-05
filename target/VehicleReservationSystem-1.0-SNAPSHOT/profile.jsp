<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/4/2023
  Time: 6:46 PM
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

                                <%
                                    String username = null;
                                    String email = null;
                                    String country = null;
                                    String mobile = null;
                                    String fname = null;
                                    String lname = null;
                                    if (saml2SSOAttributes != null) {
                                        for (Map.Entry<String, String> entry : saml2SSOAttributes.entrySet()) {
                                            String attributeName = entry.getKey();
                                            String attributeValue = entry.getValue();
                                            if ("http://wso2.org/claims/username".equals(attributeName)) {
                                                username = attributeValue;
                                            }
                                            else if ("http://wso2.org/claims/emailaddress".equals(attributeName)) {
                                                email = attributeValue;
                                            }
                                            else if ("http://wso2.org/claims/country".equals(attributeName)) {
                                                country = attributeValue;
                                            }
                                            else if ("http://wso2.org/claims/mobile".equals(attributeName)) {
                                                mobile = attributeValue;
                                            }
                                            else if ("http://wso2.org/claims/givenname".equals(attributeName)) {
                                                fname = attributeValue;
                                            }
                                            else if ("http://wso2.org/claims/lastname".equals(attributeName)) {
                                                lname = attributeValue;
                                            }
                                        }
                                    }
                                %>
                            <thead>
                            <tr>
                                <th scope="col">Username</th>
                                <td scope="col"><%=username%></td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">Name</th>
                                <td><%=fname%>&nbsp<%=lname%></td>
                            </tr>
                            <tr>
                                <th scope="row">Email</th>
                                <td><%=email%></td>
                            </tr>
                            <tr>
                                <th scope="row">Contact Number</th>
                                <td><%=mobile%></td>
                            </tr>
                            <tr>
                                <th scope="row">Country</th>
                                <td><%=country%></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="form-group">
                            <a type="button" href="home.jsp" class="form-control btn btn-primary submit px-3">Back to home</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
