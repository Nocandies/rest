package com.JBean;

import java.sql.Date;

public class billbean {
    private int bid;
    private int uid;
    private int fid;
    private Date time;

    public billbean(int bid, int uid, int fid, Date time) {
        this.bid = bid;
        this.uid = uid;
        this.fid = fid;
        this.time = time;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
