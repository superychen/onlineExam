package com.cqyc.ssm.comm;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Properties;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.google.code.kaptcha.util.Config;

@WebServlet(urlPatterns="/kaptcha.png")
public class KaptchaServlet extends HttpServlet{
	private static final long serialVersionUID = -5411362641555588720L;
	private Logger logger = LoggerFactory.getLogger(getClass());
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logger.debug("执行");
		//设置验证码的属性
				Properties prop=new Properties();
				prop.put("kaptcha.image.width", 60);
				prop.put("kaptcha.image.height", 30);
				//prop.put("kaptcha.textproducer.char.string", "0123456789");
				prop.put("kaptcha.textproducer.char.length", "4");
				//prop.put("kaptcha.noise.impl", "com.google.code.kaptcha.impl.NoNoise");
				//prop.put("kaptcha.textproducer.font.color", "red");
				//prop.put("kaptcha.textproducer.font.size", "28");
				//prop.put("kaptcha.textproducer.char.space", "10");
				
				DefaultKaptcha producer=new DefaultKaptcha();
				producer.setConfig(new Config(prop));
				//生成随机文本
				String str=producer.createText();
				logger.info("生成的验证码：{}",str);
				HttpSession session=request.getSession();
				session.setAttribute("kaptcha", str);
				
				//生成图像
				BufferedImage image=producer.createImage(str);
				//设置输出类型
				response.setContentType("image/png");
				//输出图片流
				ImageIO.write(image, "png", response.getOutputStream());
	}
}
