<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Login</title>
    <%@include file="Component/common_css_js.jsp" %>
    <style>
        .container {
            margin-top: 50px;
        }

        .custom-bg {
            background-color: #007bff; /* Bootstrap primary color */
        }

        .fade-in {
            animation: fadeIn 1s ease-in-out; /* Fade in animation */
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .text-center {
            text-align: center; /* Center text */
        }

        /* Center buttons in form */
        .button-group {
            display: flex; /* Use flexbox */
            justify-content: center; /* Center horizontally */
            margin-top: 15px; /* Margin for spacing */
        }

        .button-group button {
            margin: 0 10px; /* Margin between buttons */
        }
    </style>
</head>
<body>
    <%@include file="Component/Navbar.jsp" %>
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card mt-3 fade-in"> <!-- Add fade-in class here -->
                    <div class="card-header custom-bg text-white text-center"> <!-- Center the header text -->
                        <h3>Login Here</h3>
                    </div>
                    <div class="card-body">
                        <% 
                            // Display error messages if any
                            String errorMessage = (String) request.getAttribute("errorMessage");
                            if (errorMessage != null) { 
                        %>
                            <div class="alert alert-danger" role="alert">
                                <%= errorMessage %>
                            </div>
                        <% } %>
                        <%@include file="Component/message.jsp" %>

                        <form action="LoginServlet" method="post"> 
                            <div class="form-group">
                                <label for="email">Email address</label>
                                <input name="email" type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" required>
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input name="password" type="password" class="form-control" id="password" placeholder="Password" required>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="rememberMe">
                                <label class="form-check-label" for="rememberMe">Remember me</label>
                            </div>
                            <div class="button-group"> <!-- Center the buttons -->
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-secondary">Reset</button> <!-- Reset button added -->
                            </div>
                        </form>
                    </div>
                    <div class="card-footer text-center">
                        <a href="Register.jsp">Don't have an account? Register here!</a> <!-- Link to registration page -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
