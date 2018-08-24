package com.cqyc.ssm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet(urlPatterns = "/download.do")
public class DownloadServlet extends HttpServlet {
    private Logger logger = LoggerFactory.getLogger(getClass());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String filename=request.getParameter("filename");
        String path =  "D:/mywork/";
        try {
            if(filename!=null&&filename.trim().length()>0){
                logger.info("读取文件名：path-->{},filename-->{}",path,filename);
                response.setContentType("image/jpeg");
                OutputStream out = response.getOutputStream();
                InputStream in = new FileInputStream(new File(path+filename));
                //读取字节流
                byte data[] = new byte[4096];//缓冲字节流
                int size=0;
                size=in.read(data);
                while(size!=-1){
                    out.write(data,0,size);
                    size=in.read(data);
                }
                in.close();
                out.flush();
                out.close();
                logger.info("文件读取才成功");
            }
        }catch (Exception e){
            e.printStackTrace();
            logger.error("读取图片文件错误:",e.getMessage());
        }
    }
}
