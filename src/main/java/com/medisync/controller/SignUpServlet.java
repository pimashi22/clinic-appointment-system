package com.medisync.controller;

import com.medisync.dao.PersonalDetailsDAO;
import com.medisync.model.PersonalDetails;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fullName = request.getParameter("fullName");
        String dob = request.getParameter("dob");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String isUpdate = request.getParameter("isUpdate");

        // simple password check
        if (!password.equals(confirmPassword)) {
            response.sendRedirect("signUp.jsp?error=passwordMismatch");
            return;
        }

        PersonalDetails details = new PersonalDetails(fullName, dob, email, phone, gender, username);
        PersonalDetailsDAO dao = new PersonalDetailsDAO();

        boolean success;
        if ("true".equals(isUpdate)) {
            success = dao.updatePersonalDetails(details, password); // pass password too
        } else {
            success = dao.insertPersonalDetails(details, password);
        }

        if (success) {
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("signUp.jsp?error=failed");
        }
    }
}
