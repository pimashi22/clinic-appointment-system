<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Appointment</title>
    <link rel="stylesheet" href="css/appointment.css">
</head>
<body class="dark-purple">

<!-- Background Image -->
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

<!-- Booking Section -->
<div class="outer-box">
    <div class="square-pattern"></div>
    <div class="square-pattern second"></div>
    <div class="square-pattern third"></div>

    <h2 class="appointment-heading">Book Your Appointment Now</h2>
    <p class="appointment-subtext">Schedule your consultation with ease. Your care starts here.</p>

    <div class="form-card">
        <form action="BookAppointment" method="post">
            <input type="text" name="fullName" placeholder="Full Name" required>
            <input type="text" name="username" placeholder="Username" required>

            <select name="gender" required>
                <option value="">Select Gender</option>
                <option>Male</option>
                <option>Female</option>
                <option>Other</option>
            </select>

            <input type="number" name="age" placeholder="Age" required>
            <input type="text" name="phone" placeholder="Phone Number" required>
            <input type="text" name="address" placeholder="Address" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="date" name="date" required>

            <select name="timeSlot" required>
                <option value="">Preferred Time Slot</option>
                <option>9:00 AM - 11:00 AM</option>
                <option>11:00 AM - 1:00 PM</option>
                <option>2:00 PM - 4:00 PM</option>
                <option>4:00 PM - 6:00 PM</option>
            </select>

            <textarea name="reason" placeholder="Reason for Visit" required></textarea>

            <div class="checkbox-group">
                <label><input type="checkbox" required> I confirm that the information provided is accurate</label>
                <label><input type="checkbox" required> I agree to the clinic's cancellation and privacy policies</label>
            </div>

            <input type="submit" value="Submit Appointment">
        </form>
    </div>
</div>

<!-- Footer -->
<footer>
    <div>Contact us: info@medisync.com</div>
</footer>

</body>
</html>
