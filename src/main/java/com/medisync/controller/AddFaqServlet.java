package com.medisync.controller;

import com.medisync.dao.FaqDAO;
import com.medisync.model.Faq;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/AddFaq")
public class AddFaqServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String question = request.getParameter("question");
        String answer = request.getParameter("answer");
        String category = request.getParameter("category");
        String priority = request.getParameter("priority");
        String keywords = request.getParameter("keywords");
        String created_by = request.getParameter("created_by");

        Faq faq = new Faq(question, answer, category, priority, keywords, created_by);

        FaqDAO dao = new FaqDAO();
        dao.save(faq);

        response.sendRedirect("faq.jsp"); // Redirect to FAQ page
    }
}
