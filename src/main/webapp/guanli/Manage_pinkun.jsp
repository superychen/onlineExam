<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>农芯乐信息管理系统</title>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<script src="../js/city-picker.data.js"></script>
<script src="../js/city-picker.js"></script>
<script src="../js/date.js"></script>
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
        	<h2>学生信息管理表
            	<a class="greenbtn add" onclick="callback()" href="#">修改</a>
            </h2>
            <div class="clear" style="height:30px"></div>
          	
            <span class="information">
            	<div class="clear" style="height:10px"></div>
            	
                <form class="datable">
                    <table width="100%" border="1" cellpadding="0" cellspacing="0">
                    	<tr>
                            <th width="8%">用户姓名</th>
                            <th width="5%">性别</th>
                            <th width="17%">身份证</th>
                            <th width="30%">住址</th>
                            <th width="10%">电话</th>
                            <th width="10%">分数</th>
                        </tr>
                     <c:forEach items="${students}" var="students">
                        <tr>
                        	<td>${students.username}</td>
                            <td>${students.sex}</td>
                            <td>${students.idCard}</td>
                            <td>${students.address}</td>
                        	<td>${students.phone}</td>
                            <td style="color: orangered;font-weight: bolder">${students.score}</td>
                        </tr>
                     </c:forEach>
                    </table>
                </form>
                <div class="clear"></div>
            </span>
            <div class="clear" style="height:50px"></div>
           
            
        </div>
    </div>
    <div class="clearh" style="height:0"></div>
</div>


<!--弹出新增层-->
<div class="popbox" style="width:900px">
	<h2>新增建档立卡贫困户</h2>
    <form name="reg_testdate" style="width:800px">
    	<div class="clear" style="height:50px;"></div>
    	<table cellpadding="0"  cellspacing="0" width="100%">
        	<tr>
            	<td width="8%">姓名</td>
                <td width="70%" class="address"><input class="textput" type="text"/></td>
                <td width="22%"><p class="wrrong">*此处不能为空</p></td>
            </tr>
            <tr>
            	<td>性别</td>
                <td>
                	<select>
                    	<option>男</option>
                        <option>女</option>
                    </select>
                </td>
                <td><p class="wrrong">*此处不能为空</p></td>
            </tr>
        	<tr>
            	<td>身份证</td>
                <td><input class="textput" type="text"/></td>
                <td><p class="wrrong">*此处不能为空</p></td>
            </tr>
            <tr>
            	<td>住址</td>
                <td class="address"><input id="city-picker3"  type="text" class="addr" readonly data-toggle="city-picker"/><input class="smput"onFocus="this.value=''" onBlur="this.style='color:#000'" value="镇/村"  type="text"/></td>
                <td><p class="wrrong">*此处不能为空</p></td>
            </tr>
            <tr>
            	<td>电话</td>
                <td><input class="textput" type="text"/></td>
                <td><p class="wrrong">*此处不能为空</p></td>
            </tr>
             <tr>
            	<td>家庭人口</td>
                <td><input class="textput" type="text"/></td>
                <td><p class="wrrong">*此处不能为空</p></td>
            </tr>
             <tr>
            	<td>劳动人口</td>
                <td><input class="textput" type="text"/></td>
                <td><p class="wrrong">*此处不能为空</p></td>
            </tr>
            <tr>
            	<td></td>
                <td colspan="2">
                	<div class="clear" style="height:20px"></div>
                	<a href="#" class="linebtn">保存</a>
                	<a href="#" onclick="addclose();" class="greenbtn">取消</a>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
<script>
function callback() {
	
		$('body').append('<div id="mask"></div>');
		$('#mask').fadeIn();
		$('.popbox').css('display', 'block');
	}
function addclose() {
	$('#mask').fadeOut();
	$('.popbox').css('display', 'none');
}	



</script>
