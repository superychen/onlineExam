<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>农芯乐信息管理系统</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
</head>

<jsp:include page="header.jsp"/>
<div class="messagebox">
    <jsp:include page="middler.jsp"/>
    <div class="messageright">
    	<div class="picbig">
    		<img src="${pageContext.request.contextPath}/images/welcome.jpg">
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
