package com.cqyc.ssm.comm;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/*@WebServlet(urlPatterns = "/*")*/
public class LoginFilter implements Filter {

private Logger logger = LoggerFactory.getLogger(getClass());
    //静态资源、登录页面、错误页面、注册页面都不做登录检查,直接往后请求
    private String[] ugions = new String[]{"monikaoshi","kaoshizhu","kaoshizhupan","Manage_account",
    "Manage","pinkun","Manage_welcome","Manage_wuliu","updateUser","findPager","updateScore","findStudents"};


        /**
     * 获取要没登陆时需要过滤的页面
     * @param url
     * @return*/

    public boolean cotains(String url){
        for(int i=0;i<ugions.length;i++){
            if(url.contains(ugions[i])){
                return true;
            }
        }
        return false;
    }

    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        Object oStudent = session.getAttribute("student1");
        String url=request.getRequestURI();
        logger.debug("开始过滤");
        if(oStudent!=null){
            chain.doFilter(request,response);
        }else{
            if(!cotains(url)){
                chain.doFilter(request,response);
            }else {
                response.sendRedirect(request.getContextPath()+"/login.jsp");
            }
        }
    }

    public void destroy() {

    }

}
