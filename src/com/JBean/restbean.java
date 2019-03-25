package com.JBean;

public class restbean implements java.io.Serializable{
    private int num;
    private String pwd;
    private  String name;

    //                               get 方法
    public restbean(){
    }
    public int getNum(){
        return num;
    }
    public String getPwd(){
        return pwd;
    }
    public String getName(){
        return name;
    }


    //                            set  方法
    public void setNum(int num){
        this.num = num;
    }
    public void  setPwd(String pwd){
        this.pwd = pwd;
    }
    public void setName(String name){
        this.name = name;
    }

    public restbean(int num,String pwd,String name){
        super();
        this.num = num;
        this.name = name;
        this.pwd = pwd;
    }
}
