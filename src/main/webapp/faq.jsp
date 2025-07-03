<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*, com.medisync.model.Faq" %>
<%@ page import="com.medisync.dao.FaqDAO" %>
<!DOCTYPE html>
<html>
<head>
    <title>FAQs</title>
    <link rel="stylesheet" href="css/faq.css">
</head>
<body class="dark-purple">
<div class="background"></div>

<!-- Header -->
<header>
    <div class="logo">MediSync <img src="images/logo.jpg" class="logo-icon"></div>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="admin.jsp">Admin</a>
        <a href="signUp.jsp">Sign In</a>
    </nav>
</header>

<!-- FAQ Section -->
<div class="faq-container">
    <h2 class="faq-heading">Our Most Reviewed Questions</h2>

    <!-- Begin shared ash box -->
    <div class="faq-box">
        
        <!-- Static FAQs -->
        <div class="accordion-item">
            <div class="accordion-title">1. How do I book an appointment?</div>
            <div class="accordion-content">Log in and click on "Book an Appointment" from your dashboard.</div>
        </div>

        <div class="accordion-item">
            <div class="accordion-title">2. Can I reschedule an appointment?</div>
            <div class="accordion-content">Yes. Cancel your current one and book a new slot.</div>
        </div>

        <div class="accordion-item">
            <div class="accordion-title">3. Is walk-in service available?</div>
            <div class="accordion-content">Walk-ins are accepted for emergencies only.</div>
        </div>

        <div class="accordion-item">
            <div class="accordion-title">4. What documents should I bring?</div>
            <div class="accordion-content">Bring your ID, previous prescriptions, and insurance details if applicable.</div>
        </div>

        <div class="accordion-item">
            <div class="accordion-title">5. How do I view my upcoming appointments?</div>
            <div class="accordion-content">Login and go to "View Upcoming Appointments" on your dashboard.</div>
        </div>

        <div class="accordion-item">
            <div class="accordion-title">6. Can I consult online?</div>
            <div class="accordion-content">Yes, online consultations are available for selected departments.</div>
        </div>

        <div class="accordion-item">
            <div class="accordion-title">7. How long does a typical appointment last?</div>
            <div class="accordion-content">Each session usually lasts around 15-30 minutes depending on the consultation.</div>
        </div>

        <div class="accordion-item">
            <div class="accordion-title">8. Are the doctors certified?</div>
            <div class="accordion-content">All our doctors are fully certified and experienced in their fields.</div>
        </div>

        <div class="accordion-item">
            <div class="accordion-title">9. What happens if I miss my appointment?</div>
            <div class="accordion-content">Missed appointments must be rescheduled. Cancellation policy may apply.</div>
        </div>

        <div class="accordion-item">
            <div class="accordion-title">10. How do I update my profile?</div>
            <div class="accordion-content">Go to "Personal Details" and click edit to update your information.</div>
        </div>

        <!-- Dynamically loaded FAQs -->
        <%
            FaqDAO dao = new FaqDAO();
            List<Faq> faqList = dao.getAllFaqs();
            int i = 11;
            for (Faq f : faqList) {
        %>
            <div class="accordion-item">
                <div class="accordion-title"><%= i++ %>. <%= f.getQuestion() %></div>
                <div class="accordion-content"><%= f.getAnswer() %></div>
            </div>
        <%
            }
        %>

    </div> <!-- end of .faq-box -->

</div>

<!-- Footer -->
<footer>
    <div>Contact us: info@medisync.com | +1-800-555-CLINIC</div>
</footer>

<!-- Accordion Script -->
<script>
    const items = document.querySelectorAll(".accordion-item");
    items.forEach(item => {
        const title = item.querySelector(".accordion-title");
        title.addEventListener("click", () => {
            const openItem = document.querySelector(".accordion-item.active");
            if (openItem && openItem !== item) {
                openItem.classList.remove("active");
            }
            item.classList.toggle("active");
        });
    });
</script>
</body>
</html>
