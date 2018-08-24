<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>农芯乐信息管理系统</title>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
</head>

<jsp:include page="header.jsp"/>
<div class="messagebox">
   <jsp:include page="middler.jsp"/>
    <div class="messageright">
    	<div class="formpage">
        	<div class="clear" style="height:20px"></div>
        	<h2>账户信息</h2>
            <div class="clear" style="height:50px"></div>
          	<h3>您的账户信息</h3>
            <span class="information">
            	<div class="clear" style="height:10px"></div>
            	<a class="headpic" href="#"><img src="${pageContext.request.contextPath}/images/sm_headpic.jpg" ></a>
                <span>
                	<p>登录帐号 ：${student1.usercode}</p>
                    <p>绑定邮箱 ：${student1.email}</p>
                    <p>手机号码 ：${student1.phone}</p>
                    <p>身份证号 ：${student1.idCard}&nbsp;&nbsp;&nbsp;<a class="link" href="${pageContext.request.contextPath}/guanli/updateUser.jsp">修改用户信息</a></p>
                </span>
                <div class="clear"></div>
            </span>
            <div class="clear" style="height:50px"></div>
        </div>
    </div>
    <div class="clearh" style="height:0"></div>
</div>

</body>
</html>
<script>
	$(".Fstage>li").click(function(){
		if($(this).children("ul").hasClass("Tstage"))
		$(this).siblings("li").children("ul").hide();
		$(this).children("ul").slideDown();
	});
</script>
