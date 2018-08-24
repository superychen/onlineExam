<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>农芯乐信息管理系统</title>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<script src="../js/city-picker.data.js"></script>
<script src="../js/city-picker.js"></script>
<style>
.city-picker-span { width:300px;}
</style>
</head>

<jsp:include page="header.jsp"/>
<div class="messagebox">
	<jsp:include page="middler.jsp"/>
    <div class="messageright">
    	<div class="formpage">
        	<div class="clear" style="height:20px"></div>
        	<h2>账户修改</h2>
            <div class="clear" style="height:30px"></div>
          	
            <span class="information">
            	<div class="clear" style="height:10px"></div>
            	<a class="headpic1" href="#"><img src="../images/sm_headpic.jpg" ></a>
                <form action="${pageContext.request.contextPath}/updateStu.do" method="post">
                    <table>
                        <tr>
                            <td>登录帐号：</td>
                            <td colspan="2">${student1.usercode}
                                <input type="hidden" name="usercode" value="${student1.usercode}"></td></tr>
                        <tr>
                        <tr>
                            <td>身份证号：</td>
                            <td colspan="2">${student1.idCard}</td></tr>
                         <tr>
                            <td>真实姓名：</td>
                            <td><input class="textput" type="text" name="username"/></td>
                            <td><p class="wrrong">*信息有误</p></td>
                        </tr>
                        <tr>
                            <td>电子邮箱：</td>
                            <td><input class="textput" type="text" name="email"/></td>
                            <td><a class="link" href="#">&nbsp;&nbsp;更换邮箱</a></td></tr>

                        <tr>
                            <td>性别：</td>
                            <td><label>女<input name="sex" type="radio" value="女"></label><label>男<input name="sex" type="radio" value="男"></label></td>
                            <td><p class="wrrong">*此处不能为空</p></td>
                        </tr>
                        <tr>
                            <td>手机号码：</td>
                            <td><input class="textput" type="text" name="phone "/></td>
                            <td><p class="wrrong"></p></td>
                        </tr>
                        <tr>
                            <td>所在地区：</td>
                            <td class="address"><input id="city-picker3" class="addr" readonly data-toggle="city-picker" name="address" type="text"/></td>
                            <td><p class="wrrong"></p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td colspan="2"><input type="submit" class="greenbtn" value="保存修改"></td>
                        </tr>
                    </table>
                </form>
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
