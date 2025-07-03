package com.medisync.controller;

import com.medisync.dao.DoctorDAO;
import com.medisync.model.Doctor;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/AddDoctor")
public class AddDoctorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Doctor doc = new Doctor();
        doc.setName(request.getParameter("name"));
        doc.setAge(Integer.parseInt(request.getParameter("age")));
        doc.setGender(request.getParameter("gender"));
        doc.setPhone(request.getParameter("phone"));
        doc.setEmail(request.getParameter("email"));
        doc.setAddress(request.getParameter("address"));
        doc.setSpecialization(request.getParameter("specialization"));
        doc.setQualification(request.getParameter("qualification"));
        doc.setYearsOfExperience(Integer.parseInt(request.getParameter("experience")));

        DoctorDAO dao = new DoctorDAO();
        dao.insertDoctor(doc);

        response.sendRedirect("Doctors");
    }
}
