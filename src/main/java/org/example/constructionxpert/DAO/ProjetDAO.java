package org.example.constructionxpert.DAO;

import org.example.constructionxpert.Model.Projet;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProjetDAO {
    private Connection conn;

    public ProjetDAO() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/conxpert","root","");
            System.out.println("Connected to the database successfully");

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Failed to connect to database");;
        }
    }

    public void CreateProjet(Projet projet) {
        String sql = "insert into projet(nom , description , datedebut , datefin , budget) values(?,?,?,?,?)";
        try (PreparedStatement preparedStatement = conn.prepareStatement(sql)){
            preparedStatement.setString(1,projet.getNomprojet());
            preparedStatement.setString(2, projet.getDescription());
            preparedStatement.setString(3,projet.getDatedebut());
            preparedStatement.setString(4,projet.getDatefin());
            preparedStatement.setDouble(5,projet.getBudget());
            preparedStatement.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Projet> getallProjects() {
        List<Projet> projetlist = new ArrayList<>();
        String sql="SELECT * FROM projet";
        System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxx");
        try(Statement stmt = conn.createStatement(); ResultSet res = stmt.executeQuery(sql)) {
            System.out.println("ww");
            while (res.next()) {
                Projet projet = new Projet();
                projet.setIdpro(res.getInt("idpro"));
                projet.setNomprojet(res.getString("nom"));
                projet.setDescription(res.getString("description"));
                projet.setDatedebut(res.getString("datedebut"));
                projet.setDatefin(res.getString("datefin"));
                projet.setBudget(res.getDouble("budget"));

                projetlist.add(projet);
            }

        }catch (Exception e) {
            e.printStackTrace();
            System.out.println("qsqs");
        }
        return projetlist;

    }
    public Projet getprojetBYid(int id) {
        Projet projet = null;
        String sql="SELECT * FROM projet WHERE idpro = ?";
        try(PreparedStatement prest = conn.prepareStatement(sql)) {
            prest.setInt(1, id);
            try (ResultSet res = prest.executeQuery()){
                if (res.next()) {
                    projet = new Projet();
                    projet.setIdpro(res.getInt("idpro"));
                    projet.setNomprojet(res.getString("nom"));
                    projet.setDescription(res.getString("description"));
                    projet.setDatedebut(res.getString("datedebut"));
                    projet.setDatefin(res.getString("datefin"));
                    projet.setBudget(res.getDouble("budget"));

                }

            }
            System.out.println("sffffff");

        }catch (Exception e) {
            System.out.println("projet not found");
        }
        return projet;
    }

    public void modifierprojet(Projet projet) {
        System.out.println("nnn");
        String query = "UPDATE projet SET nom = ?, description = ? , datedebut = ? , datefin = ? , budget = ? WHERE idpro = ?";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, projet.getNomprojet());
            stmt.setString(2, projet.getDescription());
            stmt.setString(3, projet.getDatedebut());
            stmt.setString(4, projet.getDatefin());
            stmt.setDouble(5, projet.getBudget());
            stmt.setInt(6, projet.getIdpro());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("tache n f ");
        }
    }

    public  void deleteprojet(int id) {
        String sql = "DELETE FROM projet WHERE idpro = ?";
        try (PreparedStatement pres = conn.prepareStatement(sql)){
            pres.setInt(1,id);
            pres.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("prro not founddd");
        }
    }


}
