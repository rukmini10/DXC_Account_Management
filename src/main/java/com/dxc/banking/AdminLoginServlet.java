package com.dxc.banking;

import java.io.*;
import java.sql.SQLException;
 
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/adminlogin")
public class AdminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public AdminLoginServlet() {
        super();
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
         
        AdminUserDAO adminuserDao = new AdminUserDAO();
         
        try {
            AdminUser adminuser = adminuserDao.validateLogin(email, password);
            String destPage = "AdminLogin.jsp";
             
            if (adminuser != null) {
                HttpSession session = request.getSession();
                session.setAttribute("Adminuser", adminuser);
                destPage = "AdminHome.jsp";
            } else {
                String message = "Invalid email/password";
                request.setAttribute("message", message);
            }
             
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
             
        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }
}