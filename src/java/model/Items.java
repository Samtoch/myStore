/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author samuel
 */
public class Items {
    
    private String itemRef;
    private String itemName;
    private String itemDesc;
    private String product;
    private String recordStatus;
    private String itemStatus;
    private int totalQty;
    private double costPrice;
    private double sellPrice;
    private String manufacturer;
    private String expiryDate;
    private String userCreated;
    private String dateCreated;
    private int qtyLeft;

    public Items(String itemRef, String itemName, String itemDesc, String product, String recordStatus, String itemStatus, int totalQty, double costPrice, double sellPrice, String manufacturer, String expiryDate, String userCreated, String dateCreated, int qtyLeft) {
        this.itemRef = itemRef;
        this.itemName = itemName;
        this.itemDesc = itemDesc;
        this.product = product;
        this.recordStatus = recordStatus;
        this.itemStatus = itemStatus;
        this.totalQty = totalQty;
        this.costPrice = costPrice;
        this.sellPrice = sellPrice;
        this.manufacturer = manufacturer;
        this.expiryDate = expiryDate;
        this.userCreated = userCreated;
        this.dateCreated = dateCreated;
        this.qtyLeft = qtyLeft;
    }

    public String getItemRef() {
        return itemRef;
    }

    public void setItemRef(String itemRef) {
        this.itemRef = itemRef;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getItemDesc() {
        return itemDesc;
    }

    public void setItemDesc(String itemDesc) {
        this.itemDesc = itemDesc;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public String getRecordStatus() {
        return recordStatus;
    }

    public void setRecordStatus(String recordStatus) {
        this.recordStatus = recordStatus;
    }

    public String getItemStatus() {
        return itemStatus;
    }

    public void setItemStatus(String itemStatus) {
        this.itemStatus = itemStatus;
    }

    public int getTotalQty() {
        return totalQty;
    }

    public void setTotalQty(int totalQty) {
        this.totalQty = totalQty;
    }

    public double getCostPrice() {
        return costPrice;
    }

    public void setCostPrice(double costPrice) {
        this.costPrice = costPrice;
    }

    public double getSellPrice() {
        return sellPrice;
    }

    public void setSellPrice(double sellPrice) {
        this.sellPrice = sellPrice;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(String expiryDate) {
        this.expiryDate = expiryDate;
    }

    public String getUserCreated() {
        return userCreated;
    }

    public void setUserCreated(String userCreated) {
        this.userCreated = userCreated;
    }

    public String getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(String dateCreated) {
        this.dateCreated = dateCreated;
    }

    public int getQtyLeft() {
        return qtyLeft;
    }

    public void setQtyLeft(int qtyLeft) {
        this.qtyLeft = qtyLeft;
    }
}
