<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.medisync.model.Appointment" %>
<%@ page import="java.util.List" %>
<%
    List<Appointment> appointments = (List<Appointment>) request.getAttribute("appointments");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Your Appointments</title>
    <link rel="stylesheet" href="css/styles.css">
    <style>
        .appointments-section {
		    width: 90%;
		    max-width: 1200px;
		    margin: 60px auto;
		    padding: 30px;
		    background-color: #bfbfbf; /* new ash color */
		    border-radius: 20px;
		    color: #1e1e1e; /* dark text for contrast */
		}


        .appointments-section h2 {
            text-align: center;
            margin-bottom: 30px;
            color: white;
        }

        .appointment-card {
            width: 45%;
            background-color: white;
            color: #333;
            padding: 20px;
            margin: 15px 2.5%;
            float: left;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .appointment-card h3 {
            color: #004c99;
            margin-bottom: 10px;
        }

        .appointment-container::after {
            content: "";
            display: table;
            clear: both;
        }

        .back-btn {
            float: right;
            margin-top: 40px;
            padding: 12px 20px;
            background-color: #4b0082;
            color: white;
            text-decoration: none;
            border-radius: 8px;
        }

        .back-btn:hover {
            background-color: #370062;
        }
    </style>
</head>
<body class="dark-purple">

<div class="background"></div>

<!-- Header -->
<header>
    <div class="logo">MediSync <img src="images/logo.jpg" class="logo-icon"></div>
    <nav>
    	<a href="index.jsp">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="faq.jsp">FAQ</a>
        <a href="admin.jsp">Admin</a>
        <a href="signUp.jsp">Sign In</a>
    </nav>
</header>

<div class="appointments-section">
    <h2>Your Current Appointments</h2>
    <div class="appointment-container">
        <%
            int count = 1;
            for (Appointment a : appointments) {
        %>
        <div class="appointment-card">
            <h3>Appointment <%= count++ %></h3>
            <p><strong>Full Name:</strong> <%= a.getFullName() %></p>
            <p><strong>Date:</strong> <%= a.getAppointmentDate() %></p>
            <p><strong>Time Slot:</strong> <%= a.getTimeSlot() %></p>
            <p><strong>Reason:</strong> <%= a.getReason() %></p>
        </div>
        <%
            }
            if (appointments == null || appointments.isEmpty()) {
        %>
            <p style="text-align: center;">No appointments found.</p>
        <%
            }
        %>
    </div>

    <a href="patientDashboard.jsp" class="back-btn">Patient Dashboard</a>
</div>

<!-- Footer -->
<footer>
    <div>Contact us: info@medisync.com</div>
</footer>

</body>
</html>
