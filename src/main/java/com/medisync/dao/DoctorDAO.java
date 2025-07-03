package com.medisync.dao;

import com.medisync.model.Doctor;
import com.medisync.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DoctorDAO {

    public List<Doctor> getAllDoctors() {
        List<Doctor> list = new ArrayList<>();
        String sql = "SELECT * FROM doctors";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Doctor d = new Doctor();
                d.setId(rs.getInt("id"));
                d.setName(rs.getString("name"));
                d.setAge(rs.getInt("age"));
                d.setGender(rs.getString("gender"));
                d.setPhone(rs.getString("phone"));
                d.setEmail(rs.getString("email"));
                d.setAddress(rs.getString("address"));
                d.setSpecialization(rs.getString("specialization"));
                d.setQualification(rs.getString("qualification"));
                d.setYearsOfExperience(rs.getInt("years_of_experience"));
                list.add(d);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public void deleteDoctor(int id) {
        String sql = "DELETE FROM doctors WHERE id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void insertDoctor(Doctor doc) {
        String sql = "INSERT INTO doctors (name, age, gender, phone, email, address, specialization, qualification, years_of_experience) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, doc.getName());
            stmt.setInt(2, doc.getAge());
            stmt.setString(3, doc.getGender());
            stmt.setString(4, doc.getPhone());
            stmt.setString(5, doc.getEmail());
            stmt.setString(6, doc.getAddress());
            stmt.setString(7, doc.getSpecialization());
            stmt.setString(8, doc.getQualification());
            stmt.setInt(9, doc.getYearsOfExperience());

            stmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
