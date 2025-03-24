package org.example.constructionxpert.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.constructionxpert.DAO.ProjetDAO;
import org.example.constructionxpert.Model.Projet;

import java.io.IOException;
import java.util.List;

@WebServlet("/projet")

public class ProjetServlet extends HttpServlet {
    private ProjetDAO projetDAO = new ProjetDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if("edit".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            Projet projet = projetDAO.getprojetBYid(id);
            request.setAttribute("projet", projet);
            request.getRequestDispatcher("modifierProjet.jsp").forward(request, response);

        } else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            projetDAO.deleteprojet(id);
            response.sendRedirect(request.getContextPath() + "/projet");


        }else if("add".equals(action)) {
            request.getRequestDispatcher("projetForm.jsp").forward(request, response);
        }else{

            List<Projet> projetList = projetDAO.getallProjects();
            request.setAttribute("projetlist", projetList);
            request.getRequestDispatcher("projetList.jsp").forward(request, response);
        }







    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if("update".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            String nom = request.getParameter("nom");
            String description = request.getParameter("description");
            String datedeb = request.getParameter("datedeb");
            String datefin = request.getParameter("datefin");
            Double budget = Double.parseDouble(request.getParameter("budget"));

            Projet projet = new Projet(nom, description, datedeb, datefin, budget);
            projet.setIdpro(id);
            projetDAO.modifierprojet(projet);



        }else if("add".equals(action)) {

        String nom = request.getParameter("nompro");
        String description = request.getParameter("description");
        String datedeb = request.getParameter("datedebut");
        String datefin = request.getParameter("datefin");
        Double budget = Double.parseDouble(request.getParameter("budget"));
        Projet projet = new Projet(nom, description, datedeb, datefin, budget);
        projetDAO.CreateProjet(projet);
        }

        response.sendRedirect(request.getContextPath() + "/projet");



    }
}
