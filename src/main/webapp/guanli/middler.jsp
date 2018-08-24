<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/8/11
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="messageleft">
    <ul class="Fstage">
        <li><a href="#"><em class="e1"></em>常用操作<div class="clear"></div></a>
            <ul class="Tstage" >
                <li><a href="${pageContext.request.contextPath}/guanli/Manage_welcome.jsp">欢迎页面</a></li>
                <c:if test="${student1.usertype==0}">
                <li><a href="${pageContext.request.contextPath}/guanli/kaoshizhu.jsp">添加选择题</a></li>
                <li><a href="${pageContext.request.contextPath}/guanli/kaoshizhupan.jsp">添加判断题</a></li>
                </c:if>
            </ul>
        </li>
        <li><a href="#"><em class="e2"></em>账号管理<div class="clear"></div></a>
            <ul class="Tstage">
                <li><a href="${pageContext.request.contextPath}/guanli/Manage_account.jsp">账户信息</a></li>
                <li><a href="${pageContext.request.contextPath}/guanli/updateUser.jsp">账户修改</a></li>
            </ul>
        </li>
        <li><a href="#"><em class="e3"></em>县域统计<div class="clear"></div></a>
            <ul class="Tstage">
                <c:if test="${student1.usertype==0}">
                <li><a href="${pageContext.request.contextPath}/findStudents.do">学生信息管理表</a></li>
                <li><a href="${pageContext.request.contextPath}/findSub.do">修改试题</a></li>
                </c:if>
            </ul>
        </li>

    </ul>
</div>