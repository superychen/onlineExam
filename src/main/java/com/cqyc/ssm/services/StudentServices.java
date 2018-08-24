package com.cqyc.ssm.services;

import com.cqyc.ssm.comm.CustomException;
import com.cqyc.ssm.dao.StudentDao;
import com.cqyc.ssm.domain.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("studentServices")
public class StudentServices {
    @Autowired
    private StudentDao studentDao;

    /**
     * 注册用户
     * @param student
     */
    public void register(Student student){
        studentDao.insert(student);
    }

    /**
     * 学员登录
     * @return
     */
    public Student loginStudent(String usercode,String password) throws CustomException {
        Student student = studentDao.findStudent(usercode);
        if(usercode==null||!usercode.equals(student.getUsercode())){
            throw new CustomException("输入用户名错误");
        }
        if(password==null||!password.equals(student.getPassword())){
            throw new CustomException("输入密码错误");
        }
        return student;
    }
    /**
     * 修改成绩
     */
    public void updateScore(Student student){
        studentDao.updateScore(student);
    }

    /**
     * 查询所有学生信息
     */
    public List<Student> findStudents(){
        return studentDao.findStudents();
    }
    /**
     * ajax检验用户名是否存在
     */
    public  boolean check(String usercode){
        return studentDao.check(usercode);
    }
    /**
     * 修改用户信息
     */
    public void updateStu(Student student){
        studentDao.updateStu(student);
    }

}
