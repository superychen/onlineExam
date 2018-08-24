package com.cqyc.ssm.dao;

import com.cqyc.ssm.comm.Pager;
import com.cqyc.ssm.domain.Subject;
import com.github.pagehelper.PageRowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("subjectDao")
public class SubjectDao {
    @Autowired
    private SqlSession sqlSession;
    /**
     *插入选择题
     * @param subject
     */
    public void insertXz(Subject subject){
        sqlSession.insert("com.cqyc.ssm.dao.SubjectDao.insertXz",subject);
    }
    /**
     * 插入判断题
     */
    public void insertPan(Subject subject){
        sqlSession.insert("com.cqyc.ssm.dao.SubjectDao.insertPan",subject);
    }
    /**
     * 查询考试题目
     */
    public List<Subject> findPager(Subject subject){
        List<Subject> subjects = sqlSession.selectList("com.cqyc.ssm.dao.SubjectDao.findPager",subject);
        return subjects;
    }
    /**
     * 查询数据库对应的答案
     */
    public String equalsAn(Integer id){
       return sqlSession.selectOne("com.cqyc.ssm.dao.SubjectDao.equalsAn",id);
    }
    /**
     * 查询所有考试题目显示到页面
     */
    public List<Subject> findSub(){
        return sqlSession.selectList("com.cqyc.ssm.dao.SubjectDao.findSub");
    }
    /**
     * 修改选择题
     */
    public void updateXuan(Subject subject){
        sqlSession.update("com.cqyc.ssm.dao.SubjectDao.updateXuan",subject);
    }
    /**
     * 修改判断题
     */
    public void updatePan(Subject subject){
        sqlSession.update("com.cqyc.ssm.dao.SubjectDao.updatePan",subject);
    }
    /**
     * 查询单个考试题然后根据id修改
     */
    public Subject findOne(Integer id){
        return sqlSession.selectOne("com.cqyc.ssm.dao.SubjectDao.findOne",id);
    }


}
