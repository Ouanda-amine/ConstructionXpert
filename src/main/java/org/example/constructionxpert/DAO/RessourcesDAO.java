package org.example.constructionxpert.DAO;

import org.example.constructionxpert.Model.Projet;
import org.example.constructionxpert.Model.Ressources;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RessourcesDAO {

    private Connection cnx;

    public RessourcesDAO() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            cnx= DriverManager.getConnection("jdbc:mysql://localhost:3306/conxpert","root","");
            System.out.println("Connected to the database successfully");

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Failed to connect to database");;
        }
    }

    public void Createressource(Ressources ressources) {
        String sql = "insert into ressources(nomres , type , quantite , nomfourn , local) values(?,?,?,?,?)";
        try (PreparedStatement preparedStatement = cnx.prepareStatement(sql)){
            preparedStatement.setString(1,ressources.getNomres());
            preparedStatement.setString(2, ressources.getType());
            preparedStatement.setInt(3, ressources.getQuantite());
            preparedStatement.setString(4, ressources.getNomfournisseur());
            preparedStatement.setString(5,ressources.getLocalfournisseur());
            preparedStatement.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
    public List<Ressources> getallRessources() {
        List<Ressources> ressourceslist = new ArrayList<>();
        String sql="SELECT * FROM ressources";
        System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxx");
        try(Statement stmt = cnx.createStatement(); ResultSet res = stmt.executeQuery(sql)) {
            System.out.println("ww");
            while (res.next()) {
                Ressources ressources = new Ressources();
                ressources.setIdres(res.getInt("idres"));
                ressources.setNomres(res.getString("nomres"));
                ressources.setType(res.getString("type"));
                ressources.setQuantite(res.getInt("quantite"));
                ressources.setNomfournisseur(res.getString("nomfourn"));
                ressources.setLocalfournisseur(res.getString("local"));

                ressourceslist.add(ressources);
            }

        }catch (Exception e) {
            e.printStackTrace();
            System.out.println("qsqs");
        }
        return ressourceslist;

    }
    public Ressources getressourceBYid(int id) {
        Ressources ressources = null;
        String sql="SELECT * FROM ressources WHERE idres = ?";
        try(PreparedStatement prest = cnx.prepareStatement(sql)) {
            prest.setInt(1, id);
            try (ResultSet res = prest.executeQuery()){
                if (res.next()) {
                    ressources = new Ressources();
                    ressources.setIdres(res.getInt("idres"));
                    ressources.setNomres(res.getString("nomres"));
                    ressources.setType(res.getString("type"));
                    ressources.setQuantite(res.getInt("quantite"));
                    ressources.setNomfournisseur(res.getString("nomfourn"));
                    ressources.setLocalfournisseur(res.getString("local"));


                }

            }
            System.out.println("sffffff");

        }catch (Exception e) {
            System.out.println("projet not found");
        }
        return ressources;
    }

    public void modifierRessource(Ressources ressources) {
        System.out.println("nnn");
        String query = "UPDATE ressources SET nomres = ?, type = ? , quantite = ? , nomfourn = ? , local = ? WHERE idres = ?";
        try (PreparedStatement stmt = cnx.prepareStatement(query)) {
           stmt.setString(1, ressources.getNomres());
           stmt.setString(2, ressources.getType());
           stmt.setInt(3, ressources.getQuantite());
           stmt.setString(4, ressources.getNomfournisseur());
           stmt.setString(5, ressources.getLocalfournisseur());
           stmt.setInt(6, ressources.getIdres());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("res n f ");
        }
    }

    public  void deleteressource(int id) {
        String sql = "DELETE FROM ressources WHERE idres = ?";
        try (PreparedStatement pres = cnx.prepareStatement(sql)){
            pres.setInt(1,id);
            pres.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("res not founddd");
        }
    }
}
