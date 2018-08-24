package com.cqyc.ssm.dao;

import com.cqyc.ssm.domain.Student;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("studentDao")
public class StudentDao {
    @Autowired
    private SqlSession sqlSession;

    /**
     * 用户注册
     * @param student
     */
    public void insert(Student student){
        sqlSession.insert("com.cqyc.ssm.dao.StudentDao.insert",student);
    }

    /**
     * 查询考试人员
     * @param usercode
     * @return
     */
    public Student findStudent(String usercode){
        return sqlSession.selectOne("com.cqyc.ssm.dao.StudentDao.findStudent",usercode);
    }
    /**
     * 修改成绩
     */
    public void updateScore(Student student){
        sqlSession.update("com.cqyc.ssm.dao.StudentDao.updateScore",student);
    }

    /**
     * 查询所有学生信息表
     */
    public List<Student> findStudents(){
        List<Student> students = sqlSession.selectList("com.cqyc.ssm.dao.StudentDao.findStudents");
        return students;
    }
    /**
     * ajax检验用户名是否存在
     */
    public boolean check(String usercode){
        Integer reslut = sqlSession.selectOne("com.cqyc.ssm.dao.StudentDao.check",usercode);
        if(reslut>0){
            return true;
        }else {
            return false;
        }
    }
    /**
     * 修改用户信息
     */
    public void updateStu(Student student){
        sqlSession.update("com.cqyc.ssm.dao.StudentDao.updateStu",student);
    }




}
