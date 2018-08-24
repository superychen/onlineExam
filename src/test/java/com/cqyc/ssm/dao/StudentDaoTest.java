package com.cqyc.ssm.dao;

import com.cqyc.ssm.domain.Student;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

class StudentDaoTest {

    private Logger logger = LoggerFactory.getLogger(getClass());
    @Test
    void insert() {
        Student student = new Student();
        student.setUsercode("cqyc");
        student.setUsername("杨晨大大");
        student.setAddress("重庆市石柱县");
        student.setPassword("123456");
        student.setEmail("825467364@qq.com");
        student.setIdCard("500240199908190010");
        student.setPhone("13022326792");
        student.setSex("男");
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        StudentDao studentDao = (StudentDao) context.getBean("studentDao");
        studentDao.insert(student);
        logger.debug("插入成功");
    }
    @Test
    void findStudent(){
        String usercode="cqyc";
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        StudentDao studentDao = (StudentDao) context.getBean("studentDao");
        Student student=studentDao.findStudent(usercode);
        logger.debug(student.getUsername());
    }
    @Test
    void updateScore(){
        Student student = new Student();
        student.setId(1);
        student.setScore(20);
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        StudentDao studentDao = (StudentDao) context.getBean("studentDao");
        studentDao.updateScore(student);
    }

}