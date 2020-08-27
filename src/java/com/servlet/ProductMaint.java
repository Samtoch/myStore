/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.sun.org.apache.xml.internal.serializer.utils.MsgKey;
import dba.DataAccess;
import java.io.IOException;
import java.io.PrintWriter;

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Products;


/**
 * @author samuel
 */
@WebServlet(name = "ProductMaint", urlPatterns = {"/ProductMaint"})
public class ProductMaint extends HttpServlet {

    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String prodGroup    = request.getParameter("txtProdName");
            String prodDesc     = request.getParameter("txtProdDesc");
            String prodCode     = request.getParameter("txtProdCode");
           // String prodExpDate  = request.getParameter("txtProdExpDate");
            //String userCreated  = request.getParameter("txtProdName");
            
            HttpSession session = request.getSession();
            String userCreated = session.getAttribute("USERNAME").toString();
            
            String recordStatus = "O";
            String prodGroupNo  = "";
            
            Date sysDate = new Date();
            DateFormat myDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String dateCreated = myDateFormat.format(sysDate);
            
            Products product = new Products(prodGroup, prodDesc, prodCode, recordStatus, prodGroupNo, dateCreated, userCreated);
            DataAccess dataAcc = new DataAccess();
            dataAcc.AddProducts(product);
            
            System.out.println("DataAccess.prdRetMsg is: " + DataAccess.prdRetMsg);
            if (DataAccess.prdRetMsg == 0){
                System.out.println("prdRetMsg is zero");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Error With the input Product');");
                out.println("location='ProdMaint.jsp';");
                out.println("</script>");
                
            }else{
                System.out.println("prdRetMsg is not zero");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Product is Successfully Created');");
                out.println("location='ProdMaint.jsp';");
                out.println("</script>");
            }
            
            //response.sendRedirect("ProdMaint.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
