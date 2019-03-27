<%--
  Created by IntelliJ IDEA.
  User: cl
  Date: 19-3-7
  Time: 下午5:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>陈力的登录界面</title>
  <link
          rel="stylesheet"
          href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
  <link href="css/default.css" rel="stylesheet" type="text/css"/>
  <link href="css/styles.css" rel="stylesheet" type="text/css"/>
  <link href="css/loaders.css" rel="stylesheet" type="text/css"/>


  <link rel="stylesheet" media="screen" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/reset.css"/>
</head>
<body>
<div id="particles-js">
  <div class="login">
    <div class='login_fields'>
      <form  action="aaaa.do" method="post" onsubmit="return sub();">
        <div class='login_fields__user'>
          <div class='icon'>
            <i class="fa fa-user-o fa-2x" aria-hidden="true"></i>
          </div>
          <input
                  name="id"
                  placeholder='用户名'
                  maxlength="16"
                  type='text'
                  autocomplete="off"/>
        </div>
        <div class='login_fields__password password'>
          <div class='icon'>
            <i class="fa fa-lock fa-2x" aria-hidden="true"></i>
          </div>
          <input
                  name="pwd"
                  placeholder='密码'
                  maxlength="16"
                  type='password'
                  autocomplete="off">
          <i class="fa fa-eye-slash fa-2x" style="float:right"></i>
        </div>
        <div class='login_fields__submit'  style="text-align:center;margin-top: 36px">
          <input type='submit' value='登录'>
        </div>
      </form>
    </div>
  </div>
</div>
</div>
<script src="js/particles.min.js"></script>
<script src="js/app.js"></script>

</body>
</html>
