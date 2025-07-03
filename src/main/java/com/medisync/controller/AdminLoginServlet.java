package com.medisync.controller;

import com.medisync.dao.AdminDAO;
import com.medisync.model.Admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Admin admin = new Admin(username, password);
        AdminDAO dao = new AdminDAO();

        if (dao.validateAdmin(admin)) {
            request.getSession().setAttribute("adminUsername", username);
            response.sendRedirect("adminDashboard.jsp"); // ⏩ Create this later
        } else {
            response.sendRedirect("admin.jsp?error=invalid");
        }
    }
}
