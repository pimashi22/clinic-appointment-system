package com.medisync.controller;

import com.medisync.dao.PersonalDetailsDAO;
import com.medisync.model.PersonalDetails;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/ViewPersonalDetailsServlet")
public class ViewPersonalDetailsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get username from session
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("username") != null) {
            String username = (String) session.getAttribute("username");

            // Retrieve data from DB
            PersonalDetailsDAO dao = new PersonalDetailsDAO();
            PersonalDetails details = dao.getByUsername(username);

            if (details != null) {
                session.setAttribute("personalData", details);
                response.sendRedirect("viewPersonalDetails.jsp");
            } else {
                response.sendRedirect("patientDashboard.jsp"); // or show "not found"
            }

        } else {
            response.sendRedirect("login.jsp");
        }
    }
}
