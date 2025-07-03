<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>MediSync - Home</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body class="dark-purple">

<!-- Background Image -->
<div class="background"></div>

<!-- Header -->
<header>
    <div class="logo">
        MediSync
        <img src="images/logo.jpg" alt="Logo" class="logo-icon">
    </div>
    <nav>
    	<a href="index.jsp">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="faq.jsp">FAQ</a>
        <a href="admin.jsp">Admin</a>
        <a href="signUp.jsp">Sign In</a>
        
    </nav>
</header>

<!-- Main Content Row: Login | Achievements + Past -->
<div class="main-row">
    <!-- Left: Login Box -->
    <div class="login-box styled-card">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <label>Username</label><br/>
            <input type="text" name="username" required><br/>
            <label>Password</label><br/>
            <input type="password" name="password" required><br/>
            <input type="submit" value="Login">
        </form>
        <div class="error">
            <%= request.getParameter("error") != null ? request.getParameter("error") : "" %>
        </div>
    </div>

    <!-- Right: Achievements + Past -->
    <div class="info-box">
        <h2>Our Achievements</h2>
        <p>
            MediSync has transformed over 50 clinics by enabling seamless, real-time appointment booking, patient tracking, and follow-ups. 
            Our system has reduced scheduling conflicts by over 75%, enabled zero lost patient records through secure digital storage, and 
            helped doctors access patient history instantly. We've powered over 15,000 successful appointments and helped improve 
            patient satisfaction scores across the network.
        </p>

        <h2>Our Past</h2>
        <p>
            Before MediSync, most clinics depended on manual registers, sticky notes, and long queues. 
            Staff often struggled with double-booked schedules, misplaced records, and lack of follow-up tracking. 
            Recognizing this gap, we created MediSync with a mission to digitize and unify clinical operations. 
            Starting from a local pilot clinic, we gathered real feedback, evolved the system, and now provide an 
            all-in-one platform for bookings, records, and notifications — improving workflow and patient experience alike.
        </p>
    </div>
</div>

<!-- Slideshow -->
<section class="services">
    <h2>Our Services</h2>
    <div class="slideshow-container">
        <div class="slide fade">
            <img src="images/service1.jpg" alt="Service 1">
            <div class="caption">Appointment Scheduling</div>
        </div>
        <div class="slide fade">
            <img src="images/service2.jpeg" alt="Service 2">
            <div class="caption">Digital Patient Records</div>
        </div>
        <div class="slide fade">
            <img src="images/service3.jpeg" alt="Service 3">
            <div class="caption">Clinic Performance Analytics</div>
        </div>
    </div>
</section>

<!-- Footer -->
<footer>
    <div>Contact us: info@medisync.com</div>
    <div class="socials">
        <a href="#">Facebook</a> |
        <a href="#">Twitter</a> |
        <a href="#">LinkedIn</a>
    </div>
</footer>

<!-- Slideshow Script -->
<script>
let slideIndex = 0;
showSlides();
function showSlides() {
    const slides = document.getElementsByClassName("slide");
    for (let i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) { slideIndex = 1 }
    slides[slideIndex - 1].style.display = "block";
    setTimeout(showSlides, 1500);
}
</script>

</body>
</html>
