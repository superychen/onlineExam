package com.cqyc.ssm.comm;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CustomExceptionResolver implements HandlerExceptionResolver {
    public ModelAndView resolveException(HttpServletRequest httpServletRequest,
                                         HttpServletResponse httpServletResponse, Object o, Exception ex) {
        ex.printStackTrace();
        CustomException customException=null;
        //如果抛出的是系统自定义的异常则直接转换
       if(ex instanceof CustomException){
            customException = (CustomException) ex;
       }else{
           //如果抛出的不是系统自定义的异常则重新构造一个未知错误异常
           //这里我就也有CustomException省事了，实际中应该要再定义一个新的异常
           customException = new CustomException("我莫得搞了");
       }
       ModelAndView modelAndView = new ModelAndView();
       modelAndView.addObject("error",customException.getMessage());
       modelAndView.setViewName("error");
        return modelAndView;
    }
}
