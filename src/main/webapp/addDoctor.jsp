<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Doctor</title>
    <link rel="stylesheet" href="css/addDoctor.css">
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

<!-- Heading -->
<h2 style="margin: 40px; color: #4b0082;">Our Next Hope</h2>

<!-- Form and Image Row -->
<div style="display: flex; justify-content: space-between; padding: 0 60px; gap: 50px; margin-top: 20px; flex-wrap: wrap;">
    
    <!-- Form Card -->
    <div class="login-box styled-card" style="flex: 1 1 50%;">
        <h2 style="color: #1E3A8A;">Add New Doctor</h2>
        <form action="AddDoctor" method="post">
            <input type="text" name="name" placeholder="Name" required>
            <input type="number" name="age" placeholder="Age" required>
            <select name="gender" required>
                <option value="">Select Gender</option>
                <option>Male</option>
                <option>Female</option>
                <option>Other</option>
            </select>
            <input type="text" name="phone" placeholder="Phone" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="text" name="address" placeholder="Address" required>
            <input type="text" name="specialization" placeholder="Specialization" required>
            <input type="text" name="qualification" placeholder="Qualification" required>
            <input type="number" name="experience" placeholder="Years of Experience" required>
            <input type="submit" value="Add Doctor">
        </form>
    </div>

    <!-- Right Image -->
    <div style="flex: 1 1 40%; text-align: center;">
        <img src="images/doctor-add.png" alt="Doctor Illustration" style="max-width: 100%; border-radius: 12px;">
    </div>
</div>

<!-- Footer -->
<footer>
    <div>Contact us: info@medisync.com</div>
</footer>
</body>
</html>
