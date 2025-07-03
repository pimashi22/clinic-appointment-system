package com.medisync.dao;

import com.medisync.model.Appointment;
import com.medisync.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AppointmentDAO {

    // Save a new appointment to the database
    public boolean save(Appointment appt) {
        String sql = "INSERT INTO appointments (full_name, username, gender, age, phone, address, email, appointment_date, time_slot, reason) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, appt.getFullName());
            stmt.setString(2, appt.getUsername());
            stmt.setString(3, appt.getGender());
            stmt.setInt(4, appt.getAge());
            stmt.setString(5, appt.getPhone());
            stmt.setString(6, appt.getAddress());
            stmt.setString(7, appt.getEmail());
            stmt.setString(8, appt.getAppointmentDate());
            stmt.setString(9, appt.getTimeSlot());
            stmt.setString(10, appt.getReason());

            return stmt.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // Get appointments by username
    public List<Appointment> getAppointmentsByUsername(String username) {
        List<Appointment> list = new ArrayList<>();
        String sql = "SELECT * FROM appointments WHERE username = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Appointment a = new Appointment(
                    rs.getString("full_name"),
                    rs.getString("username"),
                    rs.getString("gender"),
                    rs.getInt("age"),
                    rs.getString("phone"),
                    rs.getString("address"),
                    rs.getString("email"),
                    String.valueOf(rs.getDate("appointment_date")),
                    rs.getString("time_slot"),
                    rs.getString("reason")
                );
                a.setId(rs.getInt("id")); // set ID
                list.add(a);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // ✅ NEW: Get all appointments (admin view)
    public List<Appointment> getAllAppointments() {
        List<Appointment> list = new ArrayList<>();
        String sql = "SELECT * FROM appointments";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Appointment a = new Appointment(
                    rs.getString("full_name"),
                    rs.getString("username"),
                    rs.getString("gender"),
                    rs.getInt("age"),
                    rs.getString("phone"),
                    rs.getString("address"),
                    rs.getString("email"),
                    String.valueOf(rs.getDate("appointment_date")),
                    rs.getString("time_slot"),
                    rs.getString("reason")
                );
                a.setId(rs.getInt("id")); // include ID
                list.add(a);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // ✅ NEW: Delete appointment by ID
    public void deleteAppointment(int id) {
        String sql = "DELETE FROM appointments WHERE id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // ✅ OPTIONAL: Get a single appointment by ID (if needed)
    public Appointment getAppointmentById(int id) {
        String sql = "SELECT * FROM appointments WHERE id = ?";
        Appointment a = null;

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                a = new Appointment(
                    rs.getString("full_name"),
                    rs.getString("username"),
                    rs.getString("gender"),
                    rs.getInt("age"),
                    rs.getString("phone"),
                    rs.getString("address"),
                    rs.getString("email"),
                    String.valueOf(rs.getDate("appointment_date")),
                    rs.getString("time_slot"),
                    rs.getString("reason")
                );
                a.setId(rs.getInt("id"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return a;
    }
}
