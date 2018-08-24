<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<html>
<head>
<title>Badge Signup Form Flat Responsive Widget Template :: 小贝壳网站模板</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Badge Signup Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/css/kaoshizhu.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'><!--web font-->
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div class="小贝壳网站模板-main">
			<h1>添加选择题</h1>
			<div class="agilesign-form">
				<div class="agileits-top">
				<%--	<form action="${pageContext.request.contextPath}/insertXz.do" method="post" enctype="multipart/form-data">
						<div class="styled-input w3ls-text">
							<input type="text" name="title" required=""/>
							<label>考试题目</label>
							<span></span>
						</div>
						<div class="styled-input w3ls-text">
							<input type="text" name="optionA" required=""/>
							<label>A选项</label>
							<span></span>
						</div>
						<div class="styled-input w3ls-text">
							<input type="text" name="optionB" required="">
							<label>B选项</label>
							<span></span>
						</div>
						<div class="styled-input w3ls-text">
							<input type="text" name="optionC" required="">
							<label>C选项</label>
							<span></span>
						</div>
						<div class="styled-input w3ls-text">
							<input type="text" name="explains" required="">
							<label>题目讲解</label>
							<span></span>
						</div>
						<div class="wthree-text">
							<p>
								<input type="radio" name="answer"  value="A">
								<label for="brand"><span></span>A</label>
								<input type="radio" name="answer"  value="B">
								<label for="brand"><span></span>B</label>
								<input type="radio" name="answer"  value="C">
								<label for="brand"><span></span>C</label>
							</p>

						</div>
						<div class="" style="margin: auto">
							<input type="file" name="eaxmimg1">
						</div>
						<div class="wthree-text">
							<p>
								<input type="checkbox" id="brand" value="1" name="eaxmtype">
								<label for="brand"><span></span>考试类型为选择题</label>
							</p>
						</div>
						<div class="agileits-bottom">
							<input type="submit" value="保存题目">
						</div>
					</form>--%>
					<sf:form action="${pageContext.request.contextPath}/insertXz.do"
							 method="post" enctype="multipart/form-data" modelAttribute="subject">
						<input type="hidden" name="id" value="${subject1.id}">
						<div class="styled-input w3ls-text">
							<input type="text" name="title" value="${subject1.title}" required=""/>
							<p><sf:errors path="title"></sf:errors></p>
							<label>考试题目</label>
							<span></span>
						</div>
						<div class="styled-input w3ls-text">
							<input type="text" name="optionA" value="${subject1.optionA}" required=""/>
							<p><sf:errors path="optionA"></sf:errors></p>
							<label>A选项</label>
							<span></span>
						</div>
						<div class="styled-input w3ls-text">
							<input type="text" value="${subject1.optionB}" name="optionB" required="">
							<sf:errors path="optionB"></sf:errors>
							<label>B选项</label>
							<span></span>
						</div>
						<div class="styled-input w3ls-text">
							<input type="text" name="optionC" value="${subject1.optionC}" required="">
							<p><sf:errors path="optionC"></sf:errors></p>
							<label>C选项</label>
							<span></span>
						</div>
						<div class="styled-input w3ls-text">
							<input type="text" name="explains" value="${subject1.explains}" required="">
							<sf:errors path="explains"></sf:errors>
							<label>题目讲解</label>
							<span></span>
						</div>
						<div class="wthree-text">
							<p>
								<input type="radio" name="answer"  value="A">
								<label for="brand"><span></span>A</label>
								<input type="radio" name="answer"  value="B">
								<label for="brand"><span></span>B</label>
								<input type="radio" name="answer"  value="C">
								<label for="brand"><span></span>C</label>
								<p><sf:errors path="answer"></sf:errors></p>
							</p>

						</div>
						<div class="" style="margin: auto">
							<input type="file" name="eaxmimg1">
						</div>
						<div class="wthree-text">
							<p>
								<input type="checkbox" id="brand" value="1" name="eaxmtype">
									<sf:errors path="eaxmtype"></sf:errors>
								<label for="brand"><span></span>考试类型为选择题</label>
							</p>
						</div>
						<div class="agileits-bottom">
							<input type="submit" value="保存题目">
						</div>
					</sf:form>
				</div>
				<div class="w3agile-btm">
					<p>大家都是兄弟? <a href="#"> 给我吴彦祖一个面子</a> </p>
				</div>
			</div>
		</div>
	<!-- //main -->
	<!-- copyright -->
	<div class="copyright">
		<p>© 2017 Badge Signup Form . All rights reserved | Powered by <a href="http://www.smallseashell.com/" target="_blank">阿司匹林</a></p>
	</div>
	<!-- //copyright -->
</body>
</html>
