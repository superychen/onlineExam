<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>login</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style1.css" >
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
</head>
<body>
<div class="all">
    <div class="title">
        <div class="logo">
            <img src="images/logo.jpg" class="logo1">
            <p class="slogan">想成为老司机，登录是你的第一步！</p>
        </div>
        <div class="menu">
            <ul>
                <li><a href="${pageContext.request.contextPath}/oldDriver.jsp">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/login.jsp">登录</a></li>
                <li><a href="${pageContext.request.contextPath}/register.jsp">注册</a></li>
            </ul>
        </div>
    </div>
    <div class="main">
        <div class="backgrand">
            <img src="images/background.jpg" class="backgrand1" width="520" height="240">
        </div>

  	    <form action="${pageContext.request.contextPath}/login.do" method="post">
        <div class="read">
            <div class="message">
          
                <p>车友登录</p>
                <ul>
                    <li>用户名：<input type="text" name="usercode" id="userC" onblur="checkUser()"></li>
                    <li><p id="userError"></p></li>
                    <li>密    码：  <input type="password" name="password"></li>
                    <br/>
                    <li><input type="submit" name="login" id="button" value="登陆"  class="button"> <a href="#">忘记密码</a>
                     <a href="${pageContext.request.contextPath}/register.jsp">注册账号
                    </a></li>
                </ul>
            </div>
                <script type="text/javascript">
                    function checkUser() {
                        var usercode = $("#userC").val();
                        $.post("check.do",{usercode:usercode},function (data,status) {
                            if(data == 1){
                                $("#userError").html("<p style='color: green'>用户名可用</p>");
                            }
                            if(data==2){
                                $("#userError").html("<p style='color: red'>用户名不存在</p>");
                            }
                        })
                    }
                </script>
            <br />
             <div class="other">
                <a href="#">QQ登录</a>
                <a href="#">微信登录</a>
            </div>
            <br />
            <div class="other1">
                <p>还没有社区账号？</p>
                <a href="${pageContext.request.contextPath}/register.jsp">立即注册社区账号</a>
            </div>
        </div>
     </form>
    </div>
</div>
</body>
</html>