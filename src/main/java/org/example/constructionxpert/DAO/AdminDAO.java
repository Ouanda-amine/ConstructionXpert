package org.example.constructionxpert.DAO;

import org.example.constructionxpert.Model.Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDAO {
    private Connection con;

    public AdminDAO() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/conxpert","root","");
            System.out.println("Connected to the database successfully");

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Failed to connect to database");;
        }
    }

    public Admin getAdmin(String username  , String password) {
        Admin admin = null;
        System.out.println("aaaaaaaaaa");
        String sql = "select * from admin where username=? and password=?";
        try (PreparedStatement pes = con.prepareStatement(sql)){
            pes.setString(1, username);
            pes.setString(2, password);

            try (ResultSet rs = pes.executeQuery()){
                if (rs.next()){
                    admin = new Admin();
                   admin.setUsername(rs.getString("username"));
                   admin.setPassword(rs.getString("password"));
                }

            }

        }catch (Exception e) {
            e.printStackTrace();
        }
        return admin;
    }


}
