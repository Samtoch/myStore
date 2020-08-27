/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import dba.DataAccess;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;

import org.json.simple.JSONArray;

import com.google.gson.Gson;

/**
 *
 * @author samuel
 */
public class AutoComplete extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        try {
            String term = request.getParameter("term");
            System.out.println("Inside Get, The Value of term is: " + term);
            
            ArrayList<String> items = new DataAccess().getSearchItem(term);
            String searchList = new Gson().toJson(items);
            response.getWriter().write(searchList);
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        try {
            String term = request.getParameter("term");
            System.out.println("Inside Post, The Value of term is: " + term);
            
            ArrayList<String> items = new DataAccess().getSearchProd(term);
            String searchList = new Gson().toJson(items);
            response.getWriter().write(searchList);
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
