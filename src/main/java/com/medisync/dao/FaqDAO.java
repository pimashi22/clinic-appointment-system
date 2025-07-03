package com.medisync.dao;

import com.medisync.model.Faq;
import com.medisync.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FaqDAO {

    // Save FAQ to database
    public boolean save(Faq faq) {
        String sql = "INSERT INTO faq (question, answer, category, priority, keywords, created_by) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, faq.getQuestion());
            stmt.setString(2, faq.getAnswer());
            stmt.setString(3, faq.getCategory());
            stmt.setString(4, faq.getPriority());
            stmt.setString(5, faq.getKeywords());
            stmt.setString(6, faq.getCreated_by());

            return stmt.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // Get all FAQs from the database
    public List<Faq> getAllFaqs() {
        List<Faq> list = new ArrayList<>();
        String sql = "SELECT question, answer FROM faq ORDER BY id DESC";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                list.add(new Faq(rs.getString("question"), rs.getString("answer")));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
