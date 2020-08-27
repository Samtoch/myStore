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
public class SalesLog {
    private String itemSeqId;
    private String itemRef;
    private String itemName; 
    private int entrySeq;
    private String product;
    private double amount;
    private int qtySold;
    private String maker;
    private String authStat;
    private String trnDate;
    private int qtyLeft;
    private double costPrice;
    private String periodCode;
    private String finYear;
    private String deleteStat;
    private double totalAmt;
    private double amountNorm;
    private double difference;

    public SalesLog(String itemSeqId, String itemRef, String itemName, int entrySeq, String product, double amount, int qtySold, String maker, String authStat, String trnDate, int qtyLeft, double costPrice, String periodCode, String finYear, String deleteStat, double totalAmt, double amountNorm, double difference) {
        this.itemSeqId = itemSeqId;
        this.itemRef = itemRef;
        this.itemName = itemName;
        this.entrySeq = entrySeq;
        this.product = product;
        this.amount = amount;
        this.qtySold = qtySold;
        this.maker = maker;
        this.authStat = authStat;
        this.trnDate = trnDate;
        this.qtyLeft = qtyLeft;
        this.costPrice = costPrice;
        this.periodCode = periodCode;
        this.finYear = finYear;
        this.deleteStat = deleteStat;
        this.totalAmt = totalAmt;
        this.amountNorm = amountNorm;
        this.difference = difference;
    }

    public String getItemSeqId() {
        return itemSeqId;
    }

    public void setItemSeqId(String itemSeqId) {
        this.itemSeqId = itemSeqId;
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

    public int getEntrySeq() {
        return entrySeq;
    }

    public void setEntrySeq(int entrySeq) {
        this.entrySeq = entrySeq;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public int getQtySold() {
        return qtySold;
    }

    public void setQtySold(int qtySold) {
        this.qtySold = qtySold;
    }

    public String getMaker() {
        return maker;
    }

    public void setMaker(String maker) {
        this.maker = maker;
    }

    public String getAuthStat() {
        return authStat;
    }

    public void setAuthStat(String authStat) {
        this.authStat = authStat;
    }

    public String getTrnDate() {
        return trnDate;
    }

    public void setTrnDate(String trnDate) {
        this.trnDate = trnDate;
    }

    public int getQtyLeft() {
        return qtyLeft;
    }

    public void setQtyLeft(int qtyLeft) {
        this.qtyLeft = qtyLeft;
    }

    public double getCostPrice() {
        return costPrice;
    }

    public void setCostPrice(double costPrice) {
        this.costPrice = costPrice;
    }

    public String getPeriodCode() {
        return periodCode;
    }

    public void setPeriodCode(String periodCode) {
        this.periodCode = periodCode;
    }

    public String getFinYear() {
        return finYear;
    }

    public void setFinYear(String finYear) {
        this.finYear = finYear;
    }

    public String getDeleteStat() {
        return deleteStat;
    }

    public void setDeleteStat(String deleteStat) {
        this.deleteStat = deleteStat;
    }

    public double getTotalAmt() {
        return totalAmt;
    }

    public void setTotalAmt(double totalAmt) {
        this.totalAmt = totalAmt;
    }

    public double getAmountNorm() {
        return amountNorm;
    }

    public void setAmountNorm(double amountNorm) {
        this.amountNorm = amountNorm;
    }

    public double getDifference() {
        return difference;
    }

    public void setDifference(double difference) {
        this.difference = difference;
    }
        
}
