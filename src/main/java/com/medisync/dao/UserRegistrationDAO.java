package com.medisync.dao;

import com.medisync.model.UserDetails;
import com.medisync.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UserRegistrationDAO {
    public boolean register(UserDetails u) {
        try (Connection conn = DBConnection.getConnection()) {
            // Insert into personal_details
            String sql1 = "INSERT INTO personal_details (full_name, dob, email, phone, gender, username, password) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt1 = conn.prepareStatement(sql1);
            stmt1.setString(1, u.getFullName());
            stmt1.setString(2, u.getDob());
            stmt1.setString(3, u.getEmail());
            stmt1.setString(4, u.getPhone());
            stmt1.setString(5, u.getGender());
            stmt1.setString(6, u.getUsername());
            stmt1.setString(7, u.getPassword());

            // Insert into users
            String sql2 = "INSERT INTO users (username, password) VALUES (?, ?)";
            PreparedStatement stmt2 = conn.prepareStatement(sql2);
            stmt2.setString(1, u.getUsername());
            stmt2.setString(2, u.getPassword());

            return stmt1.executeUpdate() > 0 && stmt2.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
