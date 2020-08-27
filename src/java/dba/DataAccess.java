/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dba;

import com.servlet.DailySale;
import model.Products;
import model.Items;
import dbc.dbConn;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.servlet.ProductMaint;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import model.SalesLog;

/**
 *
 * @author samuel
 */
public class DataAccess {

    public static int prdRetMsg;
    public static int salesSeq;
    

    public int ErrorMsg(int msg) {
        if (msg == 0) {
            return 0;
        } else {
            return 1;
        }
    }

    public void AddProducts(Products prod) {

        String insertQuery = "insert into mystock.product_group (product_group, group_desc, group_code, record_status, date_created, user_created) values (?,?,?,?,?,?)";
        try {
            int updateQuery = 0;
            PreparedStatement prepStat = dbConn.getPreparedStatement(insertQuery);
            prepStat.setString(1, prod.getProdGroup());
            prepStat.setString(2, prod.getProdDesc());
            prepStat.setString(3, prod.getProdCode());
            prepStat.setString(4, prod.getRecordStat());
            prepStat.setString(5, prod.getDateCreated());
            prepStat.setString(6, prod.getUserCreated());

            //prepStat.executeUpdate(); 
            updateQuery = prepStat.executeUpdate();
            if (updateQuery != 0) {
                prdRetMsg = 1;
                System.out.println("prdRetMsg = " + prdRetMsg + " The Value of updateQuery is:" + updateQuery);
            } else {
                prdRetMsg = 0;
                System.out.println("prdRetMsg = " + prdRetMsg + " The Value of updateQuery is:" + updateQuery);

            }
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Could not Insert Product:");
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void RecordSale(SalesLog item){
        try {
            String insertSql = "insert into mystock.estore_daily_log(itemseqid, item_ref, item_Name, product, amount, qty_sold, cost_price, qty_left, maker, auth_stat, period_code, fin_year, trn_date, total_amt, selling_price, difference) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            int updateQuery = 0;
            PreparedStatement prepStat = dbConn.getPreparedStatement(insertSql);
            prepStat.setString(1, item.getItemSeqId());
            prepStat.setString(2, item.getItemRef());
            prepStat.setString(3, item.getItemName());
            prepStat.setString(4, item.getProduct());
            prepStat.setDouble(5, item.getAmount());
            prepStat.setInt(6,    item.getQtySold());
            prepStat.setDouble(7, item.getCostPrice());
            prepStat.setInt(8, item.getQtyLeft());
            prepStat.setString(9, item.getMaker());
            prepStat.setString(10, item.getAuthStat());
            prepStat.setString(11, item.getPeriodCode());
            prepStat.setString(12, item.getFinYear());
            prepStat.setString(13, item.getTrnDate());
            prepStat.setDouble(14, item.getTotalAmt());
            prepStat.setDouble(15, item.getAmountNorm());
            prepStat.setDouble(16, item.getDifference());
            
            updateQuery = prepStat.executeUpdate();
            if (updateQuery != 0) {
                prdRetMsg = 1;
                System.out.println("Success @Recordsale");
                System.out.println("prdRetMsg = " + prdRetMsg + " The Value of updateQuery is:" + updateQuery);
            } else {
                prdRetMsg = 0;
                System.out.println("Failure @Recordsale");
                System.out.println("prdRetMsg = " + prdRetMsg + " The Value of updateQuery is:" + updateQuery);

            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static int getDailySalesSeq(){
        try {
            
            String selectSeq = "SELECT getDailySalesSeq() FROM DUAL";
            ResultSet resSet = dbConn.getPreparedStatement(selectSeq).executeQuery();
          
            while(resSet.next()) {
                salesSeq = resSet.getInt(1);
            }       
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    
    public void AddItem(Items item){
        try {
            String insertSql = "insert into mystock.estore_product (item_refno,item,item_desc,product,record_status,item_status,total_qty,cost_price,selling_price,manufacturer,expiry_date,user_created,date_created,qty_left) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";
            int updateQuery = 0;
            PreparedStatement prepStat = dbConn.getPreparedStatement(insertSql);
            prepStat.setString(1, item.getItemRef());
            prepStat.setString(2, item.getItemName());
            prepStat.setString(3, item.getItemDesc());
            prepStat.setString(4, item.getProduct());
            prepStat.setString(5, item.getRecordStatus());
            prepStat.setString(6, item.getItemStatus());
            prepStat.setInt(7, item.getTotalQty());
            prepStat.setDouble(8, item.getCostPrice());
            prepStat.setDouble(9, item.getSellPrice());
            prepStat.setString(10, item.getManufacturer());
            prepStat.setString(11, item.getExpiryDate());
            prepStat.setString(12, item.getUserCreated());
            prepStat.setString(13, item.getDateCreated());
            prepStat.setInt(14, item.getQtyLeft());
            
            updateQuery = prepStat.executeUpdate();
            if (updateQuery != 0) {
                prdRetMsg = 1;
                System.out.println("prdRetMsg = " + prdRetMsg + " The Value of updateQuery is:" + updateQuery);
            } else {
                prdRetMsg = 0;
                System.out.println("prdRetMsg = " + prdRetMsg + " The Value of updateQuery is:" + updateQuery);

            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public static List<Items> getItems() {
        String SelectSql = "SELECT item_refno,item,item_desc,product,record_status,item_status,total_qty,cost_price,selling_price,manufacturer,expiry_date,user_created,date_created,qty_left FROM mystock.estore_product";
         
        List<Items> itemList = new LinkedList<>();

        try {
            ResultSet resSet = dbConn.getPreparedStatement(SelectSql).executeQuery();
            while (resSet.next()) {
                Items selectedItem = new Items(resSet.getString(1), resSet.getString(2), resSet.getString(3), resSet.getString(4), resSet.getString(5), resSet.getString(6), resSet.getInt(7), resSet.getDouble(8), resSet.getDouble(9), resSet.getString(10), resSet.getString(11), resSet.getString(12), resSet.getString(13), resSet.getInt(14));
                itemList.add(selectedItem);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }

        return itemList;
    }
    
    public ArrayList<String> getSearchItem(String find){
        String searchSql = "SELECT item, product FROM mystock.estore_product where item like ?";
        ArrayList<String>  item = new ArrayList<>();
                
        try {
            System.out.println("The Value of find is: "+find);
            PreparedStatement prepStat = dbConn.getPreparedStatement(searchSql);
            prepStat.setString(1, "%" + find + "%" );
            ResultSet rs = prepStat.executeQuery();
            while(rs.next()){
                item.add(rs.getString(1));
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return item;
    } 
    
    public ArrayList<String> getSearchProd(String find){
        String searchSql = "SELECT product FROM mystock.estore_product where product like ?";
        ArrayList<String>  item = new ArrayList<>();
                
        try {
            System.out.println("The Value of find is: "+find);
            PreparedStatement prepStat = dbConn.getPreparedStatement(searchSql);
            prepStat.setString(1, "%" + find + "%" );
            ResultSet rs = prepStat.executeQuery();
            while(rs.next()){
                item.add(rs.getString(1));
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return item;
    } 
    
    public static List<SalesLog> getDailySales() {
        String SelectSql = "select itemseqid,item_ref, item_Name, entry_seq, product, amount, qty_sold, maker,auth_stat,trn_date,qty_left,cost_price, period_code, fin_year, delete_stat, total_amt from mystock.estore_daily_log;";
        List<SalesLog> salesList = new LinkedList<>();
        try {
            ResultSet rs = dbConn.getPreparedStatement(SelectSql).executeQuery();
            while (rs.next()) {
                SalesLog sales = new SalesLog(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getDouble(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getInt(11), rs.getDouble(12), rs.getString(13), rs.getString(14), rs.getString(15), rs.getDouble(16),rs.getDouble(17),rs.getDouble(18));
                salesList.add(sales);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return salesList;
    }
    
    public static List<Items> getItemsById(String itemRef){
        List<Items> ls = new LinkedList<>();
        String sql = "SELECT item_refno,item,item_desc,product,record_status,item_status,total_qty,cost_price,selling_price,manufacturer,expiry_date,user_created,date_created, qty_left FROM mystock.estore_product where item_refno = '"+itemRef+"'";
        try {
            ResultSet rs = dbConn.getPreparedStatement(sql).executeQuery();
            while (rs.next()){
                Items item = new Items(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getDouble(8), rs.getDouble(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getInt(14));
                ls.add(item);
            }
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    public void updateItemByRef(Items item) { 
        try {
            String updateSql = "update mystock.estore_product set item=?, item_desc=?, product=?, record_status=?, item_status=?, total_qty=?, cost_price=?, selling_price=?, manufacturer=?, expiry_date=?, user_created=?, date_created=? where item_refno = '"+item.getItemRef()+"'";
            
            int updateQuery = 0;
            PreparedStatement prepStat = dbConn.getPreparedStatement(updateSql);
            
            prepStat.setString(1, item.getItemName());
            prepStat.setString(2, item.getItemDesc());
            prepStat.setString(3, item.getProduct());
            prepStat.setString(4, item.getRecordStatus());
            prepStat.setString(5, item.getItemStatus());
            prepStat.setInt(6, item.getTotalQty());
            prepStat.setDouble(7, item.getCostPrice());
            prepStat.setDouble(8, item.getSellPrice());
            prepStat.setString(9, item.getManufacturer());
            prepStat.setString(10, item.getExpiryDate());
            prepStat.setString(11, item.getUserCreated());
            prepStat.setString(12, item.getDateCreated());
            
            updateQuery = prepStat.executeUpdate();
            if (updateQuery != 0) {
                prdRetMsg = 1;
                System.out.println("Success! prdRetMsg = " + prdRetMsg + " The Value of updateQuery is: " + updateQuery);
            } else {
                prdRetMsg = 0;
                System.out.println("Error! prdRetMsg = " + prdRetMsg + " The Value of updateQuery is: " + updateQuery);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("The is an Error with Updating the data");
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void updateQtyLeftByRef(Items item) { 
        try {
            String updateSql = "update mystock.estore_product set qty_left=? where item_refno = '"+item.getItemRef()+"'";
            
            int updateQuery = 0;
            PreparedStatement prepStat = dbConn.getPreparedStatement(updateSql);
            
            prepStat.setInt(1, item.getQtyLeft());
              
            updateQuery = prepStat.executeUpdate();
            if (updateQuery != 0) {
                prdRetMsg = 1;
                System.out.println("Success! prdRetMsg = " + prdRetMsg + " The Value of updateQuery is: " + updateQuery);
            } else {
                prdRetMsg = 0;
                System.out.println("Error! prdRetMsg = " + prdRetMsg + " The Value of updateQuery is: " + updateQuery);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("The is an Error with Updating the data");
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void updateSalesByRef(Items item) { 
        try {
            String updateSql = "update mystock.estore_product set item=?, item_desc=?, product=?, record_status=?, item_status=?, total_qty=?, cost_price=?, selling_price=?, manufacturer=?, expiry_date=?, user_created=?, date_created=? where item_refno = '"+item.getItemRef()+"'";
            
            int updateQuery = 0;
            PreparedStatement prepStat = dbConn.getPreparedStatement(updateSql);
            
            prepStat.setString(1, item.getItemName());
            prepStat.setString(2, item.getItemDesc());
            prepStat.setString(3, item.getProduct());
            prepStat.setString(4, item.getRecordStatus());
            prepStat.setString(5, item.getItemStatus());
            prepStat.setInt(6, item.getTotalQty());
            prepStat.setDouble(7, item.getCostPrice());
            prepStat.setDouble(8, item.getSellPrice());
            prepStat.setString(9, item.getManufacturer());
            prepStat.setString(10, item.getExpiryDate());
            prepStat.setString(11, item.getUserCreated());
            prepStat.setString(12, item.getDateCreated());
            
            updateQuery = prepStat.executeUpdate();
            if (updateQuery != 0) {
                prdRetMsg = 1;
                System.out.println("Success! prdRetMsg = " + prdRetMsg + " The Value of updateQuery is: " + updateQuery);
            } else {
                prdRetMsg = 0;
                System.out.println("Error! prdRetMsg = " + prdRetMsg + " The Value of updateQuery is: " + updateQuery);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("The is an Error with Updating the data");
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<Products> getProducts() {
        String SelectSql = "SELECT product_group, group_desc, group_code, record_status, group_no, date_created, user_created FROM mystock.product_group";
        List<Products> prodList = new LinkedList<>();

        try {
            ResultSet resSet = dbConn.getPreparedStatement(SelectSql).executeQuery();
            while (resSet.next()) {
                Products selectedProd = new Products(resSet.getString(1), resSet.getString(2), resSet.getString(3), resSet.getString(4), resSet.getString(5), resSet.getString(6), resSet.getString(7));
                prodList.add(selectedProd);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return prodList;
    }

}
