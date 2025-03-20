package org.example.constructionxpert.DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class affectationDAO {

    private Connection con;

    public affectationDAO() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/conxpert","root","");
            System.out.println("Connected to the database successfully");

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Failed to connect to database");;
        }
    }
}
