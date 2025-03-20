package org.example.constructionxpert.DAO;

import org.example.constructionxpert.Model.Ressources;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AffectationDAO {

    private Connection con;

    public AffectationDAO() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/conxpert","root","");
            System.out.println("Connected to the database successfully");

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Failed to connect to database");;
        }
    }

    public void assignRessourceToTache(int tachid, int resid) {
        String sql = "INSERT INTO tacheress (idtache, idres) VALUES (?, ?)";
        try (PreparedStatement pr = con.prepareStatement(sql)) {
            pr.setInt(1, tachid);
            pr.setInt(2, resid);
            System.out.println("kkkk");
            pr.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Failed ");
        }
    }
    public List<Ressources> getRessourcesBySTacheId(int tachid) {
        System.out.println("vvvvvvvvvvvv");
        List<Ressources> ressourcesList = new ArrayList<>();
        String sql = "SELECT r.idres, r.nomres, r.type ,r.quantite , r.nomfourn , r.local " +
                "FROM ressources r " +
                "JOIN tacheress tr ON r.idres = tr.idres " +
                "WHERE tr.idtache = ?";

        try (PreparedStatement pr = con.prepareStatement(sql)) {
            pr.setInt(1, tachid);
            System.out.println("dsdsdsds");

            try (ResultSet rs = pr.executeQuery()) {
                while (rs.next()) {
                    System.out.println("eeeeee");
                    int idres = rs.getInt("idres");
                    String nomres = rs.getString("nomres");
                    String type = rs.getString("type");
                    int  quantite = rs.getInt("quantite");
                    String nomfourn = rs.getString("nomfourn");
                    String local = rs.getString("local");

                    Ressources ressources = new Ressources(idres,nomres,type,quantite,nomfourn,local);
                    ressourcesList.add(ressources);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Faileddd");
        }
        System.out.println("liiist");
        return ressourcesList;
    }
}
