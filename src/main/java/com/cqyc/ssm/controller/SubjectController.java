package com.cqyc.ssm.controller;

import com.cqyc.ssm.comm.CustomException;
import com.cqyc.ssm.comm.Pager;
import com.cqyc.ssm.domain.Student;
import com.cqyc.ssm.domain.Subject;
import com.cqyc.ssm.services.SubjectServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class SubjectController {

    @Autowired
    private SubjectServices subjectServices;
    /**
     * 插入选择题
     */
    @RequestMapping("insertXz.do")
    public String insertXz(@Validated(value = Subject.editXz.class) Subject subject, BindingResult bindingResult, Model model, MultipartFile eaxmimg1) throws IOException {
        if(bindingResult.hasErrors()){
            List<ObjectError> errors = bindingResult.getAllErrors();
            for(ObjectError error:errors){
                System.out.println(error);
            }
            return "guanli/kaoshizhu";
        }
        //上传文件
       String originalFilename = eaxmimg1.getOriginalFilename();
       if(eaxmimg1!=null && originalFilename!=null && originalFilename.length()>0){
           //存取文件物理路径
           String path="D:\\mywork\\";
           //上传文件原始名称
           String newfilename = UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
           File newfile =new File(path+newfilename);
           if(!newfile.isDirectory()){
               newfile.mkdir();
           }
               //将内存中的数据存储到磁盘中
           eaxmimg1.transferTo(newfile);
           subject.setEaxmimg(newfilename);
       }
        subjectServices.insertXz(subject);
        return "redirect:findPager.do";
    }

    @RequestMapping("insertPan.do")
    public String insertPan(Subject subject,Model model,MultipartFile eaxmimg2) throws CustomException {
        //上传文件
        String originalFilename = eaxmimg2.getOriginalFilename();
        if(eaxmimg2!=null&&originalFilename!=null&&originalFilename.length()>0){
            //读取物理路径
            String path="D:\\mywork\\";
            //上传文件的原始名称
            String newfilename = UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));
            File newfile = new File(path+newfilename);
            if (!newfile.isDirectory()) {
                newfile.mkdir();
            }
            //将内存中的数据存储到磁盘中
            try {
                eaxmimg2.transferTo(newfile);
                subject.setEaxmimg(newfilename);
            } catch (IOException e) {
                throw new CustomException("读取文件失败");
            }
            subjectServices.insertPan(subject);
        }
        return "redirect:findPager.do";
    }

    @RequestMapping("findPager.do")
    public String findPager(Subject subject, Model model){
        List<Subject> subjects = subjectServices.findPager(subject);
        model.addAttribute("subjects",subjects);
        return "monikaoshi/monikaoshi";
    }

    @RequestMapping("equalAn.do")
    public String equalsAn(String[] youAnswer, String[] ids, HttpSession session, HttpServletRequest request){
        int score=0;
        for(int i=0;i<ids.length;i++){
            Integer id = Integer.valueOf(ids[i]);
            String answer = subjectServices.equalsAn(id);
            if(youAnswer[i].equals(answer)){
                score=score+2;
            }else {
                score=score+0;
            }
        }
        System.out.println("您获得的总分为："+score);
        Student student= (Student) session.getAttribute("student1");
        student.setScore(score);
        System.out.println("获得学生的id为："+student.getId());
      /*  request.setAttribute("student",student);*/
        session.setAttribute("student2",student);
        return "redirect:/updateScore.do";
    }
    /**
     * 查询所有考试题目显示到页面
     */
    @RequestMapping("findSub.do")
    public String findSub(Model model){
        List<Subject> subjects = subjectServices.findSub();
        model.addAttribute("subjects",subjects);
        return "guanli/Manage_wuliu";
    }
    /**
     * 根据id修改相对应的考试题
     */
    @RequestMapping("findOne.do")
    public String findOne(Integer id,Model model){
        Subject subject=subjectServices.findOne(id);
        model.addAttribute("subject1",subject);
        return "guanli/kaoshizhu";
    }

    /**
     * 根据id修改相应的判断题
     */
    @RequestMapping("findPan.do")
    public String findPan(Integer id,Model model){
        Subject subject=subjectServices.findOne(id);
        model.addAttribute("subject1",subject);
        return "guanli/kaoshizhupan";
    }

}
