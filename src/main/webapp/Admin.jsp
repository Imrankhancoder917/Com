<%@page import="com.shoping.mavenproject7.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        session.setAttribute("message", "Login first");
        response.sendRedirect("Login.jsp");
        return;
    } else if ("normal".equals(user.getUserType())) {
        session.setAttribute("message", "You are not admin of this website");
        response.sendRedirect("Login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <%@include file="Component/common_css_js.jsp" %>
</head>
<body>
    <%@include file="Component/Navbar.jsp" %>
    
    <h1> this is Admin page</h1>

    
</body>
</html>
