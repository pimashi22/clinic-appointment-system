<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.List, com.medisync.model.Doctor" %>
<%
    List<Doctor> doctors = (List<Doctor>) session.getAttribute("doctorList");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Doctors</title>
    <link rel="stylesheet" href="css/doctors.css">
</head>
<body class="dark-purple">
<div class="background"></div>

<header>
    <div class="logo">MediSync <img src="images/logo.jpg" class="logo-icon"></div>
    <nav>
    	<a href="index.jsp">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="faq.jsp">FAQ</a>
        <a href="admin.jsp">Admin</a>
        
    </nav>
</header>

<!-- Hero Row -->
<div class="doctor-hero">
    <div class="doctor-text">
        <h2>We are your health</h2>
        <p>Our team of expert medical professionals is here to provide world-class care and support. With a diverse range of specialties, we ensure your health is in the best hands.</p>
    </div>
    <div class="doctor-image">
        <img src="images/doctor-team.jpeg" alt="Doctor Team">
    </div>
</div>

<h2 class="table-heading">All the Available Doctors</h2>

<div class="doctor-table-box">
    <table>
        <thead>
            <tr>
                <th>Name</th><th>Age</th><th>Gender</th><th>Phone</th><th>Email</th><th>Address</th><th>Specialization</th><th>Qualification</th><th>Experience</th><th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%
                if (doctors != null) {
                    for (Doctor d : doctors) {
            %>
            <tr>
                <td><%= d.getName() %></td>
                <td><%= d.getAge() %></td>
                <td><%= d.getGender() %></td>
                <td><%= d.getPhone() %></td>
                <td><%= d.getEmail() %></td>
                <td><%= d.getAddress() %></td>
                <td><%= d.getSpecialization() %></td>
                <td><%= d.getQualification() %></td>
                <td><%= d.getYearsOfExperience() %> yrs</td>
                <td>
                    <form action="Doctors" method="post">
					    <input type="hidden" name="id" value="<%= d.getId() %>">
					    <input type="hidden" name="action" value="delete">
					    <button type="submit" class="remove-btn">Remove</button>
					</form>

                </td>
            </tr>
            <% }} %>
        </tbody>
    </table>
</div>

<div class="add-doctor-btn">
    <a href="addDoctor.jsp" class="btn">Add Doctor</a>
    <a href="adminDashboard.jsp" class="btn">Admin Dashboard</a>
</div>

<footer>
    <div>Contact us: info@medisync.com</div>
</footer>
</body>
</html>
