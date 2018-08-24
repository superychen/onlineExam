package com.cqyc.ssm.controller;

import com.cqyc.ssm.comm.CustomException;
import com.cqyc.ssm.domain.Student;
import com.cqyc.ssm.services.StudentServices;
import javafx.geometry.Pos;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
public class StudentController {
    private Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private StudentServices studentServices;

    /**
     * 注册用户
     * @param student
     * @param bindingResult
     * @param request
     * @param model
     * @param session
     * @return
     * @throws CustomException
     */
    @RequestMapping("register.do")
    public String register(@Validated(Student.register.class)  Student student, BindingResult bindingResult,
                           HttpServletRequest request, Model model , HttpSession session) throws CustomException {
        String city = request.getParameter("city");
        String contrySide = request.getParameter("contrySide");
        student.setAddress(city+contrySide);
        String confirm = request.getParameter("confirm");
        String password =request.getParameter("password");
        String yanzhengma = request.getParameter("yanzhengma");
        if(!confirm.equals(password)){
            throw new CustomException("两次密码输入不一致");
        }
        if(bindingResult.hasErrors()){
           /* List<ObjectError> errors = bindingResult.getAllErrors();
            for(ObjectError objectError:errors){
                System.out.println(objectError);
            }
            model.addAttribute("error",errors);*/
            return "register";
        }
        Object kaptcha = session.getAttribute("kaptcha");
        if(!yanzhengma.equals(kaptcha)){
            throw new CustomException("验证码输入错误");
        }
        model.addAttribute("student",student);
        studentServices.register(student);
        return "login";
    }
    /**
     * 用户登录
     * @return
     */
    @RequestMapping("login.do")
    public String login(Student student,HttpSession session) throws CustomException {
        student = studentServices.loginStudent(student.getUsercode(),student.getPassword());
        session.setAttribute("student1",student);
        return "oldDriver";
    }
    /**
     * 退出登录
     */
    @RequestMapping("loginout.do")
    public String loginout(HttpSession session){
        session.invalidate();
        return "oldDriver";
    }
    /**
     * 修改成绩
     */
    @RequestMapping("updateScore.do")
    public String updateScore(Model model,HttpSession session){
        /*Student student = (Student) request.getAttribute("student");*/
        Student student = (Student) session.getAttribute("student2");
        System.out.println(student.getId());
        studentServices.updateScore(student);
        model.addAttribute("student",student);
        return "score";
    }
    /**
     * 查询所有学生信息
     */
    @RequestMapping("findStudents.do")
    public String findStudents(Model model){
        List<Student> students = studentServices.findStudents();
        model.addAttribute("students",students);
        return "guanli/Manage_pinkun";
    }
    /**
     * ajax检验用户名是否存在
     */
    @RequestMapping(value = "check.do",method = RequestMethod.POST)
    @ResponseBody
    public String check(String usercode, HttpServletResponse response) throws IOException {
        logger.info("{}",usercode);
        boolean isExist = studentServices.check(usercode);
        if(isExist==true){
            response.getWriter().println(1);
        }
        if(isExist==false) {
            response.getWriter().println(2);
        }
        return null;
    }
    /**
     * 修改用户信息
     */
    @RequestMapping(value = "updateStu.do",method = RequestMethod.POST)
    public String updateStu(Student student){
        studentServices.updateStu(student);
        return "redirect:loginout.do";
    }



}
