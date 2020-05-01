package com.jinstar.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
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
