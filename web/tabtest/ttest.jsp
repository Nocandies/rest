<%@ page import="com.dbc.dataBase" %>
<%@ page import="com.JBean.userbean" %>
<%@ page import="java.util.List" %>
<%@ page import="com.JBean.foodbean" %><%--
  Created by IntelliJ IDEA.
  User: cl
  Date: 19-3-11
  Time: 上午10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>

    <%--<title>table test</title>--%>
    <%--<link rel="stylesheet" type="text/css" href="css/style.css"/>--%>
    <%--<script src="js/tablejs.js"></script>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div>--%>
    <%--<input id="btnget" type="button" value="点击">--%>
<%--</div>--%>
<%--<div>--%>
    <%--<table border="1">--%>
        <%--<tr>--%>
            <%--<th>uid</th>--%>
            <%--<th>uname</th>--%>
            <%--<th>pwd</th>--%>
            <%--<th>utype</th>--%>
            <%--&lt;%&ndash;<td>uid</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>uname</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>pwd</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>utype</td>&ndash;%&gt;--%>
        <%--</tr>--%>
        <%--<%--%>
            <%--dataBase dao=new dataBase();--%>
            <%--List<userbean> list =dao.csql();--%>
            <%--for(userbean tl:list)--%>
            <%--{%>--%>
        <%--<tr>--%>
            <%--<td><%=tl.getUid() %></td>--%>
            <%--<td><%=tl.getUname() %></td>--%>
            <%--<td><%=tl.getPwd() %></td>--%>
            <%--<td><%=tl.getUtype() %></td>--%>
        <%--</tr>--%>
        <%--<%}--%>
        <%--%>--%>
    <%--</table>--%>
<%--</div>--%>
<%--<div>--%>
    <%--&lt;%&ndash;<table>&ndash;%&gt;--%>
        <%--&lt;%&ndash;&ndash;%&gt;--%>
    <%--&lt;%&ndash;</table>&ndash;%&gt;--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>自适应左侧手风琴下拉菜单js代码</title>

    <script src="js/adapter.js"></script> <!--rem适配js-->
    <script src="js/table.js"></script>

    <link rel="stylesheet" href="css/base.css"> <!--初始化文件-->
    <link rel="stylesheet" href="css/menu.css"> <!--主样式-->
    <link rel="stylesheet" href="css/table.css"> <!--主样式-->
    <script src="jquery-1.10.2.min.js"></script>
</head>
<body>
<div id="menu">
    <!--隐藏菜单-->
    <!-- <div id="ensconce">
        <h2>
            <img src="images/show.png" alt="">
            用户操作
        </h2>
    </div> -->

    <!--显示菜单-->
    <div id="open">
        <div class="navH">
            请选择操作
            <!-- <span><img class="obscure" src="images/obscure.png" alt=""></span> -->
        </div>
        <div class="navBox">
            <ul>
                <li>
                    <h2 class="obtain">用户中心<i></i></h2>
                    <div class="secondary">
                        <h3 id="mainpage" type="button">主页</h3>
                        <h3>最近购买</h3>
                        <h3>猜您喜欢</h3>
                        <h3>钱包</h3>
                        <h3>设置</h3>
                        <h3>帮助反馈</h3>
                    </div>
                </li>
                <li>
                    <h2 class="obtain">点餐<i></i></h2>
                    <div class="secondary">
                        <h3>湘菜</h3>
                        <h3>川菜</h3>
                        <h3>粤菜</h3>
                        <h3>闽菜</h3>
                        <h3>苏菜</h3>
                        <h3>浙菜</h3>
                    </div>
                </li>
                <li>
                    <h2 class="obtain">外卖<i></i></h2>
                    <div class="secondary">
                        <h3>湘菜</h3>
                        <h3>川菜</h3>
                        <h3>粤菜</h3>
                        <h3>闽菜</h3>
                        <h3>苏菜</h3>
                        <h3>浙菜</h3>
                    </div>
                </li>
                <li>
                    <h2 class="obtain">联系我们<i></i></h2>
                    <div class="secondary">
                        <h3>Tel:12313123123</h3>
                        <h3>QQ:123456565</h3>
                        <h3>客服</h3>
                        <h3>e-mail:1233165@123.com</h3>
                    </div>
                </li>
                <!-- <li>
                    <h2 class="obtain">广州景点<i></i></h2>
                    <div class="secondary">
                        <h3>白云山</h3>
                        <h3>长隆</h3>
                        <h3>黄花岗公园</h3>
                        <h3>中山纪念堂</h3>
                        <h3>华南植物园</h3>
                        <h3>南沙湿地公园</h3>
                    </div>
                </li> -->
            </ul>
        </div>
    </div>
</div>
<div id="table">
    <div id="realtable">
        <div class="table1">
            <table border="1">
                <tr>
                    <th>菜名</th>
                    <th>类型</th>
                    <th>价格</th>
                    <%--<th>用户类型</th>--%>
                    <%--<td>uid</td>--%>
                    <%--<td>uname</td>--%>
                    <%--<td>pwd</td>--%>
                    <%--<td>utype</td>--%>
                </tr>
                <%
                    dataBase dao=new dataBase();
                    List<foodbean> list =dao.foodsql();
                    for(foodbean tl:list)
                    {%>
                <tr>
                    <td><%=tl.getFname() %></td>
                    <td><%=tl.getFtype() %></td>
                    <td><%=tl.getPrice() %></td>
                    <%--<td><%=tl.getUtype() %></td>--%>
                </tr>
                <%}
                %>
            </table>
        </div>
    </div>
</div>
<script src="js/menu.js"></script> <!--控制js-->

</body>
</html>