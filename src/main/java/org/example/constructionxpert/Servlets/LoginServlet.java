package org.example.constructionxpert.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.example.constructionxpert.DAO.AdminDAO;
import org.example.constructionxpert.Model.Admin;

import java.io.IOException;

@WebServlet("/login")

public class LoginServlet extends HttpServlet {

    private AdminDAO admindao;
    public void init() {admindao = new AdminDAO();}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Admin admin = admindao.getAdmin(username, password);

        if (admin != null) {

            HttpSession session = request.getSession();
            session.setAttribute("admin", admin);

            response.sendRedirect(request.getContextPath() + "/projet");
        } else {
            request.setAttribute("errorMessage", "Nom d'utilisateur ou mot de passe invalide.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
