<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <title>About Us Page</title>
  
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: rgb(170, 169, 169);
      margin: 0;
      padding: 0;
    }

    .navbar {
      display: flex;
      width: 100%;
      box-shadow: 0 0 5px black;
      text-align: center;
      height: 40px;
      justify-content: center;
      align-items: center;
      font-size: 25px;
    }

    .wrapper {
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      background: rgb(223, 215, 215);
      margin: 10px auto;
      padding: 5px 30px;
      width: 800px;
      box-shadow: 0 0 5px black;
    }

    .hr {
      display: flex;
      align-items: center;
    }

    hr {
      width: 30px;
      height: 1px;
      background: black;
      margin: 0 15px;
    }

    h2 {
      font-size: 25px;
      font-weight: normal;
      text-transform: uppercase;
    }

    .mission-txt {
      font-size: 18px;
      font-weight: 500px;
      font-style: italic;
      margin-top: 0;
    }

    div img {
      width: 150px;
      filter: drop-shadow(0 10px 5px black);
    }

    p {
      text-align: justify;
    }

    .faculties {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
      padding: 20px;
    }

    .unit {
      margin: 25px;
      width: 200px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .unit img {
      border-radius: 100px;
      width: 150px;
      height: 150px;
      margin-bottom: 10px;
    }

    .unit p {
      text-align: left;
      margin: 2px;
    }

    .unit p:first-of-type {
      font-weight: bolder;
      margin-bottom: 5px;
    }

    .social-media {
      text-align: center;
      margin-top: 40px;
    }

    .social-media a {
      font-size: 30px;
      margin: 0 15px;
      text-decoration: none;
      color: black;
      transition: color 0.3s ease;
    }

    .social-media a:hover {
      color: #007bff; /* Blue color on hover */
    }

    .social-media .home-link {
      font-size: 30px;  /* Adjust the size of the home icon */
      margin-left: 20px; /* Adds space between other icons */
      transition: color 0.3s ease;
    }

    .social-media .home-link:hover {
      color: #28a745; /* Green color on hover for the home link */
    }

    @media screen and (max-width: 820px) {
      .wrapper {
        width: 80%;
        padding: 5px 30px;
      }
    }
  </style>

  <!-- Add Font Awesome for social media icons -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

</head>

<body>
  <!-- Navbar -->
  <div class="navbar">
    Hobby Lobby
  </div>

  <div class="container">
    <!-- Mission Section -->
    <div class="wrapper">
      <div class="hr">
        <hr>
        <h2>Our Mission</h2>
        <hr>
      </div>

      <p class="mission-txt">"Bringing Creativity to Your Doorstep"</p>
    </div>

    <!-- About Section -->
    <div class="wrapper">
      <h2>About Us</h2>
      <div>
        <img src="Image/hobby.jpg" alt="Hobby Lobby Image">
        <p>Hobby Lobby is your one-stop destination for all things creative! Whether you're looking for crafting supplies, home decor, or DIY project materials, we have everything you need to bring your ideas to life. Our vast collection of products spans various categories including art, sewing, scrapbooking, floral arrangements, and much more. </p>
        <p>Founded with a passion for fostering creativity, Hobby Lobby aims to offer high-quality products at affordable prices. We believe in empowering our customers to explore their artistic potential, and we are proud to support makers, creators, and hobbyists worldwide. Our online store provides a seamless shopping experience, allowing you to discover and order all your crafting essentials from the comfort of your home.</p>
      </div>
    </div>

    <!-- Team Section -->
    <div class="wrapper">
      <h2>Our Team</h2>
      <div class="faculties">
        <div class="unit">
          <img src="Image/kshititj.jpg" alt="">
          <p>Kshitij Singh</p>
          <p>With over 2 years of experience in the retail industry, Kshitij is passionate about helping customers find the best products for their creative needs.</p>
        </div>
        <div class="unit">
          <img src="Image/eaka.jpg" alt="">
          <p>Eaka Sharma and Bhavyansh Pathak</p>
          <p>They ensure that our operations run smoothly and effectively, managing finances to keep Hobby Lobby thriving and expanding.</p>
        </div>
        <div class="unit">
          <img src="Image/Imran.jpg" alt="">
          <p>Imran Khan, CTO</p>
          <p>Imran leads the tech team at Hobby Lobby, ensuring that our online platform is user-friendly, secure, and always up to date.</p>
        </div>
      </div>
    </div>

    <!-- Follow Us Section -->
    <div class="social-media">
      <h3>Follow Us</h3>
      <a href="https://www.instagram.com/hobbylobby/" target="_blank" title="Instagram"><i class="fab fa-instagram"></i></a>
      <a href="https://www.facebook.com/hobbylobby" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a>
      <a href="https://github.com/hobbylobby" target="_blank" title="GitHub"><i class="fab fa-github"></i></a>
      <!-- Link to index page with Home logo -->
      <a href="index.jsp" title="Home" class="home-link"><i class="fas fa-home"></i></a>
    </div>

  </div>
</body>

</html>
