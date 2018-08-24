<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>用户注册</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/zhuche.css">
</head>
<script>
	function myReload() {
		document.getElementById("CreateCheckCode").src="${pageContext.request.contextPath}/kaptcha.png"
    }
</script>
<body>


<sf:form action="${pageContext.request.contextPath}/register.do" method="post" modelAttribute="student">
	<ul class="zhu_ul">


	<%--	<c:forEach items="${error}" var="error">
			<li style="color: red">
					${error.defaultMessage}
			</li>
		</c:forEach>--%>

		<li>
			<span class="zhu_yy">用户名</span>
			<input type="text" class="zhu_ce" name="usercode">
			<p><sf:errors path="usercode"></sf:errors></p>
		</li>

		<li><span class="zhu_yy">姓名</span>
			<input type="text" class="zhu_ce" name="username">
			<p><sf:errors path="username"></sf:errors></p>
		</li>
		<li>
			<span class="zhu_yy">密码</span>
			<input type="password" class="zhu_ce" name="password">
			<p><sf:errors path="password"></sf:errors></p>
		</li>
		<li>
			<span class="zhu_yy">确认密码</span>
			<input type="password" class="zhu_ce" name="confirm">
		</li>
		<li>
			<span class="zhu_yy">电子邮箱</span>
			<input type="text" class="zhu_ce" name="email">
			<p><sf:errors path="email"></sf:errors></p>
		</li>
		<li>
			<span class="zhu_yy">手机号码</span>
			<input type="text" class="zhu_ce" name="phone">
			<p><sf:errors path="phone"/></p>
		</li>
		<li>
			<span class="zhu_yy">身份证号</span>
			<input type="text" class="zhu_ce" name="idCard">
			<p><sf:errors path="idCard"/></p>
		</li>

		<li class="zhu_li">
			<span class="zhu_yy">性别</span>
			<label>
				<input type="radio" name="sex" value="男" >
				男</label>
			<label>
				<input type="radio" name="sex" value="女" >
				女</label>
			<p><sf:errors path="sex"/></p>
		</li>
		<li> <span>所在地区</span>
>		<select name="city">
				<option value="重庆">重庆</option>
				<option value="石柱">石柱</option>
				<option value="云阳">云阳</option>
				<option value="九龙坡">九龙坡</option>
				<option value="南岸">南岸</option>
				<option value="秀山">秀山</option>
				<option value="万州">万州</option>
				<option value="南拳">南拳</option>
			</select>
			<select name="contrySide">
				<option value="0">区/县</option>
				<option value="北京">北京</option>
				<option value="天津">天津</option>
				<option value="上海">上海</option>
				<option value="深圳">深圳</option>
				<option value="香港">香港</option>
				<option value="台湾">台湾</option>
				<option value="石柱">石柱</option>
			</select>
		</li>
		<li class="zhu_li3">
			<span>验证码</span><input type="text" name="yanzhengma">

			<a href="#" onclick="myReload()">看不清楚</a></li>
		<li><img alt="" src="${pageContext.request.contextPath}/kaptcha.png"  id="CreateCheckCode" style="height:34px;"/></li>
		<%--<li class="zhu_li2">
			<span>我确认同意<a href="#">车友社区使用协议</a></span>
			<input name="" type="checkbox" value="" checked="checked"/>
		</li>--%>
		<li><input type="submit" value="立即注册" class="anniu"></li>

</sf:form>
	</ul>





	<%--<form action="${pageContext.request.contextPath}/register.do" method="post">
	<ul class="zhu_ul">


				<c:forEach items="${error}" var="error">
					<li style="color: red">
						${error.defaultMessage}
					</li>
				</c:forEach>

			<li>
				<span class="zhu_yy">用户名</span>
				<input type="text" class="zhu_ce" name="usercode">
			</li>
			<li><span class="zhu_yy">姓名</span>
				<input type="text" class="zhu_ce" name="username">
			</li>
			<li>
				<span class="zhu_yy">密码</span>
				<input type="password" class="zhu_ce" name="password">
			</li>
			<li>
				<span class="zhu_yy">确认密码</span>
				<input type="password" class="zhu_ce" name="confirm">
			</li>
			<li>
				<span class="zhu_yy">电子邮箱</span>
				<input type="text" class="zhu_ce" name="email">
			</li>
			<li>
				<span class="zhu_yy">手机号码</span>
				<input type="text" class="zhu_ce" name="phone">
			</li>
			<li>
				<span class="zhu_yy">身份证号</span>
				<input type="text" class="zhu_ce" name="idCard">
			</li>
			
			<li class="zhu_li">
				<span class="zhu_yy">性别</span>
			    <label>
			      <input type="radio" name="sex" value="男" >
			      男</label>
			    <label>
			      <input type="radio" name="sex" value="女" >
			      女</label>
			</li>
			<li> <span>所在地区</span>
					<select name="city">
							    <option value="重庆">重庆</option>
								<option value="石柱">石柱</option>
								<option value="云阳">云阳</option>
								<option value="九龙坡">九龙坡</option>
								<option value="南岸">南岸</option>
								<option value="秀山">秀山</option>
								<option value="万州">万州</option>
								<option value="南拳">南拳</option>
					</select>
					<select name="contrySide">
								<option value="0">区/县</option>
								<option value="北京">北京</option>
								<option value="天津">天津</option>
								<option value="上海">上海</option>
								<option value="深圳">深圳</option>
								<option value="香港">香港</option>
								<option value="台湾">台湾</option>
								<option value="石柱">石柱</option>
					</select>
			</li>
			<li class="zhu_li3">
				<span>验证码</span><input type="text" name="yanzhengma">

				<a href="#" onclick="myReload()">看不清楚</a></li>
		<li><img alt="" src="${pageContext.request.contextPath}/kaptcha.png"  id="CreateCheckCode" style="height:34px;"/></li>
			<li class="zhu_li2">
			<span>我确认同意<a href="#">车友社区使用协议</a></span>
			<input name="" type="checkbox" value="" checked="checked"/>
			</li>
		<li><input type="submit" value="立即注册" class="anniu"></li>
	</ul>
	</form>--%>
</body>
</html>