package com.example.VehicleReservationSystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ReservationServlet
 */
@WebServlet("/reservation")
public class ReservationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String location = request.getParameter("location");
        String vehicle_no = request.getParameter("registrationNumber");
        String mileage = request.getParameter("currentMileage");
        String message = request.getParameter("message");
        String uname = request.getParameter("username");
        RequestDispatcher dispatcher = null;
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://51.132.137.223:3306/isec_assessment2?useSSL=false","isec","EUHHaYAmtzbv");
            PreparedStatement pst = con.prepareStatement("insert into vehicle_service(date,time,location,vehicle_no,mileage,message,username) values(?,?,?,?,?,?,?)");

            pst.setString(1, date);
            pst.setString(2, time);
            pst.setString(3, location);
            pst.setString(4, vehicle_no);
            pst.setString(5, mileage);
            pst.setString(6, message);
            pst.setString(7, uname);

            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("reservation.jsp");
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