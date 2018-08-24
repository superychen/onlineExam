<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xw.css">
</head>

<body>
<div class="nav">
	<div class="nav_contend">
	   <a class="nav_tt">
		   <div class="nav_tu"><img src="images/ts.png" alt="">
	   		</div>
           科一考试系统
	   </a>


	   <div class="nav_con">
		    <ul class="nav_con_ul">
			   <li><a href="#">报名考试</a></li>
			   <li><a href="#">在线题库</a></li>
			   <li><a href="#">考试技巧</a></li>
			   <li><a href="#">交通标志</a></li>
		    </ul>
		</div>
		<div class="nav_sd" style="margin-left: 10px;width: 270px">

            <c:if test="${student1==null}">
			<span><a href="${pageContext.request.contextPath}/login.jsp" style="color: #31997f">登录</a></span>
			</c:if>
			<c:if test="${student1!=null}">
				<c:if test="${student1.usertype==1}">
					<span><a href="${pageContext.request.contextPath}/guanli/Manage_welcome.jsp" style="color: #31997f">修改信息</a></span>
				</c:if>
                <c:if test="${student1.usertype==0}">
                    <span><a href="${pageContext.request.contextPath}/guanli/Manage_welcome.jsp" style="color: #31997f;font-size: 10px" >修改信息(管理员)</a></span>
                </c:if>

			<span><a href="${pageContext.request.contextPath}/loginout.do" style="color: #31997f">${student1.usercode}退出</a></span>
        </c:if>
        <p><a href="${pageContext.request.contextPath}/register.jsp" style="color: #31997f">注册</a></p>
    </div>
	</div>
</div>
<div class="contend_to">
<div class="contend_left">
	<div class="contend_01">
	<div class="clears"></div>
		<span>科一_2018科目一考试_小车科目一100题_c1科目一模拟考试_驾照考试科目一</span>
		<p style="text-indent:2em;">
			科目一，又称科目一理论考试 驾驶理论考试，是机动车驾驶证考核的一部分。根据《机动车驾驶证申请和使用规定》，
			考试内容包括驾车理论基础 道路安全法律法规 地方性法规等相关知识。考试形式为上机考试，100道题，90分及以上过关。
		</p>
	</div>
	<div class="contend_02">
		<h2>关于科目一</h2>
		<ul class="contend_02_ul">
			<li><a href="${pageContext.request.contextPath}/findPager.do"><div class="clears"></div><span>科目一仿真题</span></a></li>
			<li><a href="${pageContext.request.contextPath}/findPager.do"><div class="clears"></div><span>科目一模拟考试</span></a></li>
			<li><a href="${pageContext.request.contextPath}/findPager.do"><div class="clears"></div><span>科目一预约考试</span></a></li>
		</ul>
	</div>
	<div class="contend_03">
		<h2>关于科目一考试技巧</h2>
		<div class="clears"></div>
		<div class="contend_03_a">
		  <ul class="contend_03_a_ul">
		     <li><a href="#">
			       <div class="cota"><img src="images/b_01.png" alt=""></div>
			       <div class="cotb">
				       <span>2018年科目一考完多久能考科目二？科二要提前几天预约</span>
				       <p style="text-indent: 2em;">
				       	驾考学员考完科目一，取得学习驾照证明后，报考C证的10日后可以预约考试科目二，考A证或B证要20天后预约考试科目二。根据公安部139号...【详细】
				       </p>
			       </div>
			    </a></li>
			    <li><a href="#">
			       <div class="cota"><img src="images/b_01.png" alt=""></div>
			       <div class="cotb">
				       <span>科目一还在拼命刷题？快看看满分考过的人生是咋做的</span>
				       <p style="text-indent: 2em;">
				       	科目一理论知识考试，不少考生都是通过拼命刷题的方法来加强记忆。如果学员在做题的时候，能够结合一些技巧。那么通过考试更是轻而易举的...【详细】
				       </p>
			       </div>
			    </a></li>
			</ul>
		</div>
	</div>
</div>
<div class="contend_right">
	<div class="fj"><a href="#">
		<img src="images/c_01.png" alt=""></a>
	</div>
	<div class="contend_right_a">
		<h2>科目一交通标志》》</h2>
		<ul class="conri_ul">
			<li><img src="images/q_01.png" alt=""><p>注意过路行人</p></li>
			<li><img src="images/q_02.png" alt=""><p>禁止停车</p></li>
			<li><img src="images/q_03.png" alt=""><p>禁止鸣笛</p></li>
			<li><img src="images/q_04.png" alt=""><p>慢行</p></li>
			<li><img src="images/q_05.png" alt=""><p>限速四十</p></li>
			<li><img src="images/q_06.png" alt=""><p>禁止掉头</p></li>
		</ul>
		<div class="cont"><a href="#">查找更多《《</a></div>
	</div>
	<div class="toer">
		<ul class="toer_ul">
			<li><a href="#">科目一学车动态 |</a></li>
			<li><a href="#">科目一考试问题</a></li>
		</ul>
	</div>
	<div class="tends">
			<ul class="tends_ul">
				<li><a href="#">哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈</a></li>
				<li><a href="#">哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈</a></li>
				<li><a href="#">哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈</a></li>
				<li><a href="#">哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈</a></li>
				<li><a href="#">哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈</a></li>
			</ul>
		</div>
		<div class="tendg">
			<h2>科一考试类型</h2>
			<ul class="tendg_ul">
				<li><a href="#"><img src="images/bc.png" alt=""><div class="cent"><span>C1 C2照</span><p>小车科目一</p></div></a></li>
				<li><a href="#"><img src="images/bc.png" alt=""><div class="cent"><span>C1 C2照</span><p>小车科目一</p></div></a></li>
				<li><a href="#"><img src="images/bc.png" alt=""><div class="cent"><span>C1 C2照</span><p>小车科目一</p></div></a></li>
				<li><a href="#"><img src="images/bc.png" alt=""><div class="cent"><span>C1 C2照</span><p>小车科目一</p></div></a></li>
			</ul>
		</div>
</div>
</div>
<div class="weiba">
	Copyright @ 2003 - 2018 JSYKS.COM ALL Rights Reserved. 苏ICP备
</div>

</body>
<script src="js/xw.js"></script>
</html>
