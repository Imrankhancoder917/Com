<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your E-commerce Blog</title>
    <link rel="stylesheet" href="CSS/blog.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>

<!-- Header Section -->
<header class="header">
    <div class="logo">
        <img src="Image/blog.webp" alt="Logo">
    </div>
    <nav>
        <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="Shop.jsp">Shop</a></li>
            <li><a href="blog.jsp" class="active">Blog</a></li>
            <li><a href="About.jsp">About Us</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
    </nav>
</header>

<!-- Hero Section -->
<section class="hero">
    <div class="hero-content">
        <h1>Explore Our Latest Blog Posts</h1>
        <p>Stay updated with tips, trends, and exciting product releases!</p>
        <a href="#latest-posts" class="hero-button">Explore Blog</a>
    </div>
</section>

<!-- Main Blog Content -->
<main>
    <div class="container">
        <!-- Blog Posts -->
        <div id="latest-posts" class="blog-posts">
            <div class="blog-post">
                <img src="Image/iphone.jpg" alt="How to Choose the Perfect Product">
                <div class="post-content">
                    <h2><a href="#">How to Choose the Perfect Product</a></h2>
                    <p>Discover the best tips on selecting the right products based on your needs...</p>
                    <a href="#" class="btn read-more">Read More</a>
                </div>
            </div>

            <div class="blog-post">
                <img src="Image/lap1.jpg" alt="Top 5 Fashion Trends for 2025">
                <div class="post-content">
                    <h2><a href="#">Top 5 Fashion Trends for 2025</a></h2>
                    <p>Stay ahead with these cutting-edge fashion trends and styling tips...</p>
                    <a href="#" class="btn read-more">Read More</a>
                </div>
            </div>

            <div class="blog-post">
                <img src="Image/f.jpg" alt="The Best Gadgets of 2025">
                <div class="post-content">
                    <h2><a href="#">The Best Gadgets of 2025</a></h2>
                    <p>Discover the most innovative gadgets that will change the tech world...</p>
                    <a href="#" class="btn read-more">Read More</a>
                </div>
            </div>

            <div class="blog-post">
                <img src="Image/g.jpg" alt="Fashion Guide for Every Season">
                <div class="post-content">
                    <h2><a href="#">Fashion Guide for Every Season</a></h2>
                    <p>Learn how to style outfits for every season and stay chic all year...</p>
                    <a href="#" class="btn read-more">Read More</a>
                </div>
            </div>
        </div>

        <!-- Sidebar (Optional) -->
        <div class="sidebar">
            <div class="newsletter">
                <h3>Subscribe to Our Newsletter</h3>
                <form action="/subscribe" method="POST">
                    <input type="email" placeholder="Enter your email" required>
                    <button type="submit" class="btn subscribe">Subscribe</button>
                </form>
            </div>

            <div class="popular-posts">
                <h3>Popular Posts</h3>
                <ul>
                    <li><a href="#">Top Product Picks for 2025</a></li>
                    <li><a href="#">How to Style Your New Outfit</a></li>
                    <li><a href="#">Smart Home Gadgets You Need</a></li>
                    <li><a href="#">Sustainable Fashion for 2025</a></li>
                </ul>
            </div>
        </div>
    </div>
</main>

<!-- Footer Section -->
<footer>
    <div class="footer-content">
        
        <p>&copy; 2025 Your E-commerce Blog | All Rights Reserved</p>
        <div class="social-links">
            <a href="https://facebook.com" class="social-icon"><i class="fab fa-facebook"></i> Facebook</a>
            <a href="https://instagram.com" class="social-icon"><i class="fab fa-instagram"></i> Instagram</a>
            <a href="https://twitter.com" class="social-icon"><i class="fab fa-twitter"></i> Twitter</a>
        </div>
        <div class="footer-links">
            <a href="/terms">Terms & Conditions</a> | <a href="/privacy">Privacy Policy</a>
        </div>
    </div>
</footer>

<!-- Scroll to Top Button -->
<button class="scroll-to-top" onclick="window.scrollTo({top: 0, behavior: 'smooth'})">
    <i class="fas fa-arrow-up"></i> Back to Top
</button>

</body>
</html>
