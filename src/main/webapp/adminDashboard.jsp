<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    String adminUser = (session != null && session.getAttribute("adminUsername") != null)
                       ? (String) session.getAttribute("adminUsername")
                       : "Admin";
%>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="css/adminDashboard.css">
</head>
<body class="dashboard-body">

<!-- Background -->
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

<!-- Welcome Message -->
<div class="welcome-msg">
    <h2>Welcome, <%= adminUser %>!</h2>
</div>

<!-- Main Container -->
<div class="dashboard-content">
    <!-- Left Buttons -->
    <div class="left-panel">
        <button onclick="location.href='ViewAllAppointments'">View Appointments</button>
        <button onclick="location.href='Doctors'">Manage Doctors</button>
        <button onclick="location.href='addFaq.jsp'">Add FAQ</button>
    </div>

   <!-- Right Image Gallery -->
<div class="right-panel">
    <div class="gallery-box filled-gallery">
        <img src="images/clinic1.jpg">
        <img src="images/clinic2.jpeg">
        <img src="images/clinic3.jpeg">
        <img src="images/clinic4.jpg">
        <img src="images/clinic5.jpeg">
    </div>
</div>


</div>

<!-- Progress Section -->
<section class="progress-section">
    <h3>Our progress so far</h3>
    <div class="progress-gallery">
        <img src="images/progress1.png">
        <img src="images/progress2.png">
        <img src="images/progress3.png">
        <img src="images/progress4.jpeg">
    </div>
</section>

<!-- Footer -->
<footer>
    <div>Contact us: info@medisync.com</div>
</footer>

</body>
</html>
