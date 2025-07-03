package com.medisync.dao;

import com.medisync.model.PersonalDetails;
import com.medisync.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PersonalDetailsDAO {

    // ✅ Get user by username for display/edit
    public PersonalDetails getByUsername(String username) {
        PersonalDetails details = null;
        String sql = "SELECT * FROM personal_details WHERE username = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                details = new PersonalDetails(
                        rs.getString("full_name"),
                        rs.getString("dob"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("gender"),
                        rs.getString("username")
                );
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return details;
    }

    // ✅ Insert new personal details + users table entry
    public boolean insertPersonalDetails(PersonalDetails details, String password) {
        try (Connection conn = DBConnection.getConnection()) {
            String pdSql = "INSERT INTO personal_details (full_name, dob, email, phone, gender, username) VALUES (?, ?, ?, ?, ?, ?)";
            String userSql = "INSERT INTO users (username, password) VALUES (?, ?)";

            PreparedStatement stmt1 = conn.prepareStatement(pdSql);
            stmt1.setString(1, details.getFullName());
            stmt1.setString(2, details.getDob());
            stmt1.setString(3, details.getEmail());
            stmt1.setString(4, details.getPhone());
            stmt1.setString(5, details.getGender());
            stmt1.setString(6, details.getUsername());

            PreparedStatement stmt2 = conn.prepareStatement(userSql);
            stmt2.setString(1, details.getUsername());
            stmt2.setString(2, password);

            return stmt1.executeUpdate() > 0 && stmt2.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // ✅ Update existing personal details and password
    public boolean updatePersonalDetails(PersonalDetails details, String password) {
        try (Connection conn = DBConnection.getConnection()) {
            String updateSql = "UPDATE personal_details SET full_name=?, dob=?, email=?, phone=?, gender=? WHERE username=?";
            String updatePwd = "UPDATE users SET password=? WHERE username=?";

            PreparedStatement stmt1 = conn.prepareStatement(updateSql);
            stmt1.setString(1, details.getFullName());
            stmt1.setString(2, details.getDob());
            stmt1.setString(3, details.getEmail());
            stmt1.setString(4, details.getPhone());
            stmt1.setString(5, details.getGender());
            stmt1.setString(6, details.getUsername());

            PreparedStatement stmt2 = conn.prepareStatement(updatePwd);
            stmt2.setString(1, password);
            stmt2.setString(2, details.getUsername());

            return stmt1.executeUpdate() > 0 && stmt2.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
