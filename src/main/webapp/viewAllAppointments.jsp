<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.List, com.medisync.model.Appointment" %>
<%
    List<Appointment> allAppointments = (List<Appointment>) session.getAttribute("allAppointments");
    String message = request.getParameter("msg");
%>
<!DOCTYPE html>
<html>
<head>
    <title>All Appointments</title>
    <link rel="stylesheet" href="css/viewAppointments.css">
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
    </nav>
</header>

<!-- Page Title -->
<h2 class="page-title">All Available Appointments</h2>

<!-- Optional Message -->
<% if (message != null) { %>
    <div class="message"><%= message %></div>
<% } %>

<!-- Appointment Table -->
<div class="table-container">
    <table>
        <thead>
            <tr>
                <th>Full Name</th>
                <th>Username</th>
                <th>Gender</th>
                <th>Age</th>
                <th>Phone</th>
                <th>Address</th>
                <th>Email</th>
                <th>Date</th>
                <th>Time Slot</th>
                <th>Reason</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% if (allAppointments != null) {
                for (Appointment appt : allAppointments) { %>
                <tr>
                    <td><%= appt.getFullName() %></td>
                    <td><%= appt.getUsername() %></td>
                    <td><%= appt.getGender() %></td>
                    <td><%= appt.getAge() %></td>
                    <td><%= appt.getPhone() %></td>
                    <td><%= appt.getAddress() %></td>
                    <td><%= appt.getEmail() %></td>
                    <td><%= appt.getAppointmentDate() %></td>
                    <td><%= appt.getTimeSlot() %></td>
                    <td><%= appt.getReason() %></td>
                    <td style="white-space: nowrap;">
                        <!-- Confirm Button -->
                        <form action="ViewAllAppointments" method="post" style="display:inline-block; margin-right: 8px;">
					        <input type="hidden" name="id" value="<%= appt.getId() %>">
					        <input type="hidden" name="action" value="confirm">
					        <button type="submit" class="confirm-btn">Confirm</button>
					    </form>

                        <!-- Delete Button -->
                        <form action="ViewAllAppointments" method="post" style="display:inline-block;">
					        <input type="hidden" name="id" value="<%= appt.getId() %>">
					        <input type="hidden" name="action" value="delete">
					        <button type="submit" class="delete-btn">Delete</button>
					    </form>
                    </td>
                </tr>
            <% } } %>
        </tbody>
    </table>
</div>

<!-- Admin Dashboard Button -->
<div class="dashboard-link">
    <a href="adminDashboard.jsp" class="btn">Admin Dashboard</a>
</div>

<!-- Footer -->
<footer>
    <div>Contact us: info@medisync.com</div>
</footer>

</body>
</html>
