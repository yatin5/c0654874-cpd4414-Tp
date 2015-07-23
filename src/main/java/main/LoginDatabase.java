package main;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class LoginDatabase {
    
      public static Connection getConnection() throws SQLException {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String jdbc = "jdbc:mysql://127.5.207.2:3306/cyclestore";
            String user = "admineqdpQRl";
            String pass = "vfdRzdNwgM-h";
            conn = DriverManager.getConnection(jdbc, user, pass);
         //   String query = "SELECT * FROM login";

        } catch (ClassNotFoundException  ex) {
            System.err.println("No class found Exception" + ex.getMessage());
        }
        return conn;
    }
    
}
