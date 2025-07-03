<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.medisync.model.PersonalDetails" %>
<%
    PersonalDetails user = (PersonalDetails) session.getAttribute("personalData");
    String fullName = user != null ? user.getFullName() : "";
%>
<!DOCTYPE html>
<html>
<head>
    <title>Your Profile</title>
    <link rel="stylesheet" href="css/medisync.css">
</head>
<body class="dark-purple">

<div class="background"></div>

<header>
    <div class="logo">MediSync <img src="images/logo.jpg" class="logo-icon"></div>
    <nav>
        <a href="about.jsp">About Us</a>
        <a href="faq.jsp">FAQ</a>
        <a href="admin.jsp">Admin</a>
        <a href="login.jsp">Sign In</a>
    </nav>
</header>

<div class="profile-container">

    <!-- Right User Icon & Full Name -->
    <div class="user-header">
        <img src="images/user.png" alt="User Icon" class="user-icon">
        <span class="username-label"><%= fullName %></span>
    </div>

    <!-- Profile Box -->
    <div class="profile-box" style="margin-top: 90px;">
        <h2>Personal Information</h2>
        <p><strong>Full Name:</strong> <%= user.getFullName() %></p>
        <p><strong>Date of Birth:</strong> <%= user.getDob() %></p>
        <p><strong>Email:</strong> <%= user.getEmail() %></p>
        <p><strong>Phone:</strong> <%= user.getPhone() %></p>
        <p><strong>Gender:</strong> <%= user.getGender() %></p>
        <p><strong>Username:</strong> <%= user.getUsername() %></p>

        <form action="signUp.jsp" method="get">
            <input type="submit" value="Edit" class="edit-btn">
        </form>
    </div>

    <form action="patientDashboard.jsp" method="get">
        <input type="submit" value="Patient Dashboard" class="dashboard-btn" style="margin-top: 60px;">
    </form>

</div>

<footer>
    <div>Contact us: info@medisync.com</div>
</footer>

</body>
</html>
