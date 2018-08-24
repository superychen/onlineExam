
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>模拟测试</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xw.css">
    <link rel="stylesheet" href="../css/monikaoshi.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js" type="text/javascript"></script>

</head>
<body>
<!--导航栏-->
<div class="nav">
    <div class="nav_contend">
        <a class="nav_tt">
            <div class="nav_tu"><img src="${pageContext.request.contextPath}/images/ts.png" alt="">
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
                <c:if test="${student.usertype==1}">
                    <span><a href="#" style="color: #31997f">修改信息</a></span>
                </c:if>
                <c:if test="${student1.usertype==0}">
        <span><a href="#" style="color: #31997f;font-size: 10px" >修改信息(管理员)</a></span>
        </c:if>

        <span><a href="${pageContext.request.contextPath}/loginout.do" style="color: #31997f">${student1.usercode}退出</a></span>
        </c:if>
        <p><a href="${pageContext.request.contextPath}/register.jsp" style="color: #31997f">注册</a></p>
    </div>
    </div>
</div>
<!--banner-->
<div class="banner">
    <div class="banner_1">
        <dl class="fcc">
            <dt><a href="#"><img src="../images/jsyks.jpg" alt=""></a></dt>
            <dd>
                <div class="ffc">
                    <p><a href="#">全国通用</a></p>
                    <p><a href="#">c1</a></p>
                </div>
                <div class="ffc2">
                    <a href="#"><img src="../images/zuixin.jpg" alt=""></a>
                </div>
                <div class="pre">
                    <a href="#">加入收藏</a>
                    <a href="#">设为首页</a>
                    <a href="#">联系我们</a>
                </div>

            </dd>
        </dl>
    </div>
    <div class="banner_2">
        <span class="banner_span_1"><a href="#">全国通用C1小型汽车-仿真考试</a></span>
        <span class="banner_span_2"><a href="#">小米/华为/联想/三星等Android手机驾考下载</a></span>
    </div>
    <div class="banner_3">
        <a href="#" style="background: #00B9BD">全国通用2018仿真模拟考试</a>
        <a href="#" style="background:#DD5867;">全国通用科四仿真模拟考试</a>
    </div>
</div>
<!--考试-->

