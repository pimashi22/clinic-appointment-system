package com.medisync.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3307/medsync?useSSL=false";
    private static final String USER = "root";
    private static final String PASSWORD = "Pn2002@";

    public static Connection getConnection() throws SQLException {
        try {
            // Use older driver for MySQL 5.x
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC driver not found.", e);
        }
        return DriverManager.getConnection(JDBC_URL, USER, PASSWORD);
    }

    // Optional: a small test method to check the connection
    public static void main(String[] args) {
        try (Connection conn = getConnection()) {
            if (conn != null) {
                System.out.println("✅ Connection successful!");
            } else {
                System.out.println("❌ Connection failed!");
            }
        } catch (SQLException e) {
            System.out.println("❌ Error: " + e.getMessage());
        }
    }
}
