<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("index.jsp?error=Please+login+first");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Patient Dashboard</title>
    <link rel="stylesheet" href="css/dashboard.css">
</head>
<body class="dark-purple">

<!-- Background Image -->
<div class="background"></div>

<!-- Header -->
<header>
    <div class="logo">MediSync <img src="images/logo.jpg" alt="Logo" class="logo-icon"></div>
    <nav>
    	<a href="index.jsp">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="faq.jsp">FAQ</a>
        <a href="admin.jsp">Admin</a>
        <a href="signUp.jsp">Sign In</a>
    </nav>
</header>

<!-- Dashboard Bar -->
<div class="dashboard-bar">
    <div class="dashboard-title">Patient Dashboard</div>
</div>

<!-- Welcome Message (Cleaned up) -->
<div class="welcome-row">
    <h1 class="welcome-message">Welcome <%= username %>!</h1>
    <form action="ViewPersonalDetailsServlet" method="get">
    	<button class="personal-btn">Personal Details</button>
    </form>
</div>

<!-- Dashboard Content -->
<div class="dashboard-content">
    <!-- Left Buttons -->
    <div class="left-panel">
    <form action="bookAppointment.jsp" method="get">
        <button type="submit">Book an Appointment</button>
    </form>
    <div class="button-spacer"></div>
    <form action="ViewAppointments" method="get">
    <button type="submit">View Upcoming Appointments</button>
</form>

</div>


    <!-- Right Image -->
    <div class="right-panel">
        <img src="images/dashboard-visual.jpg" alt="Dashboard Visual">
    </div>
</div>

<!-- Why Choose Us -->
<div class="why-section-box fancy-box">
    <h2 class="section-title">Why You Choose Us</h2>
    <p>
        MediSync delivers an unmatched digital healthcare experience built around you. With one-click appointment booking,
        secure record access, and real-time notifications, our system is trusted by leading clinics for speed, reliability,
        and data protection. Our platform minimizes wait times, removes paperwork chaos, and empowers patients to manage
        their health anywhere, anytime. Whether you're a first-time user or returning for a follow-up, we ensure your
        experience is smooth, simple, and secure. Because your care journey deserves a system that cares just as much.
    </p>
</div>

<!-- Thank You Message -->
<div class="thank-you">
    <h1>Thank you for choosing us</h1>
</div>

<!-- Footer -->
<footer>
    <div>Contact us: info@medisync.com</div>
    <div class="socials">
        <a href="#">Facebook</a> |
        <a href="#">Twitter</a> |
        <a href="#">LinkedIn</a>
    </div>
</footer>

</body>
</html>
