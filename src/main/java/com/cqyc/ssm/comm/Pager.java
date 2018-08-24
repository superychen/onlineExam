package com.cqyc.ssm.comm;

import java.io.Serializable;

public class Pager implements Serializable {


    public Pager() {
        this.pageSize=1;
        this.currentPage=1;
    }

    public Pager(long totalSize) {
        this.totalSize = totalSize;
    }

    public Pager(Integer pageSize, Integer currentPage, long totalSize) {
        this.pageSize = pageSize;
        this.currentPage = currentPage;
        this.totalSize = totalSize;
    }

    /**
     *  定义每一页显示多少条记录
     */
    private Integer pageSize=1;
    /**
     * 当前是哪一页
     */
    private Integer currentPage=1;


    /**
     * 总共的记录数
     */
    private long totalSize=0L;


    /**
     * 查询位置的偏移数
     * @return
     */
    public Integer getOffset(){
        return (getCurrentPage()-1)*getPageSize();
    }

    /**
     * 总的页数
     * @return
     */
    public Long getTotalPage() {
        if(totalSize%pageSize==0) {
            return totalSize/pageSize;
        }else {
            return totalSize/pageSize+1;
        }
    }

    /**
     * 得到前一页
     * @return
     */
    public Integer getPrevPage() {
        if(getCurrentPage()>1) {
            return getCurrentPage()-1;
        }else {
            return 1;
        }
    }
    /**
     * 得到后一页
     * @return
     */
    public Long getNextPage() {
        if(getCurrentPage()>1&&getCurrentPage()<getTotalPage()) {
            return getCurrentPage()+1L;
        }else {
            return getTotalPage();
        }
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getCurrentPage() {
        return currentPage<1?1:currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public long getTotalSize() {
        return totalSize;
    }

    public void setTotalSize(long totalSize) {
        this.totalSize = totalSize;
    }
}
