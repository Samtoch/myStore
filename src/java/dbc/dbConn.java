/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbc;
import java.sql.*;

/**
 *
 * @author samuel
 */
public class dbConn {
    public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException{
        PreparedStatement prepStatmt = null;
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/mystock";
        String user = "root";
        String pass = "password";
        
        Connection Conn = DriverManager.getConnection(url,user,pass);
        prepStatmt = Conn.prepareStatement(sql);
        
        return prepStatmt;
    }
    
    //Confirm Connection..
    /*public static void main(String[] args) throws ClassNotFoundException, SQLException {
        getPreparedStatement("SELECT * FROM NEWS_TABLE");
    }*/
    
}
