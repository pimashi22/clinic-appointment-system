package com.medisync.controller;

import com.medisync.dao.AppointmentDAO;
import com.medisync.model.Appointment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/ViewAllAppointments")
public class ViewAllAppointmentsServlet extends HttpServlet {

    // Handles GET requests — load all appointments from DB
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        AppointmentDAO dao = new AppointmentDAO();
        List<Appointment> list = dao.getAllAppointments();

        // Store in session to use in JSP
        request.getSession().setAttribute("allAppointments", list);
        response.sendRedirect("viewAllAppointments.jsp");
    }

    // Handles POST requests — confirm or delete
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        int id = Integer.parseInt(request.getParameter("id"));

        AppointmentDAO dao = new AppointmentDAO();

        if ("delete".equals(action)) {
            dao.deleteAppointment(id);
            response.sendRedirect("ViewAllAppointments?msg=Appointment%20deleted%20successfully!");
        } else if ("confirm".equals(action)) {
            // Optional: could mark "confirmed" in DB — currently just a message
            response.sendRedirect("ViewAllAppointments?msg=Appointment%20confirmed%20successfully!");
        } else {
            response.sendRedirect("ViewAllAppointments?msg=Unknown%20action!");
        }
    }
}
