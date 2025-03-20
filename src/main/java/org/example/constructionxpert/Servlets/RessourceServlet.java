package org.example.constructionxpert.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.constructionxpert.DAO.RessourcesDAO;
import org.example.constructionxpert.Model.Projet;
import org.example.constructionxpert.Model.Ressources;

import java.io.IOException;
import java.util.List;

@WebServlet("/ressources")

public class RessourceServlet extends HttpServlet {
    private RessourcesDAO ressourcesDAO = new RessourcesDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if("edit".equals(action)) {
            int id = Integer.parseInt(request.getParameter("idres"));
            Ressources ressources = ressourcesDAO.getressourceBYid(id);
            request.setAttribute("ressources", ressources);
            request.getRequestDispatcher("modifierRessource.jsp").forward(request, response);

        } else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("idres"));
            ressourcesDAO.deleteressource(id);
            response.sendRedirect(request.getContextPath() + "/ressources");


        } else if("add".equals(action)) {
            request.getRequestDispatcher("ressourcesForm.jsp").forward(request, response);

        }
        else{

            List<Ressources> ressourcesList = ressourcesDAO.getallRessources();
            request.setAttribute("ressourceslist", ressourcesList);
            request.getRequestDispatcher("ListRessources.jsp").forward(request, response);
        }




    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if("update".equals(action)) {
            int id = Integer.parseInt(request.getParameter("idres"));
            String nom = request.getParameter("nomres");
            String type = request.getParameter("type");
            int quantite = Integer.parseInt(request.getParameter("quantite"));
            String nomfourn = request.getParameter("nomfourn");
            String local = request.getParameter("local");

            Ressources ressources = new Ressources(nom, type, quantite, nomfourn, local);
            ressources.setIdres(id);
            ressourcesDAO.modifierRessource(ressources);



        }else if ("add".equals(action)) {

            String nom = request.getParameter("nomres");
            String type = request.getParameter("type");
            int quantite = Integer.parseInt(request.getParameter("quantite"));
            String nomfourn = request.getParameter("nomfourn");
            String local = request.getParameter("local");
            Ressources ressources = new Ressources(nom, type, quantite, nomfourn, local);
            ressourcesDAO.Createressource(ressources);
        }

        response.sendRedirect(request.getContextPath() + "/ressources");
    }
}
