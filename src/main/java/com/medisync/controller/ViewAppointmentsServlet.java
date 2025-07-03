package com.medisync.controller;

import com.medisync.dao.AppointmentDAO;
import com.medisync.model.Appointment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/ViewAppointments")
public class ViewAppointmentsServlet extends HttpServlet {
    private final AppointmentDAO appointmentDAO = new AppointmentDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("username") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String username = (String) session.getAttribute("username");
        List<Appointment> appointments = appointmentDAO.getAppointmentsByUsername(username);
        request.setAttribute("appointments", appointments);
        request.getRequestDispatcher("viewAppointments.jsp").forward(request, response);
    }
}
