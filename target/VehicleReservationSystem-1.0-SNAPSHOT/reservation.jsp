<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/3/2023
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Vehicle Reservation</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Service Reservation</h1>
    <div class="card">
        <div class="card-body">
            <form action="<%=request.getContextPath()%>/register" method="post">

                <div class="form-group row">
                    <label for="username" class="col-sm-2 col-form-label">Username</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" name="username"
                               placeholder="Enter username">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">Name</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" name="name"
                               placeholder="Enter your name">
                    </div>
                </div>

                <div class=" form-group row">
                    <label for="email" class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-7">
                        <input type="email" class="form-control" name="email"
                               placeholder="Enter your email">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="contactNumber" class="col-sm-2 col-form-label">Contact Number</label>
                    <div class="col-sm-7">
                        <input type="tel" class="form-control" name="contactNumber"
                               placeholder="Enter your contact">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="date" class="col-sm-2 col-form-label">Date</label>
                    <div class="col-sm-7">
                        <input type="date" class="form-control" name="date">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="time" class="col-sm-2 col-form-label">Preferred time</label>
                    <div class="col-sm-7">
                        <select id="time" class="form-control" name="time">
                            <option value="">Select Time</option>
                            <option value="10">10 AM</option>
                            <option value="11">11 AM</option>
                            <option value="12">12 AM</option>
                        </select>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="location" class="col-sm-2 col-form-label">Preferred location</label>
                    <div class="col-sm-7">
                        <select id="district" class="form-control" name="district">
                                <option value="">Select district</option>
                                <option value="52">Ampara District</option>
                                <option value="71">Anuradhapura District</option>
                                <option value="81">Badulla District</option>
                                <option value="51">Batticaloa District</option>
                                <option value="11">Colombo District</option>
                                <option value="31">Galle District</option>
                                <option value="12">Gampaha District</option>
                                <option value="33">Hambantota District</option>
                                <option value="41">Jaffna District</option>
                                <option value="13">Kalutara District</option>
                                <option value="21">Kandy District</option>
                                <option value="92">Kegalle District</option>
                                <option value="42">Kilinochchi District</option>
                                <option value="43">Mannar District</option>
                                <option value="22">Matale District</option>
                                <option value="32">Matara District</option>
                                <option value="82">Monaragala District</option>
                                <option value="45">Mullaitivu District</option>
                                <option value="23">Nuwara Eliya District</option>
                                <option value="72">Polonnaruwa District</option>
                                <option value="62">Puttalam District</option>
                                <option value="91">Ratnapura district</option>
                                <option value="53">Trincomalee District</option>
                                <option value="44">Vavuniya District</option>
                        </select>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="registrationNumber" class="col-sm-2 col-form-label">Vehicle Registration Number</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" name="registrationNumber"
                               placeholder="Enter vehicle registration number">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="currentMileage" class="col-sm-2 col-form-label">Current Mileage</label>
                    <div class="col-sm-7">
                        <input type="number" class="form-control" name="currentMileage"
                               placeholder="Enter current mileage">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="message" class="col-sm-2 col-form-label">Message</label>
                    <div class="col-sm-7">
                        <textarea type="text" class="form-control" name="message"
                                  placeholder="Enter your message"></textarea>
                    </div>
                </div>

                <button type="submit" onclick="window.location.href=''" class="btn btn-primary">Register</button>
                <button type="submit" onclick="window.location.src='.home.jsp'" class="btn btn-primary" >Back to home</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
