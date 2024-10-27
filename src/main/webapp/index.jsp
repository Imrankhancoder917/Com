<%@page import="com.shoping.mavenproject7.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
    <%@include file="Component/common_css_js.jsp" %>
    <script>
        // Function to remove the message after 3 seconds
        function removeMessage() {
            const message = document.getElementById("welcomeMessage");
            if (message) {
                setTimeout(() => {
                    message.style.display = "none"; // Hide the message
                }, 3000); // 3000 milliseconds = 3 seconds
            }
        }

        // Call the removeMessage function on window load
        window.onload = removeMessage;
    </script>
</head>
<body>
    <%@include file="Component/Navbar.jsp" %>

    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card mt-3">
                    <div class="card-body">
                        <% 
                            // Check if there's a welcome message
                            String welcomeMessage = (String) session.getAttribute("welcomeMessage");
                            if (welcomeMessage != null) { 
                        %>
                            <div id="welcomeMessage" class="alert alert-success">
                                <%= welcomeMessage %>
                            </div>
                            <% 
                                // Clear the message after displaying it
                                session.removeAttribute("welcomeMessage");
                            } 
                        %>

                        <div class="row">
                            <div class="col text-right"> <!-- Align content to the right -->
                                <%
                                    // Print FactoryProvider output
                                    out.println(FactoryProvider.getfactory()+"<br>");
                                    out.println(FactoryProvider.getfactory()+"<br>");
                                    out.println(FactoryProvider.getfactory());
                                %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
