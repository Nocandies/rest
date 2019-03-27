package com.JBean;

public class foodbean {
    private int fid;
    private String fname;
    private String ftype;
    private double price;
    private int total;
    private int sold;
    private int status;

    public int getFid() {   return fid;}
    public void setFid(     int fid) {this.fid = fid;}
    public String getFname() {  return fname;}
    public void setFname(String fname) {    this.fname = fname; }
    public String getFtype() {    return ftype;}
    public void setFtype(String ftype) {   this.ftype = ftype; }
    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
    public int getTotal() { return total; }
    public void setTotal(int total) { this.total = total; }
    public int getSold() { return sold; }
    public void setSold(int sold) { this.sold = sold; }
    public int getStatus() { return status; }
    public void setStatus(int status) { this.status = status; }

    public foodbean(int fid, String fname, String ftype, double price, int total, int sold, int status) {
        this.fid = fid;
        this.fname = fname;
        this.ftype = ftype;
        this.price = price;
        this.total = total;
        this.sold = sold;
        this.status = status;
    }

    public foodbean(String fname, String ftype, double price) {
        this.fname = fname;
        this.ftype = ftype;
        this.price = price;
    }
}
