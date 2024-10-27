package com.shoping.mavenproject7.servlets;

import com.shoping.mavenproject7.Dao.UserDao;
import com.shoping.mavenproject7.entities.User;
import com.shoping.mavenproject7.helper.FactoryProvider;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession httpSession = request.getSession();
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Basic validation
        if (email == null || email.isEmpty()) {
            httpSession.setAttribute("message", "Email cannot be empty.");
            response.sendRedirect("Login.jsp");
            return;
        }
        if (password == null || password.isEmpty()) {
            httpSession.setAttribute("message", "Password cannot be empty.");
            response.sendRedirect("Login.jsp");
            return;
        }

        UserDao userDao = new UserDao(FactoryProvider.getfactory());
        User user = userDao.getUserByEmailAndPassword(email, password);

        if (user == null) {
            httpSession.setAttribute("message", "Invalid details. Try another email.");
            response.sendRedirect("Login.jsp");
            return;
        } else {
            // Successful login
            httpSession.setAttribute("user", user);
            httpSession.setAttribute("welcomeMessage", "Welcome " + user.getUserName() + "!");
            response.sendRedirect("index.jsp"); // Redirect to index.jsp
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
