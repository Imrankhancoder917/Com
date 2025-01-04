<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="CSS/contact.css">
</head>
<body>

    <!-- Header Section with Home Button -->
    <header class="header">
        <div class="container header-container">
            <!-- Home Button (Text Link) -->
            <a href="index.jsp" class="home-button">Home</a>
            <h1>Contact Us</h1>
            <p>We'd love to hear from you! Please send us your questions or feedback.</p>
        </div>
    </header>

    <!-- Contact Form Section -->
    <section class="contact-form-container">
        <div class="container">
            <form id="contact-form" class="contact-form" action="https://script.google.com/macros/s/your-script-id/exec" method="POST">
                <div class="form-group">
                    <label for="name">Your Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your name" required>
                </div>

                <div class="form-group">
                    <label for="email">Your Email</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email" required>
                </div>

                <div class="form-group">
                    <label for="subject">Subject</label>
                    <input type="text" id="subject" name="subject" placeholder="Message subject" required>
                </div>

                <div class="form-group">
                    <label for="message">Your Message</label>
                    <textarea id="message" name="message" rows="6" placeholder="Enter your message" required></textarea>
                </div>

                <button type="submit" class="submit-btn">Send Message</button>

                <p id="responseMessage" class="response-message"></p>
            </form>
        </div>
    </section>

    <!-- Footer Section -->
    <footer class="footer">
        <div class="container">
            <p>&copy; 2025 Your Hobby Lobby Website. All rights reserved.</p>
        </div>
    </footer>

</body>
</html>
