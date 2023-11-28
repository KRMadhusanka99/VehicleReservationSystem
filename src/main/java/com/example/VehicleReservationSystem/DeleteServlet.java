package com.example.VehicleReservationSystem;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
    private static final String JDBC_URL = "jdbc:mysql://172.187.178.153:3306/isec_assessment2";
    private static final String JDBC_USERNAME = "isec";
    private static final String JDBC_PASSWORD = "EUHHaYAmtzbv";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {




        // Get the bookingid from the request parameter
        String bookingid = request.getParameter("bookingID");

        if (bookingid != null) {
            // Validate bookingid
            if (isValidBookingId(bookingid)) {
                // Delete the reservation
                boolean deleted = deleteReservation(bookingid);

                if (deleted) {
                    // Reservation deleted successfully, you can redirect to a success page or update the reservation list
                    response.sendRedirect(request.getContextPath() + "/view");
                } else {
                    // Handle the case where deletion fails (e.g., display an error message)
                    response.getWriter().println("Failed to delete reservation.");
                }
            } else {
                // Handle the case where bookingid is not a valid integer
                response.getWriter().println("Invalid bookingid. Please provide a valid bookingid.");
            }
        } else {
            // Handle the case where bookingid is missing in the request
            response.getWriter().println("Invalid request.");
        }
    }

    // Method to validate bookingid as an integer
    private boolean isValidBookingId(String bookingid) {
        try {
            // Attempt to parse bookingid as an integer
            Integer.parseInt(bookingid);
            return true;
        } catch (NumberFormatException e) {
            // bookingid is not a valid integer
            return false;
        }
    }

    // Method to delete a reservation from the database
    private boolean deleteReservation(String bookingid) {
        try {
            // Load the JDBC driver and establish a connection to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);

            // Define a SQL query to delete the reservation
            String sql = "DELETE FROM vehicle_service WHERE booking_id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, bookingid);

            // Execute the query
            int rowsAffected = preparedStatement.executeUpdate();

            // Close the resources
            preparedStatement.close();
            connection.close();

            // Check if the deletion was successful
            return rowsAffected > 0;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false; // Deletion failed
        }
    }


}
/*
package com.example.VehicleReservationSystem;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String bookingid = request.getParameter("bookingID");
        //int booking_id = Integer.parseInt(bookingid);
        RequestDispatcher dispatcher = null;
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://172.187.178.153:3306/isec_assessment2?useSSL=false","isec","EUHHaYAmtzbv");
            //con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/isec_assessment2?useSSL=false","root","mysql");
            PreparedStatement pst = con.prepareStatement("DELETE from vehicle_service where booking_id = ?");
            //PreparedStatement pst = con.prepareStatement("insert into vehicle_service(username,email,phone,date,time,location,vehicle_no,mileage,message) values(?,?,?,?,?,?,?,?,?)");
            //System.out.println(bookingid);
            pst.setString(1, bookingid);

            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("viewReservation.jsp");
            if(rowCount>0) {
                request.setAttribute("status", "success");
            }else {
                request.setAttribute("status", "failed");
            }
            dispatcher.forward(request, response);
        }catch(Exception e) {
            e.printStackTrace();
        }finally {
            try {
                con.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

}
*/
