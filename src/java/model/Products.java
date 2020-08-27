/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 * @author samuel
 */
public class Products {
    private String prodGroup;
    private String prodDesc;
    private String prodCode;
    //private String prodExpDate;
    private String recordStat;
    private String prodGroupNo;
    private String dateCreated;
    private String userCreated;
    
    //product_group group_desc group_code record_status group_no date_created user_created

    public Products(String prodGroup, String prodDesc, String prodCode, String recordStat, String prodGroupNo, String dateCreated, String userCreated) {
        this.prodGroup = prodGroup;
        this.prodDesc = prodDesc;
        this.prodCode = prodCode;
        //this.prodExpDate = prodExpDate;
        this.recordStat = recordStat;
        this.prodGroupNo = prodGroupNo;
        this.dateCreated = dateCreated;
        this.userCreated = userCreated;
    }

    public String getProdGroup() {
        return prodGroup;
    }

    public void setProdGroup(String prodGroup) {
        this.prodGroup = prodGroup;
    }

    public String getProdDesc() {
        return prodDesc;
    }

    public void setProdDesc(String prodDesc) {
        this.prodDesc = prodDesc;
    }

    public String getProdCode() {
        return prodCode;
    }

    public void setProdCode(String prodCode) {
        this.prodCode = prodCode;
    }
    
//    public String getProdExpDate() {
//        return prodExpDate;
//    }
//
//    public void setProdExpDate(String prodExpDate) {
//        this.prodExpDate = prodExpDate;
//    }

    public String getRecordStat() {
        return recordStat;
    }

    public void setRecordStat(String recordStat) {
        this.recordStat = recordStat;
    }

    public String getProdGroupNo() {
        return prodGroupNo;
    }

    public void setProdGroupNo(String prodGroupNo) {
        this.prodGroupNo = prodGroupNo;
    }

    public String getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(String dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getUserCreated() {
        return userCreated;
    }

    public void setUserCreated(String userCreated) {
        this.userCreated = userCreated;
    }
    
}
