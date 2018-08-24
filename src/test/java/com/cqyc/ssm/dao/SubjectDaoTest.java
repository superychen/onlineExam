package com.cqyc.ssm.dao;

import com.cqyc.ssm.comm.Pager;
import com.cqyc.ssm.domain.Subject;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

class SubjectDaoTest {

    private Logger logger = LoggerFactory.getLogger(getClass());
    @Test
    void insertXz() {
        Subject subject = new Subject();
        subject.setTitle("spring中aspectj是基于什么实现的");
        subject.setOptionA("jdk动态代理");
        subject.setOptionB("cglib");
        subject.setOptionC("jdk动态代理和cglib");
        subject.setAnswer("C");
        subject.setExplains("自己看源码1");
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        SubjectDao subjectDao = (SubjectDao) context.getBean("subjectDao");
        subjectDao.insertXz(subject);
        logger.debug("插入数据成功");
    }
    @Test
    void insertPan(){
        Subject subject = new Subject();
        subject.setTitle("英雄联盟中劫的大招不能够被水银解开");
        subject.setAnswer("√");
        subject.setEaxmtype(2);
        subject.setExplains("水银只能解开控制技能，并不能解开劫的大招");
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        SubjectDao subjectDao = (SubjectDao) context.getBean("subjectDao");
        subjectDao.insertPan(subject);
        logger.debug("插入数据成功");
    }

    @Test
    void findPager(){
        Subject subject = new Subject();
        Pager pager = new Pager();
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        SubjectDao subjectDao = (SubjectDao) context.getBean("subjectDao");
        List<Subject> subjects = subjectDao.findPager(subject);
        logger.debug("{}",subjects.size());
    }


    @Test
    void equalsAn(){
        Integer id = 1;
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        SubjectDao subjectDao = (SubjectDao) context.getBean("subjectDao");
        subjectDao.equalsAn(id);
    }
    @Test
    void updateXuan(){
        Subject subject = new Subject();
        subject.setId(1);
        subject.setTitle("spring中aspectj是基于什么实现的");
        subject.setOptionA("jdk动态代理");
        subject.setOptionB("cglib");
        subject.setOptionC("jdk动态代理和cglib");
        subject.setAnswer("C");
        subject.setEaxmtype(1);
        subject.setExplains("自己看源码1");
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        SubjectDao subjectDao = (SubjectDao) context.getBean("subjectDao");
        subjectDao.updateXuan(subject);
    }
}