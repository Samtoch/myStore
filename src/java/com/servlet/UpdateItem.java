/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import dba.DataAccess;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Items;


@WebServlet(name = "UpdateItem", urlPatterns = {"/UpdateItem"})
public class UpdateItem extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
        String itemRef =        request.getParameter("txtItemRef");
        String itemName =       request.getParameter("txtItemName");
        String itemDesc =       request.getParameter("txtItemDesc");
        String product =        request.getParameter("txtProduct");
        String recordStatus =   request.getParameter("txtRecStat");
        String itemStatus =     request.getParameter("txtItemStat");
        String totalQtyOrig =   request.getParameter("txtQuantity");
        int totalQty =          Integer.parseInt(totalQtyOrig);
        String costPriceOrig =  request.getParameter("txtCostPricePerItem");
        double costPrice =      Double.parseDouble(costPriceOrig);
        String sellPriceOrig =  request.getParameter("txtSellingPricePerItem");
        double sellPrice =      Double.parseDouble(sellPriceOrig);
        String manufacturer =   request.getParameter("txtManufacturer");
        String expiryDate =     request.getParameter("txtExpDate");
        String userCreated =    request.getParameter("txtUserCreated");
        String dateCreated =    request.getParameter("txtDateCreated");
        int qtyLeft = 25;
        
        Items item = new Items(itemRef, itemName, itemDesc, product, recordStatus, itemStatus, totalQty, costPrice, sellPrice, manufacturer, expiryDate, userCreated, dateCreated, qtyLeft);
        DataAccess da = new DataAccess();
        da.updateItemByRef(item);
        
        System.out.println("DataAccess.prdRetMsg is: " + DataAccess.prdRetMsg);
        if (DataAccess.prdRetMsg == 0){
                System.out.println("prdRetMsg is zero");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Error in Updating Item');");
                out.println("location='ViewItems';");
                out.println("</script>");
                
            }else{
                System.out.println("prdRetMsg is not zero");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Item Update is Successfully');");
                out.println("location='ViewItems';");
                out.println("</script>");
            }
        
        //response.sendRedirect("ViewItems.jsp");
        
        }   
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
