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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Items;
import dba.DataAccess;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import javax.servlet.http.HttpSession;

/**
 *
 * @author samuel
 */
@WebServlet(name = "CreateItem", urlPatterns = {"/CreateItem"})
public class CreateItem extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String itemName = request.getParameter("txtItemName");
            String itemDesc = request.getParameter("txtItemDesc");
            String product = request.getParameter("txtProduct");
            String recordStatus = "O";
            String itemStatus = request.getParameter("txtItemStat");
            
            Date sysDate = new Date();
            DateFormat myDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String dateCreated = myDateFormat.format(sysDate);
            
            String monthDate = dateCreated.substring(5, 10);
            monthDate = monthDate.replace("-", "");
            
            String itemRef = itemName.substring(0, 4) + itemStatus + product + monthDate;
            System.out.println("itemStatus is: " + itemStatus);
            System.out.println("product is: " + product);
            System.out.println("ItemRef is: " + itemRef);
            
            String totalQtyOrig = request.getParameter("txtQuantity");
            int totalQty = Integer.parseInt(totalQtyOrig);
            String costPriceOrig = request.getParameter("txtCostPricePerItem");
            double costPrice = Double.parseDouble(costPriceOrig);
            String sellPriceOrig = request.getParameter("txtSellingPricePerItem");
            double sellPrice = Double.parseDouble(sellPriceOrig);
            String manufacturer = request.getParameter("txtManufacturer");
            String expiryDate = request.getParameter("txtExpDate");
            
            HttpSession session = request.getSession();
            String userCreated = session.getAttribute("USERNAME").toString();
            
            int qtyLeft = totalQty;

            Items item = new Items(itemRef, itemName, itemDesc, product, recordStatus, itemStatus, totalQty, costPrice, sellPrice, manufacturer, expiryDate, userCreated, dateCreated, qtyLeft);
            DataAccess da = new DataAccess();
            da.AddItem(item);
            
            
            System.out.println("DataAccess.prdRetMsg is: " + DataAccess.prdRetMsg);
            if (DataAccess.prdRetMsg == 0) {
                System.out.println("prdRetMsg is zero");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Error in Adding Item');");
                out.println("location='CreateItem.jsp';");
                out.println("</script>");

            } else {
                System.out.println("prdRetMsg is not zero");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Item Added Successfully');");
                out.println("location='CreateItem.jsp';");
                out.println("</script>");
            }

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
