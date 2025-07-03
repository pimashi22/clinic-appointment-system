<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="css/admin.css">
</head>
<body class="admin-body">

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

<!-- Login Section -->
<div class="admin-login-container">
    <div class="admin-login-box">
        <img src="images/user.png" alt="Admin Icon" class="admin-icon">
        <form action="AdminLoginServlet" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Login">
        </form>
    </div>
</div>

<!-- Footer -->
<footer>
    <div>Contact us: info@medisync.com</div>
</footer>

</body>
</html>
