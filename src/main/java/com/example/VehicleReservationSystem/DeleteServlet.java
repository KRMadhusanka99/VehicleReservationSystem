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
        int booking_id = Integer.parseInt(bookingid);
        RequestDispatcher dispatcher = null;
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://51.132.137.223:3306/isec_assessment2?useSSL=false","isec","EUHHaYAmtzbv");
            //con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/isec_assessment2?useSSL=false","root","mysql");
            PreparedStatement pst = con.prepareStatement("DELETE from vehicle_service where booking_id = ?");
            //PreparedStatement pst = con.prepareStatement("insert into vehicle_service(username,email,phone,date,time,location,vehicle_no,mileage,message) values(?,?,?,?,?,?,?,?,?)");

            pst.setInt(1, booking_id);

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
