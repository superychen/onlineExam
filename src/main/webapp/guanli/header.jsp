<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/11
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body style="background:#328f46">
<div class="headiv">
    <div class="logotag">
        <a class="logo"><img src="${pageContext.request.contextPath}/images/logo.png" width="440" height="65"></a>
        <b class="line"></b>
    </div>
    <a class="username">欢迎登录：<i>${student1.username}</i></a>
    <span class="btnbox">
    	<a class="update" href="${pageContext.request.contextPath}/guanli/updateUser.jsp" title="修改"></a>
        <a class="exit" href="${pageContext.request.contextPath}/loginout.do" title="退出"></a>
    </span>
    <div class="clear" style="height:20px; background:#328f46"></div>
</div>