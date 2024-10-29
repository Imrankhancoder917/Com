<%@page import="com.shoping.mavenproject7.entities.User"%>
<%
User user1 = (User) session.getAttribute("user");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HobbyLobby</title>
    <link rel="stylesheet" href="path/to/bootstrap.css"> <!-- Ensure correct path -->
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark custom-bg">
    <a class="navbar-brand" href="index.jsp">HobbyLobby</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Category
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <%
            if (user1 == null) {
            %>
                <li class="nav-item active">
                    <a class="nav-link" href="Login.jsp">Login</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="Register.jsp">Register</a>
                </li>
            <%
            } else {
            %>
                <li class="nav-item active">
                    <a class="nav-link" href="#!"><%= user1.getUserName() %></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="LogoutServlet">Logout</a>
                </li>
            <%
            }
            %>
        </ul>

        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>

<!-- Add the rest of your page content here -->

<%--
<script src="path/to/jquery.js"></script> <!-- Ensure correct path -->
<script src="path/to/bootstrap.js"></script> <!-- Ensure correct path -->
</body>
</html
--%>