<form class="form_test" action="${pageContext.request.contextPath}/equalAn.do" method="post">
    <!--考生信息以及考试内容部分-->
    <div class="testPlace">
        <div class="testPlace_left">
            <fieldset class="fieldset1">
                <legend>科一考试场</legend>
                <div>第<span id="kaochangHao" style="color: orangered"></span>考场</div>
            </fieldset>

            <fieldset class="fieldset2">
                <legend>考生信息</legend>
                <ul class="studentInfo">
                    <li><img src="${pageContext.request.contextPath}/images/touxiang.jpg" alt=""></li>
                    <li>考生姓名：<em>${student1.usercode}</em></li>
                    <li>性　　别：<em>${student1.sex}</em></li>
                    <li>考试车型：<em>C1</em></li>
                    <li>申请原因：<em>初次申请</em></li>
                </ul>
            </fieldset>

        </div>
        <script>
            function suiji() {
                var kaochangHao = document.getElementById("kaochangHao");
                kaochangHao.innerHTML=parseInt(Math.floor(Math.random()*100));
            }
            suiji();
        </script>
        <div class="testPlace_right">
            <fieldset>
                <legend>考试题目</legend>

                <ul id="testPlace_rightUl">
                    <c:forEach items="${subjects}" var="subjects">
                    <li>
                        <div>
                            <strong style="font-size: 24px">${subjects.id}.</strong>&nbsp;
                            <span>${subjects.title}</span>
                        </div>
                        <div class="testPlace_right_pic">
                            <c:if test="${subjects.eaxmtype==1}">
                            <ul style="">
                                <li><strong>A、</strong>${subjects.optionA}</li>
                                <li><strong>B、</strong>${subjects.optionB}</li>
                                <li><strong>C、</strong>${subjects.optionC}</li>
                            </ul>
                            </c:if>
                            <c:if test="${subjects.eaxmimg!=null}">
                            <div style="">
                                <img src="${pageContext.request.contextPath}/download.do?filename=${subjects.eaxmimg}" alt="" width="200px" height="200px">
                            </div>
                            </c:if>
                        </div>

                        <div class="testPlace_right_answer">
                            <div class="studentAnswer" style="font-size: 20px">您的答案为：<b class="youAnswer" style="color: orangered"></b>
                                <input type="hidden" class="youAnswer1" name="youAnswer" value="">
                                <input type="hidden" name="ids" value="${subjects.id}"/>
                            </div>
                            <div class="ExamDaRight" style="">

                            </div>
                            <c:if test="${subjects.eaxmtype==2}">
                                <div class="ExamDaButton">
                                    <strong>选择:</strong>
                                    <div class="panInput">
                                        <input type="button" value="√" class="gouInput"/>
                                        <input type="button" value="×" class="chaInput"/>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${subjects.eaxmtype==1}">
                                <div class="ExamDaButton">
                                    <strong>选择:</strong>
                                    <div class="xuanInput">
                                        <input type="button" value="A" class="AInput"/>
                                        <input type="button" value="B" class="BInput"/>
                                        <input type="button" value="C" class="CInput"/>
                                    </div>
                                </div>
                            </c:if>
                        </div>
                    </li>

                    </c:forEach>
                </ul>
            </fieldset>


        </div>

    </div>
    <script>
        $(".gouInput").click(function(){
            var gous = $(this).val();
            var youAnswer=$(this).parent(".panInput").parent(".ExamDaButton").siblings(".studentAnswer").children(".youAnswer");
            var youAnswer1=$(this).parent(".panInput").parent(".ExamDaButton").siblings(".studentAnswer").children(".youAnswer1");
            youAnswer1.val(gous);
            youAnswer.html(gous);
        })

        $(".chaInput").click(function(){
            var chas = $(this).val();
            var youAnswer=$(this).parent(".panInput").parent(".ExamDaButton").siblings(".studentAnswer").children(".youAnswer");
            var youAnswer1=$(this).parent(".panInput").parent(".ExamDaButton").siblings(".studentAnswer").children(".youAnswer1");
            youAnswer1.val(chas)
            youAnswer.html(chas);
        })
        $(".AInput").click(function(){
            var as = $(this).val();
            var youAnswer1=$(this).parent(".xuanInput").parent(".ExamDaButton").siblings(".studentAnswer").children(".youAnswer1");
            var youAnswer=$(this).parent(".xuanInput").parent(".ExamDaButton").siblings(".studentAnswer").children(".youAnswer");
            youAnswer1.val(as);
            youAnswer.html(as);
        })
        $(".BInput").click(function(){
            var bs=$(this).val();
            var youAnswer=$(this).parent(".xuanInput").parent(".ExamDaButton").siblings(".studentAnswer").children(".youAnswer");
            var youAnswer1=$(this).parent(".xuanInput").parent(".ExamDaButton").siblings(".studentAnswer").children(".youAnswer1");
            youAnswer1.val(bs);
            youAnswer.html(bs);
        })
        $(".CInput").click(function(){
            var cs = $(this).val();
            var youAnswer=$(this).parent(".xuanInput").parent(".ExamDaButton").siblings(".studentAnswer").children(".youAnswer");
            var youAnswer1=$(this).parent(".xuanInput").parent(".ExamDaButton").siblings(".studentAnswer").children(".youAnswer1");
            youAnswer1.val(cs);
            youAnswer.html(cs);
        })
    </script>
    <!--时间交卷等内容-->
    <div class="examSubmit">
        <div class="examSubmit_time">
            <fieldset >
                <legend>剩余时间</legend>
                <span id="resetTime">40.00</span>
            </fieldset>
        </div>
        <div class="examSubmit_right">
            <div class="examSubmit_right1">
                <fieldset>
                    <legend>提示信息</legend>
                    <div>选择题，请在备选答案中选择你认为正确的答案！</div>
                </fieldset>
            </div>
            <div class="examSubmit_right2">
                <input type="button" value="暂停">
                <input id="prev" type="button" value="上一题">
                <input id="next" type="button" value="下一题">
                <input type="submit" value="交卷">
            </div>

        </div>
    </div>
    <!--华丽的分割线-->
    <div class="AD_Big">

    </div>
    <!--答题信息-->
    <script>
        function ExamOrderView (){
            var testPlace_rightUl = document.getElementById("testPlace_rightUl");
            var testPlace_rightLis = testPlace_rightUl.children;
            var prev = document.getElementById("prev");
            var next = document.getElementById("next");
            var index=0;
            testPlace_rightLis[0].style.display="block";

            function changePic(curIndex){

                for(var i=0;i<=testPlace_rightLis.length-1;i++){
                    testPlace_rightLis[i].style.display="none";
                }
                testPlace_rightLis[curIndex].style.display="block";
            }

            prev.onclick=function(){
                if(index<=0){
                    index = testPlace_rightLis.length;
                }
                index--;
                changePic(index);
            }

            next.onclick=function(){
                if(index>=testPlace_rightLis.length-1){
                    index=-1;
                }
                index++;
                changePic(index);
            }



        }
        ExamOrderView();
    </script>
</form>
<script src="${pageContext.request.contextPath}/js/xw.js"></script>
</body>
</html>
