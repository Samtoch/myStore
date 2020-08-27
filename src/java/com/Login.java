/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dbc.dbConn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author samuel
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String _txtLoginUsername = request.getParameter("txtLoginUsername");
        String _txtLoginPassword = request.getParameter("txtLoginPassword");
        
        String _txtSignUpName = request.getParameter("txtSignUpName");
        String _txtSignUpEmail = request.getParameter("txtSignUpEmail");
        String _txtSugnUpPassword = request.getParameter("txtSugnUpPassword");
        String _txtSugnUpPassConf = request.getParameter("txtSugnUpPassConf");
        String _txtPhoneNo = request.getParameter("txtPhoneNo");

        String SqlSelect = "SELECT * FROM mystock.app_users where username='"+ _txtLoginUsername +"' and password='"+ _txtLoginPassword +"'";
        String sqlInsert = "INSERT INTO mystock.app_users(NAME, USERNAME, PASSWORD, PHONE_NO) VALUES(?,?,?,?)";
        
        try (PrintWriter out = response.getWriter()) {
            if (request.getParameter("submitSignIn") != null) {
                try {
                    ResultSet resSet = dbConn.getPreparedStatement(SqlSelect).executeQuery();
                    if (resSet.next()){
                        response.sendRedirect("Home.jsp");
                        HttpSession session = request.getSession();
                        session.setAttribute("USERNAME", _txtLoginUsername);
                    }
                    else 
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Password is Incorrect');");
                        out.println("location='index.jsp';");
                        out.println("</script>");
                } catch (ClassNotFoundException | SQLException ex) {
                    Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                }
            } 
            else if (request.getParameter("submitSignUp") != null) {
                int UpdateQuery = 0;
                try {
                    PreparedStatement prepStatmt = dbConn.getPreparedStatement(sqlInsert);
                    prepStatmt.setString(1, _txtSignUpName);
                    prepStatmt.setString(2, _txtSignUpEmail);
                    prepStatmt.setString(3, _txtLoginPassword);
                    prepStatmt.setString(4, _txtPhoneNo);

                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    UpdateQuery = prepStatmt.executeUpdate();
                    if (UpdateQuery != 0){
                        
                        request.setAttribute("UpdateStatus", "");
                        rd.forward(request, response);
                        response.sendRedirect("Home.jsp");
                    }
                    else {
                        
                        request.setAttribute("errMessage", "Error In Record Saving");
                        rd.forward(request, response);
                        //response.sendRedirect("index.jsp");
                    }
                        
                } catch (ClassNotFoundException | SQLException ex) {
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    request.setAttribute("errMessage", "Failed to Save Record");
                    rd.forward(request, response);
                    Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                }
                
               
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
