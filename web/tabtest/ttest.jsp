<%@ page import="com.dbc.dataBase" %>
<%@ page import="com.JBean.restbean" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: cl
  Date: 19-3-11
  Time: 上午10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>table test</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <script src="js/tablejs.js"></script>
</head>
<body>
<div>
    <input id="btnget" type="button" value="点击">
</div>
<div>
    <table border="1">
        <tr>
            <td>id</td>
            <td>name</td>
            <td>creator</td>
        </tr>
        <%
            dataBase dao=new dataBase();
            List<restbean> list =dao.consql();
            for(restbean tl:list)
            {%>
        <tr>
            <td><%=tl.getNum() %></td>
            <td><%=tl.getName() %></td>
            <td><%=tl.getPwd() %>></td>
        </tr>
        <%}
        %>
    </table>
</div>
<div>
    <%--<table>--%>
        <%----%>
    <%--</table>--%>
</div>
</body>
</html>
