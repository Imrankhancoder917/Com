<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Registration</title>
    <%@include file="Component/common_css_js.jsp" %>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2; /* Light background color */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh; /* Full viewport height */
            margin: 0;
        }

        .container {
            background-color: #ffffff; /* White background for the form */
            border-radius: 10px; /* Rounded corners */
            padding: 20px; /* Reduced padding */
            box-shadow: 0px 0px 10px #aaa; /* Subtle shadow */
            max-width: 350px; /* Decreased max width for smaller size */
            width: 100%; /* Make the container responsive */
            animation: fade-in-up 0.5s ease-out; /* Animation for container */
        }

        @keyframes fade-in-up {
            0% {
                opacity: 0; /* Start fully transparent */
                transform: translateY(20px); /* Start lower */
            }
            100% {
                opacity: 1; /* Fully visible */
                transform: translateY(0); /* Move to original position */
            }
        }

        .form-group {
            margin-bottom: 15px; /* Reduced margin */
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="password"],
        .form-group input[type="tel"],
        .form-group textarea {
            width: 100%;
            padding: 8px; /* Reduced padding */
            border-radius: 5px;
            border: 1px solid #ccc; /* Border color */
            box-shadow: 0px 0px 3px #ddd; /* Light shadow */
        }

        .form-group button {
            background-color: #4CAF50; /* Green background */
            color: #ffffff; /* White text */
            border: none;
            border-radius: 5px;
            padding: 8px 16px; /* Reduced padding */
            cursor: pointer;
            margin: 5px; /* Margin for buttons */
            width: 48%; /* Button width adjustment */
        }

        .form-group button:hover {
            background-color: #3e8e41; /* Darker green on hover */
        }

        .message {
            margin-bottom: 15px; /* Reduced margin */
            padding: 10px;
            border-radius: 5px;
        }

        .error {
            color: red; /* Error text color */
            background-color: #f8d7da; /* Light red background */
        }

        .success {
            color: green; /* Success text color */
            background-color: #d4edda; /* Light green background */
        }

        /* Center the anchor link */
        .text-center a {
            display: inline-block;
            margin-top: 10px;
            text-align: center; /* Center the text */
            color: #007bff; /* Bootstrap link color */
            text-decoration: none; /* Remove underline */
        }

        .text-center a:hover {
            text-decoration: underline; /* Underline on hover */
        }

        /* Navbar styles */
        .navbar {
            background-color: #007bff; /* Bootstrap primary color for navbar */
            padding: 10px 20px; /* Padding for navbar */
            color: white; /* White text color for navbar */
            text-align: center; /* Centered text */
        }
    </style>
</head>
<body>
    
    <div class="container mt-8">
        <h3 class="text-center my-2">Sign Up Here</h3>

        <% 
            String errorMessage = (String) request.getAttribute("errorMessage");
            String successMessage = (String) request.getAttribute("message");

            if (errorMessage != null) {
        %>
            <div class="message error">
                <h3>Errors:</h3>
                <p><%= errorMessage %></p>
            </div>
        <%
            }
            if (successMessage != null) {
        %>
            <div class="message success">
                <h3><%= successMessage %></h3>
            </div>
        <%
            }
        %>
        
        <form action="RegisterServlet" method="post" id="signup-form">
            <div class="form-group">
                <label for="name">User Name</label>
                <input name="user_name" type="text" class="form-control" id="name" placeholder="Enter your name here" required>
            </div>

            <div class="form-group">
                <label for="email">User Email</label>
                <input name="user_email" type="email" class="form-control" id="email" placeholder="Enter your Email here" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input name="user_password" type="password" class="form-control" id="password" placeholder="Set your password" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input name="user_phone" type="tel" class="form-control" id="phone" placeholder="Enter your phone number" required>
            </div>

            <div class="form-group">
                <label for="address">User Address</label>
                <textarea name="user_address" style="height: 80px" class="form-control" id="address" placeholder="Enter your Address" required></textarea>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-outline-success">Register</button>
                <button type="reset" class="btn btn-outline-warning">Reset</button>
            </div>
        </form>

        <div class="text-center">
            <a href="index.jsp">Back to Home</a>
        </div>
    </div>
</body>
</html>
