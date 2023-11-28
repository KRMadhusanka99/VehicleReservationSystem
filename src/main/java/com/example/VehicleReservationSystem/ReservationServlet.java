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

import io.asgardeo.java.saml.sdk.util.SSOAgentConstants;
import io.asgardeo.java.saml.sdk.bean.LoggedInSessionBean;
import io.asgardeo.java.saml.sdk.bean.LoggedInSessionBean.SAML2SSO;

/**
 * Servlet implementation class ReservationServlet
 */
@WebServlet("/reservation")
public class ReservationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /*// Retrieve the CSRF token from the session
        String csrfTokenFromSession = (String) request.getSession().getAttribute("csrfToken");

        // Retrieve the CSRF token from the form submission
        String csrfTokenFromForm = request.getParameter("csrfToken");

        // Check if the CSRF tokens match
        if (csrfTokenFromSession == null || csrfTokenFromForm == null || !csrfTokenFromSession.equals(csrfTokenFromForm)) {
            // CSRF token mismatch, handle the error (you might want to redirect to an error page)
            response.sendRedirect("error.jsp");
            return;
        }*/

        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String location = request.getParameter("location");
        String vehicle_no = request.getParameter("registrationNumber");
        String mileage = request.getParameter("currentMileage");
        String message = request.getParameter("message");
        String uname = request.getParameter("username");
        //String email = request.getParameter("email");
        //String phone = request.getParameter("contactNumber");
        RequestDispatcher dispatcher = null;
        Connection con = null;

        // Retrieve the session bean.
        LoggedInSessionBean sessionBean = (LoggedInSessionBean) request.getSession().getAttribute(SSOAgentConstants.SESSION_BEAN_NAME);
        // SAML response
        SAML2SSO samlResponse = sessionBean.getSAML2SSO();
        // Authenticated username
        String userName = samlResponse.getSubjectId();

        if(date.isEmpty() || time.isEmpty() || location.isEmpty() || vehicle_no.isEmpty() || mileage.isEmpty() || message.isEmpty() || uname.isEmpty()) {
            RequestDispatcher dispatcher1 = request.getRequestDispatcher("reservation.jsp");
            request.setAttribute("status", "empty");
            dispatcher1.forward(request, response);
            return;
        }
        if(!uname.equals(userName)){
            RequestDispatcher dispatcher1 = request.getRequestDispatcher("reservation.jsp");
            request.setAttribute("status", "invaliduser");
            dispatcher1.forward(request, response);
            return;
        }
        if(!vehicle_no.matches("[A-Z]{2}[0-9]{4}")) {
            RequestDispatcher dispatcher1 = request.getRequestDispatcher("reservation.jsp");
            request.setAttribute("status", "invalidno");
            dispatcher1.forward(request, response);
            return;
        }
        if(!mileage.matches("[0-9]+")) {
            RequestDispatcher dispatcher1 = request.getRequestDispatcher("reservation.jsp");
            request.setAttribute("status", "invalidmileage");
            dispatcher1.forward(request, response);
            return;
        }
        if(!message.matches("[a-zA-Z0-9 ]+")) {
            RequestDispatcher dispatcher1 = request.getRequestDispatcher("reservation.jsp");
            request.setAttribute("status", "invalidmessage");
            dispatcher1.forward(request, response);
            return;
        }
        if(!date.matches("[0-9]{4}-[0-9]{2}-[0-9]{2}")) {
            RequestDispatcher dispatcher1 = request.getRequestDispatcher("reservation.jsp");
            request.setAttribute("status", "invaliddate");
            dispatcher1.forward(request, response);
            return;
        }
        if(!time.matches("[0-9]{2}:[0-9]{2}")) {
            RequestDispatcher dispatcher1 = request.getRequestDispatcher("reservation.jsp");
            request.setAttribute("status", "invalidtime");
            dispatcher1.forward(request, response);
            return;
        }
        if(!location.matches("[a-zA-Z0-9]+")) {
            RequestDispatcher dispatcher1 = request.getRequestDispatcher("reservation.jsp");
            request.setAttribute("status", "invalidlocation");
            dispatcher1.forward(request, response);
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://172.187.178.153:3306/isec_assessment2?useSSL=false","isec","EUHHaYAmtzbv");
            //con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/isec_assessment2?useSSL=false","root","mysql");
            PreparedStatement pst = con.prepareStatement("insert into vehicle_service(username,date,time,location,vehicle_no,mileage,message) values(?,?,?,?,?,?,?)");
            //PreparedStatement pst = con.prepareStatement("insert into vehicle_service(username,email,phone,date,time,location,vehicle_no,mileage,message) values(?,?,?,?,?,?,?,?,?)");

            pst.setString(2, date);
            pst.setString(3, time);
            pst.setString(4, location);
            pst.setString(5, vehicle_no);
            pst.setString(6, mileage);
            pst.setString(7, message);
            pst.setString(1, uname);
            //pst.setString(2, email);
            //pst.setString(3, phone);

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