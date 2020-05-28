package com.jinstar.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jinstar.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/Board")
	public String Board(Model model, @RequestParam HashMap<String, Object> map) {
		System.out.println(map);
		List<HashMap<String, Object>> list = boardService.getBoardList(map);
		model.addAttribute("list", list);
		model.addAttribute("contentpage", "Board/Board.jsp" );
		return "home";
	}
	
	@RequestMapping("/Board/{no}")
	public String Boarddetail(Model model, @PathVariable HashMap<String, Object> map) {
		System.out.println(map);
		HashMap<String, Object> detail = boardService.getBoardDetail(map);
		System.out.println(detail);
		model.addAttribute("detail", detail);
		model.addAttribute("contentpage", "Board/detail.jsp" );
		return "home";
	}
}