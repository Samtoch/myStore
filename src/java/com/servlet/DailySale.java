/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import dba.DataAccess;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Items;
import model.SalesLog;

/**
 *
 * @author samuel
 */
@WebServlet(name = "DailySale", urlPatterns = {"/DailySale"})
public class DailySale extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            String maker = session.getAttribute("USERNAME").toString();

            String itemRef = request.getParameter("txtItemRef");
            String itemName = request.getParameter("txtItemName");
            System.out.println("itemName value is: " + itemName);
            String product = request.getParameter("txtProduct");
            System.out.println("product value is: " + product);

            String costPriceOrig = request.getParameter("txtCostPricePerItem");
            double costPrice = Double.parseDouble(costPriceOrig);

            String sellPrice = request.getParameter("txtPrice");
            double amount = Double.parseDouble(sellPrice);
            
            String sellPriceNorm = request.getParameter("txtNormalPrice");
            double amountNorm = Double.parseDouble(sellPriceNorm);
            
            String totalQtyOrig = request.getParameter("txtQty");
            int totalqtySold = Integer.parseInt(totalQtyOrig);
            
            double difference = (amount - amountNorm) * totalqtySold;
            
            double totalAmt = amountNorm * totalqtySold;
            
            String totQtyLeft = request.getParameter("txtQtyLeft");
            int qtyLeft = Integer.parseInt(totQtyLeft);         

            Date sysDate = new Date();
            DateFormat myDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String trnDate = myDateFormat.format(sysDate);
            String monthDate = trnDate.substring(5, 10);
            monthDate = monthDate.replace("-", "");

            String authStat = "A";
            String periodCode = "M" + trnDate.substring(5, 7);
            String finYear = trnDate.substring(0, 4);
            String deleteStat = "";

            int seq = DataAccess.getDailySalesSeq();

            int entrySeq = DataAccess.salesSeq;
            int _entrySeq = entrySeq;
            String itemSeqId = "001" + itemRef.substring(0, 4) + "" + monthDate + "" + _entrySeq;

            qtyLeft = qtyLeft - totalqtySold;
            if (qtyLeft < 0) {
                System.out.println("prdRetMsg is zero");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Error! Please confirm the quantity left');");
                out.println("location='DailySales';");
                out.println("</script>");
            } else {
                Items remItem = new Items(itemRef, itemName, itemRef, product, deleteStat, itemSeqId, qtyLeft, costPrice, costPrice, maker, trnDate, trnDate, deleteStat, qtyLeft);
                DataAccess da1 = new DataAccess();
                da1.updateQtyLeftByRef(remItem);

                SalesLog item = new SalesLog(itemSeqId, itemRef, itemName, _entrySeq, product, amount, totalqtySold, maker, authStat, trnDate, qtyLeft, costPrice, periodCode, finYear, deleteStat, totalAmt, amountNorm, difference);
                DataAccess da = new DataAccess();

                da.RecordSale(item);

                System.out.println("DataAccess.prdRetMsg is: " + DataAccess.prdRetMsg);
                if (DataAccess.prdRetMsg == 0) {
                    System.out.println("prdRetMsg is zero");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Error! In recording Sale');");
                    out.println("location='DailySales';");
                    out.println("</script>");

                } else {
                    System.out.println("prdRetMsg is not zero");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Sale Successfully Recorded');");
                    out.println("location='DailySales';");
                    out.println("</script>");
                }
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
