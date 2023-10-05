<%@ page import="com.example.VehicleReservationSystem.Reservation" %>
<%@ page import="java.util.List" %><%--
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
                            <form action="DeleteReservationServlet" method="post">
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
                                <%
                                    List<Reservation> reservations = (List<Reservation>) request.getAttribute("reservations");
                                    if (reservations != null) {
                                        for (Reservation reservation : reservations) {
                                %>
                                <tr>
                                    <td><%= reservation.getDate() %></td>
                                    <td><%= reservation.getTime() %></td>
                                    <td><%= reservation.getLocation() %></td>
                                    <td><%= reservation.getVehicleNo() %></td>
                                    <td><%= reservation.getMileage() %></td>
                                    <td><%= reservation.getMessage() %></td>
                                    <td>
                                        <!-- Add a delete button and a hidden input field to store the reservation ID -->
                                        <input type="hidden" name="bookingID" value="<%= reservation.getBookingid() %>">
                                        <button type="submit" class="delete" onclick="return confirmDelete();">Delete</button>
                                    </td>
                                </tr>
                                <%
                                        }
                                    }
                                %>

                                </tbody>
                            </table>
                            </form>
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


<%--
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vehicle_service_reservation_App</title>
    <link href="css/index.css" rel="stylesheet">
</head>
<body>
<section class="login">
    <div class="container1">
        <div class="app-name"><h1>View reservations</h1></div>
        <div class="content">
            <form action="DeleteReservationServlet" method="post"> <!-- Specify the action URL and method for the deletion -->
                <table class="table">
                    <tr>
                        <th><h3>Date</h3></th>
                        <th><h3>Time</h3></th>
                        <th><h3>Location</h3></th>
                        <th><h3>Registration Number</h3></th>
                        <th><h3>Mileage</h3></th>
                        <th><h3>Message</h3></th>
                        <th><h3>Cancel</h3></th>
                    </tr>
                    <%
                        List<Reservation> reservations = (List<Reservation>) request.getAttribute("reservations");
                        if (reservations != null) {
                            for (Reservation reservation : reservations) {
                    %>
                    <tr>
                        <td><%= reservation.getDate() %></td>
                        <td><%= reservation.getTime() %></td>
                        <td><%= reservation.getLocation() %></td>
                        <td><%= reservation.getVehicleNo() %></td>
                        <td><%= reservation.getMileage() %></td>
                        <td><%= reservation.getMessage() %></td>
                        <td>
                            <!-- Add a delete button and a hidden input field to store the reservation ID -->
                            <input type="hidden" name="bookingID" value="<%= reservation.getBookingid() %>">
                            <button type="submit" class="delete" onclick="return confirmDelete();">Delete</button>
                        </td>
                    </tr>
                    <%
                            }
                        }
                    %>
                </table>
            </form>
            <a href="home.jsp"><h3 class="btn" style=" margin-left: 30rem; margin-right: 30rem;">Back to Home</h3></a>
        </div>
    </div>
    <div class="text">
        <span>Copyright &copy; 2023 | Pathum Sanjana</span>
    </div>
</section>


<script>
    function confirmDelete() {
        return confirm("Are you sure you want to delete this reservation?");
    }
</script>
</body>
</html>--%>
