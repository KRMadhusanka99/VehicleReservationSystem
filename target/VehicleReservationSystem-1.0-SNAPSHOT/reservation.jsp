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
            <form action="/reservation" method="post">

                <div class="form-group row">
                    <label for="username" class="col-sm-2 col-form-label">Username</label>
                    <div class="col-sm-7">
                        <input id="username" type="text" class="form-control" name="username"
                               placeholder="Enter username">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">Name</label>
                    <div class="col-sm-7">
                        <input id="name" type="text" class="form-control" name="name"
                               placeholder="Enter your name">
                    </div>
                </div>

                <div class=" form-group row">
                    <label for="email" class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-7">
                        <input id="email" type="email" class="form-control" name="email"
                               placeholder="Enter your email">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="contactNumber" class="col-sm-2 col-form-label">Contact Number</label>
                    <div class="col-sm-7">
                        <input id="contactNumber" type="tel" class="form-control" name="contactNumber"
                               placeholder="Enter your contact">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="date" class="col-sm-2 col-form-label">Date</label>
                    <div class="col-sm-7">
                        <input id="date" type="date" class="form-control" name="date">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="time" class="col-sm-2 col-form-label">Preferred time</label>
                    <div class="col-sm-7">
                        <select id="time" class="form-control" name="time">
                            <option value="">Select Time</option>
                            <option value="10 AM">10 AM</option>
                            <option value="11 AM">11 AM</option>
                            <option value="12 PM">12 PM</option>
                        </select>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="location" class="col-sm-2 col-form-label">Preferred location</label>
                    <div class="col-sm-7">
                        <select id="location" class="form-control" name="location">
                                <option value="">Select district</option>
                                <option value="Ampara">Ampara District</option>
                                <option value="Anuradhapura">Anuradhapura District</option>
                                <option value="Badulla">Badulla District</option>
                                <option value="Batticaloa">Batticaloa District</option>
                                <option value="Colombo">Colombo District</option>
                                <option value="Galle">Galle District</option>
                                <option value="Gampaha">Gampaha District</option>
                                <option value="Hambantota">Hambantota District</option>
                                <option value="Jaffna">Jaffna District</option>
                                <option value="Kalutara">Kalutara District</option>
                                <option value="Kandy">Kandy District</option>
                                <option value="Kegalle">Kegalle District</option>
                                <option value="Kilinochchi">Kilinochchi District</option>
                                <option value="Mannar">Mannar District</option>
                                <option value="Matale">Matale District</option>
                                <option value="Matara">Matara District</option>
                                <option value="Monaragala">Monaragala District</option>
                                <option value="Mullaitivu">Mullaitivu District</option>
                                <option value="Nuwara Eliya ">Nuwara Eliya District</option>
                                <option value="Polonnaruwa">Polonnaruwa District</option>
                                <option value="Puttalam">Puttalam District</option>
                                <option value="Ratnapura">Ratnapura district</option>
                                <option value="Trincomalee">Trincomalee District</option>
                                <option value="Vavuniya">Vavuniya District</option>
                        </select>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="registrationNumber" class="col-sm-2 col-form-label">Vehicle Registration Number</label>
                    <div class="col-sm-7">
                        <input id="registrationNumber"  type="text" class="form-control" name="registrationNumber"
                               placeholder="Enter vehicle registration number">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="currentMileage" class="col-sm-2 col-form-label">Current Mileage</label>
                    <div class="col-sm-7">
                        <input id="currentMileage" type="number" class="form-control" name="currentMileage"
                               placeholder="Enter current mileage">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="message" class="col-sm-2 col-form-label">Message</label>
                    <div class="col-sm-7">
                        <textarea id="message" type="text" class="form-control" name="message"
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
