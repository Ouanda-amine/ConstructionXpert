package org.example.constructionxpert.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.constructionxpert.DAO.ProjetDAO;
import org.example.constructionxpert.DAO.TacheDAO;
import org.example.constructionxpert.Model.Projet;
import org.example.constructionxpert.Model.Tache;

import java.io.IOException;
import java.util.List;

@WebServlet("/tache") // URL associée à cette servlet
public class TacheServlet extends HttpServlet {

    private TacheDAO tacheDAO = new TacheDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("edit".equals(action)) {
            int id = Integer.parseInt(request.getParameter("idtache"));
            Tache tache = tacheDAO.gettacheBYid(id);
            request.setAttribute("tache", tache);
            request.getRequestDispatcher("modifierTache.jsp").forward(request, response);

        } else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("idtache"));
            tacheDAO.deletetache(id);
            response.sendRedirect(request.getContextPath() + "/tache?action=tachesByProjet&idpro=" + id);

        } else if ("createForm".equals(action)) {
            int idProjet = Integer.parseInt(request.getParameter("id"));

            ProjetDAO projetDAO = new ProjetDAO();
            Projet projet = projetDAO.getprojetBYid(idProjet);
            request.setAttribute("projet", projet);

            request.getRequestDispatcher("tacheForm.jsp").forward(request, response);

        } else if ("tachesByProjet".equals(action)) {
            int idProjet = Integer.parseInt(request.getParameter("idpro"));
            List<Tache> tacheList = tacheDAO.getTachesParProjet(idProjet);
            request.setAttribute("tachelist", tacheList);
            request.getRequestDispatcher("tachesOFprojet.jsp").forward(request, response);

        } else {
            int idpro = Integer.parseInt(request.getParameter("idpro"));

            response.sendRedirect(request.getContextPath() + "/tache?action=tachesByProjet&idpro=" + idpro);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("createAndAssign".equals(action)) {
            String description = request.getParameter("description");
            String dateDebut = request.getParameter("datedebut");
            String dateFin = request.getParameter("datefin");
            int idProjet = Integer.parseInt(request.getParameter("idpro"));

            Tache tache = new Tache(description, dateDebut, dateFin);
            tache.setIdpro(idProjet);
            tacheDAO.createAndAssignTache(tache);

            response.sendRedirect(request.getContextPath() + "/tache?action=tachesByProjet&idpro=" + idProjet);

        } else if ("update".equals(action)) {
            int idTache = Integer.parseInt(request.getParameter("idtache"));
            String description = request.getParameter("description");
            String dateDebut = request.getParameter("datedeb");
            String dateFin = request.getParameter("datefin");
            int idProjet = Integer.parseInt(request.getParameter("idpro"));

            Tache tache = new Tache(description, dateDebut, dateFin);
            tache.setIdtache(idTache);
            tache.setIdpro(idProjet);
            tacheDAO.modifiertache(tache);

            response.sendRedirect(request.getContextPath() + "/tache?action=tachesByProjet&idpro=" + idProjet);
        }
    }
}
