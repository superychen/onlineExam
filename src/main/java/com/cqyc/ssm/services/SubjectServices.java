package com.cqyc.ssm.services;

import com.cqyc.ssm.comm.Pager;
import com.cqyc.ssm.dao.SubjectDao;
import com.cqyc.ssm.domain.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("subjectServices")
public class SubjectServices {
    @Autowired
    private SubjectDao subjectDao;

    /**
     * 插入选择题
     */
    public void insertXz(Subject subject){
        if(subject.getId()==null){
            subjectDao.insertXz(subject);
        }else {
            subjectDao.updateXuan(subject);
        }

    }
    /**
     *插入判断题
     */
    public void insertPan(Subject subject){
        if(subject.getId()==null){
            subjectDao.insertPan(subject);
        }else{
            subjectDao.updatePan(subject);
        }

    }
    /**
     * 查询100到试题
     */
    public List<Subject> findPager(Subject subject){
        return subjectDao.findPager(subject);
    }
    /**
     *对比答案
     */
    public String equalsAn(Integer id){
        return subjectDao.equalsAn(id);
    }
    /**
     * 查询所有考试题目显示到页面
     */
    public List<Subject> findSub(){
        return subjectDao.findSub();
    }
    /**
     * 查询单个考试题然后根据id修改
     */
    public Subject findOne(Integer id){
        return subjectDao.findOne(id);
    }

}
