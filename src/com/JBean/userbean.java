package com.JBean;

public class userbean implements java.io.Serializable{
    private int uid;
    private String pwd;
    private  String uname;
    private int utype;

    //                             get 方法
    public int getUid(){
        return uid;
    }
    public String getPwd(){
        return pwd;
    }
    public String getUname(){
        return uname;
    }
    public int getUtype(){ return  utype; }

    //                        set  方法
    public void setUid(int uid){
        this.uid = uid;
    }
    public void  setPwd(String pwd){
        this.pwd = pwd;
    }
    public void setUname(String uname){
        this.uname = uname;
    }
    public void setUtype(int utype){ this.utype = utype;}

    public userbean(int uid, String uname, String pwd, int utype){
        super();
        this.uid = uid;
        this.uname = uname;
        this.pwd = pwd;
        this.utype = utype;
    }
}
