package com.jinstar.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	@RequestMapping("/")
	public String home(Locale locale, Model model) {
		model.addAttribute("contentpage", "main.jsp" );
		return "home";
	}
	
	@RequestMapping("/profile")
	public String profile(Model model) {
		model.addAttribute("contentpage", "profile/profile.jsp" );
		return "home";
	}
	
	@RequestMapping("/Story")
	public String Story(Model model) {
		model.addAttribute("contentpage", "Story/Story.jsp" );
		return "home";
	}
	
	@RequestMapping("/Board")
	public String Board(Model model) {
		model.addAttribute("contentpage", "Board/Board.jsp" );
		return "home";
	}
	
	@RequestMapping("/About")
	public String About(Model model) {
		model.addAttribute("contentpage", "About/About.jsp" );
		return "home";
	}
	
	@RequestMapping("/sendMail")
	@ResponseBody
	public void sendMail(@RequestParam HashMap<String, Object> Mail) {
		//우리에게 전송
		final MimeMessagePreparator WePreparator = new MimeMessagePreparator(){ 
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				helper.setFrom("wlsdn9489@naver.com");
				helper.setTo((String)Mail.get("To"));
				helper.setSubject("[JinStar] "+(String)Mail.get("name"));
				helper.setText((String)Mail.get("message"));
			}
		};
		mailSender.send(WePreparator);
		//감사인사
		final MimeMessagePreparator Preparator = new MimeMessagePreparator(){ 
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				helper.setFrom("wlsdn9489@naver.com");
				helper.setTo((String)Mail.get("email"));
				helper.setSubject("[JinStar] 메일이 송부되었습니다. 감사합니다.");
				helper.setText("");
			}
		};
		mailSender.send(Preparator);
	} 
	
	@RequestMapping("/download/{file_format}/{file_name}")
	public void DownloadFile(@PathVariable String file_format
			, @PathVariable String file_name
			, HttpServletResponse response ) {
		try {
			String fileFullpath = "/usr/local/apache-tomcat-9.0.33/webapps/JinwooKing-hugstar21/resources/download/"+file_name+"."+file_format;
			org.apache.commons.io.IOUtils.copy(new FileInputStream(new File(fileFullpath)), response.getOutputStream());
			response.flushBuffer();
		}catch (IOException e) {
			System.out.println(e);
		}
	}
}
