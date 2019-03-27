package com.dbc;


import com.JBean.foodbean;
import com.JBean.userbean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class dataBase {
    //声明Connection对象
    Connection con;
    //驱动程序名
    String driver = "com.mysql.jdbc.Driver";
    //URL指向要访问的数据库名mydata
    String url = "jdbc:mysql://localhost:3306/chenli";
    //MySQL配置时的用户名
    String user = "root";
    //MySQL配置时的密码
    String password = "";

    private void sqlcon() {
        try {
            //加载驱动程序
            Class.forName(driver);
            //1.getConnection()方法，连接MySQL数据库！！
            con = DriverManager.getConnection(url, user, password);
            if (!con.isClosed())
                System.out.println("Succeeded connecting to the Database!");

        } catch (ClassNotFoundException e) {
            //数据库驱动类异常处理
            System.out.println("Sorry,can`t find the Driver!");
            e.printStackTrace();
        } catch (SQLException e) {
            //数据库连接失败异常处理
            e.printStackTrace();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            System.out.println("数据库数据成功获取！！");
        }
    }

    public List<userbean> usersql() throws SQLException {
        List<userbean> list = new ArrayList<userbean>();
        //遍历查询结果集
        sqlcon();
        //要执行的SQL语句
        String sql = "select * from user";
        //2.创建statement类对象，用来执行SQL语句！！
        Statement statement = con.createStatement();
        //3.ResultSet类，用来存放获取的结果集！！
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("id" + "\t" + "姓名" + "\t" + "密码" + "\t" + "用户类型");
        System.out.println("-----------------");

        while (rs.next()) {
            //获取stuname这列数据
//
            userbean ub = new userbean(Integer.parseInt(rs.getString("uid")), rs.getString("uname"), rs.getString("pwd"), Integer.parseInt(rs.getString("utype")));
            list.add(ub);
            System.out.println(ub.getUid() + "\t" + ub.getUname() + "\t" + ub.getPwd() + "\t" + ub.getUtype());
        }
        rs.close();
        con.close();
        return list;
    }

    public List<foodbean> foodsql() throws SQLException {
        sqlcon();
        List<foodbean> list = new ArrayList<foodbean>();
        Statement statement = con.createStatement();
        //要执行的SQL语句
        String sql = "select fname,ftype,price from food";
        //3.ResultSet类，用来存放获取的结果集！！
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("fname" + "\t" + "ftype" + "\t" + "价格");
        System.out.println("-----------------");
        while (rs.next()) {
            //获取stuname这列数据
//
            foodbean fb = new foodbean(rs.getString("fname"), rs.getString("ftype"), rs.getDouble("price"));
            list.add(fb);
            System.out.println(fb.getFname() + "\t" + fb.getFtype() + "\t" + fb.getPrice() );
        }
            rs.close();
            con.close();
            return list;
        }

    }