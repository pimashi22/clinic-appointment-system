<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add FAQ</title>
    <link rel="stylesheet" href="css/faqStyles.css">
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

<!-- Full-width top image -->
<div class="faq-banner">
    <img src="images/faq-banner.png" alt="FAQ banner">
</div>

<!-- FAQ Form Section -->
<div class="faq-add-wrapper">
    <div class="faq-left-images">
        <img src="images/faq-side1.jpg" class="faq-side-image">
        <img src="images/faq-side2.jpg" class="faq-side-image">
    </div>

    <div class="faq-form-box styled-card">
        <h2>Add New FAQ</h2>
        <form action="AddFaq" method="post">
            <input type="text" name="question" placeholder="Question" required>
            <textarea name="answer" placeholder="Answer" required></textarea>
            <input type="text" name="category" placeholder="Category (e.g. Appointment, Billing)">
            <input type="number" name="priority" placeholder="Priority (1-10)">
            <input type="text" name="keywords" placeholder="Keywords (comma separated)">
            <input type="text" name="created_by" placeholder="Your Name" required>
            <input type="submit" value="Submit FAQ">
        </form>

        <div class="form-actions">
            <a href="addFaq.jsp" class="btn blue-btn">Add Another FAQ</a>
            <a href="adminDashboard.jsp" class="btn purple-btn">Admin Dashboard</a>
        </div>
    </div>
</div>

<!-- Footer -->
<footer>
    <div>Contact us: info@medisync.com</div>
</footer>
</body>
</html>
