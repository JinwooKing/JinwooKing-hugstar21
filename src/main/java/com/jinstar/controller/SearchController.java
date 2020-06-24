package com.jinstar.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jinstar.DTO.MakePage;
import com.jinstar.service.SearchService;


@Controller
public class SearchController {
	
	@Autowired
	private SearchService searchService;
	
	@RequestMapping("/search")
	public String search(Model model, @RequestParam HashMap<String, Object>map ) {
		System.out.println(map);
		if(!map.containsKey("page")) {
			map.put("page", ""+1);
		}
		int totalcount = searchService.selectSearchTotalCount(map);
		MakePage page = new MakePage(Integer.parseInt((String)map.get("page")),totalcount,3,5);
		map.put("page", page);
		System.out.println(page);
		model.addAttribute("page", page);
		List<HashMap<String, Object>> list = searchService.selectSearchList(map);
		model.addAttribute("list", list);
		model.addAttribute("contentpage", "Search/Search.jsp" );
		
		return "home";
	}
}
