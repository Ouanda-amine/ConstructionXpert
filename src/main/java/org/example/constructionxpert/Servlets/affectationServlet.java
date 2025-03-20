package org.example.constructionxpert.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.constructionxpert.DAO.AffectationDAO;
import org.example.constructionxpert.DAO.RessourcesDAO;
import org.example.constructionxpert.DAO.TacheDAO;
import org.example.constructionxpert.Model.Ressources;
import org.example.constructionxpert.Model.Tache;

import java.io.IOException;
import java.util.List;

@WebServlet("/affectation")

public class affectationServlet extends HttpServlet {

    private AffectationDAO affectationDAO = new AffectationDAO();
    private TacheDAO tacheDAO = new TacheDAO();
    private RessourcesDAO ressourcesDAO = new RessourcesDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if("affectation".equals(action)){
            int id = Integer.parseInt(request.getParameter("idtache"));
            AffectationDAO affectationDao = new AffectationDAO();
            List<Ressources> ressourcesList = affectationDao.getRessourcesBySTacheId(id);
            request.setAttribute("ressourceslist", ressourcesList);
            request.getRequestDispatcher("resOFtache.jsp").forward(request, response);
        }else{

            int id = Integer.parseInt(request.getParameter("idtache"));
            Tache tache = tacheDAO.gettacheBYid(id);
            request.setAttribute("tache", tache);

            List<Ressources> ressourcesList = ressourcesDAO.getallRessources();
            request.setAttribute("ressourceslist", ressourcesList);
            request.getRequestDispatcher("assigner.jsp").forward(request, response);

        }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int tacheId = Integer.parseInt(request.getParameter("tachid"));
        int resid = Integer.parseInt(request.getParameter("select"));

        affectationDAO.assignRessourceToTache(tacheId, resid);
        response.sendRedirect(request.getContextPath() + "/projet");

    }
}
