package com.jinstar.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
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
}
