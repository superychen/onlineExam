<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>农芯乐信息管理系统</title>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/city-picker.data.js"></script>
<script src="${pageContext.request.contextPath}/js/city-picker.js"></script>
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
        	<h2>修改试题
            	<%--<a class="greenbtn add"  href="#">新增</a>--%>
            </h2>
            <div class="clear" style="height:30px"></div>
          	
            <span class="information">
            	<div class="clear" style="height:10px"></div>
            	
                <form class="datable">
                    <table width="100%" border="1" cellpadding="0" cellspacing="0">
                    	<tr>
                            <th width="10%">题目号</th>
                            <th width="10%">题目</th>
                            <th width="10%">题目类型</th>
                            <th width="10%">题目答案</th>
                            <th width="30%">解析</th>
                            <th width="10%">操作</th>
                        </tr>
                    <c:forEach items="${subjects}" var="subjects">
                        <tr>
                        	<td class="subjectId">${subjects.id}</td>
                            <td>${subjects.title}</td>
                            <td>
                                <c:if test="${subjects.eaxmtype==1}">
                                    选择题
                                </c:if>
                                <c:if test="${subjects.eaxmtype==2}">
                                    判断题
                                </c:if>
                            </td>
                            <td>${subjects.answer}</td>
                            <td>${subjects.explains}</td>
                            <td><a class="dolink"
                                   <c:if test="${subjects.eaxmtype==1}">
                                       href="${pageContext.request.contextPath}/findOne.do?id=${subjects.id}"
                                   </c:if>
                                    <c:if test="${subjects.eaxmtype==2}">
                                        href = "${pageContext.request.contextPath}/findPan.do?id=${subjects.id}"
                                    </c:if>
                                  <%--onclick="callback()"--%>>修改</a></td>
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
<div class="popbox">
	<h2>新增物流车辆信息</h2>
    <form>
    	<div class="clear" style="height:50px;"></div>
    	<table cellpadding="0" cellspacing="0" width="100%">
        	<tr>
            	<td width="10%">车牌号</td>
                <td width="40%"><input class="textput" type="text"/></td>
                <td width="50%"><p class="tip">*此处不能为空</p></td>
            </tr>
            <tr>
            	<td>车型</td>
                <td><input class="textput" type="text"/></td>
                <td><p class="wrrong">*此处不能为空</p></td>
            </tr>
            <tr>
            	<td>司机</td>
                <td><input class="textput" type="text"/></td>
                <td><p class="wrrong">*此处不能为空</p></td>
            </tr>
            <tr>
            	<td>手机</td>
                <td><input class="textput" type="text"/></td>
                <td><p class="wrrong">*此处不能为空</p></td>
            </tr>
            <tr>
            	<td>负责区域</td>
                <td><input class="textput" type="text"/></td>
                <td><p class="wrrong">*此处不能为空</p></td>
            </tr>
            <tr>
            	<td>车辆归属</td>
                <td>
                	<select>
                    	<option>--请选择--</option>
                    	<option>自有</option>
                        <option>第三方</option>
                    </select>
                </td>
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
	    var subjectId = (this).parent().siblings(".subjectId").val();
	    console.log(subjectId);

		$('body').append('<div id="mask"></div>');
		$('#mask').fadeIn();
		$('.popbox').css('display', 'block');
	}
function addclose() {
	$('#mask').fadeOut();
	$('.popbox').css('display', 'none');
}	
</script>
