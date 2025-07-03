package com.medisync.controller;

import com.medisync.model.Appointment;
import com.medisync.service.AppointmentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/BookAppointment")
public class AppointmentServlet extends HttpServlet {
    private final AppointmentService service = new AppointmentService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String fullName = req.getParameter("fullName");
        String username = req.getParameter("username");
        String gender = req.getParameter("gender");
        int age = Integer.parseInt(req.getParameter("age"));
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        String email = req.getParameter("email");
        String date = req.getParameter("date");
        String timeSlot = req.getParameter("timeSlot");
        String reason = req.getParameter("reason");

        Appointment appt = new Appointment(fullName, username, gender, age, phone, address, email, date, timeSlot, reason);


        boolean success = service.book(appt);

        if (success) {
            res.sendRedirect("patientDashboard.jsp");
        } else {
            res.sendRedirect("bookAppointment.jsp?error=Booking Failed");
        }
    }
}
