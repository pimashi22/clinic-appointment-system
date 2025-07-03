package com.medisync.controller;

import com.medisync.dao.DoctorDAO;
import com.medisync.model.Doctor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/Doctors")
public class DoctorServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Doctor> list = new DoctorDAO().getAllDoctors();
        request.getSession().setAttribute("doctorList", list);
        response.sendRedirect("doctors.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        int id = Integer.parseInt(request.getParameter("id"));
        DoctorDAO dao = new DoctorDAO();

        if ("delete".equals(action)) {
            dao.deleteDoctor(id);
        }

        response.sendRedirect("Doctors"); // refresh list
    }
}
