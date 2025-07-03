<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.medisync.model.PersonalDetails" %>
<%
    PersonalDetails user = (PersonalDetails) session.getAttribute("personalData");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Create or Update Account</title>
    <link rel="stylesheet" href="css/medisync.css">
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
        <a href="login.jsp">Sign In</a>
    </nav>
</header>

<div class="signup-container">
    <!-- Form box -->
    <div class="signup-form-box">
        <h2><%= (user != null) ? "Update Your Account" : "Create an Account" %></h2>

        <form action="SignUpServlet" method="post">
            <input type="hidden" name="isUpdate" value="<%= (user != null) ? "true" : "false" %>">

            <input type="text" name="fullName" placeholder="Full Name" value="<%= user != null ? user.getFullName() : "" %>" required>
            <input type="date" name="dob" value="<%= user != null ? user.getDob() : "" %>" required>
            <input type="email" name="email" placeholder="Email" value="<%= user != null ? user.getEmail() : "" %>" required>
            <input type="text" name="phone" placeholder="Phone Number" value="<%= user != null ? user.getPhone() : "" %>" required>

            <select name="gender" required>
                <option value="">Select Gender</option>
                <option <%= (user != null && "Male".equals(user.getGender())) ? "selected" : "" %>>Male</option>
                <option <%= (user != null && "Female".equals(user.getGender())) ? "selected" : "" %>>Female</option>
                <option <%= (user != null && "Other".equals(user.getGender())) ? "selected" : "" %>>Other</option>
            </select>

            <input type="text" name="username" placeholder="Username" value="<%= user != null ? user.getUsername() : "" %>" required readonly>
            <input type="password" name="password" placeholder="Password" required>
            <input type="password" name="confirmPassword" placeholder="Confirm Password" required>

            <input type="submit" value="<%= (user != null) ? "Update Details" : "Register" %>">
        </form>
    </div>

    <div class="signup-image">
        <img src="images/signup.jpg" alt="Sign Up">
    </div>
</div>

<!-- Footer -->
<footer>
    <div>Contact us: info@medisync.com</div>
</footer>

</body>
</html>
