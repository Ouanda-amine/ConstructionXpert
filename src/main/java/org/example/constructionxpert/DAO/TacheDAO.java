package org.example.constructionxpert.DAO;

import org.example.constructionxpert.Model.Projet;
import org.example.constructionxpert.Model.Tache;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TacheDAO {

    private Connection con;

    public TacheDAO() {

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/conxpert","root","");
            System.out.println("Connected to the database successfully");

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Failed to connect to database");;
        }
    }

    public void CreateTache(Tache tache) {
        String sql = "insert into tache( description , datedebut , datefin ) values(?,?,?)";
        try (PreparedStatement preparedStatement = con.prepareStatement(sql)){

            preparedStatement.setString(1, tache.getDescription());
            preparedStatement.setString(2,tache.getDatedebut());
            preparedStatement.setString(3,tache.getDatefin());
            preparedStatement.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Tache> getallTaches() {
        List<Tache> tacheList = new ArrayList<>();
        String sql="SELECT * FROM tache";
        System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxx");
        try(Statement stmt = con.createStatement(); ResultSet res = stmt.executeQuery(sql)) {
            System.out.println("ww");
            while (res.next()) {
                Tache tache = new Tache();
                tache.setIdtache(res.getInt("idtache"));
                tache.setDescription(res.getString("description"));
                tache.setDatedebut(res.getString("datedebut"));
                tache.setDatefin(res.getString("datefin"));


                tacheList.add(tache);
            }

        }catch (Exception e) {
            e.printStackTrace();
            System.out.println("qsqs");
        }
        return tacheList;

    }

    public Tache gettacheBYid(int id) {
        Tache tache = null;
        String sql="SELECT * FROM tache WHERE idtache = ?";
        try(PreparedStatement prest = con.prepareStatement(sql)) {
            prest.setInt(1, id);
            try (ResultSet res = prest.executeQuery()){
                if (res.next()) {
                    tache = new Tache();
                    tache.setIdtache(res.getInt("idtache"));
                    tache.setDescription(res.getString("description"));
                    tache.setDatedebut(res.getString("datedebut"));
                    tache.setDatefin(res.getString("datefin"));

                }

            }
            System.out.println("sffffff");

        }catch (Exception e) {
            System.out.println("tache not found");
        }
        return tache;
    }

    public void modifiertache(Tache tache) {
        System.out.println("nnn");
        String query = "UPDATE tache SET  description = ? , datedebut = ? , datefin = ? WHERE idtache = ?";
        try (PreparedStatement stmt = con.prepareStatement(query)) {
            stmt.setString(1, tache.getDescription());
            stmt.setString(2, tache.getDatedebut());
            stmt.setString(3, tache.getDatefin());
            stmt.setInt(4, tache.getIdtache());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("tache n f ");
        }
    }

    public  void deletetache(int id) {
        String sql = "DELETE FROM tache WHERE idtache = ?";
        try (PreparedStatement pres = con.prepareStatement(sql)){
            pres.setInt(1,id);
            pres.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("tache not founddd");
        }
    }

    public void createAndAssignTache(Tache tache) {
        String sql = "INSERT INTO tache (description, datedebut, datefin, idpro) VALUES (?, ?, ?, ?)";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, tache.getDescription());
            stmt.setString(2, tache.getDatedebut());
            stmt.setString(3, tache.getDatefin());
            stmt.setInt(4, tache.getIdpro()); // ID du projet auquel la tâche est assignée

            stmt.executeUpdate();
            System.out.println("Tâche créée et assignée au projet ID : " + tache.getIdpro());
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Erreur lors de la création et de l'assignation de la tâche.");
        }
    }

    public List<Tache> getTachesParProjet(int idProjet) {
        List<Tache> tacheList = new ArrayList<>();
        String sql = "SELECT * FROM tache WHERE idpro = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, idProjet);
            try (ResultSet res = stmt.executeQuery()) {
                while (res.next()) {
                    Tache tache = new Tache();
                    tache.setIdtache(res.getInt("idtache"));
                    tache.setDescription(res.getString("description"));
                    tache.setDatedebut(res.getString("datedebut"));
                    tache.setDatefin(res.getString("datefin"));
                    tache.setIdpro(res.getInt("idpro"));

                    tacheList.add(tache);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Erreur lors de la récupération des tâches pour le projet ID : " + idProjet);
        }
        return tacheList;
    }

}
