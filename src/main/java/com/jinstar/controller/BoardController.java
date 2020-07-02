package com.jinstar.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.jinstar.DTO.MakePage;
import com.jinstar.service.BoardService;
import com.jinstar.service.FileUploadService;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private FileUploadService fileUploadService;
	
	@RequestMapping("/Board")
	public String Board(Model model, @RequestParam HashMap<String, Object> map) {
		System.out.println(map);
		if(!map.containsKey("page")) {
			map.put("page", ""+1);
		}
		int totalcount = boardService.selectBoardTotalCount(map);
		
		MakePage page = new MakePage(Integer.parseInt((String)map.get("page")),totalcount,3,5);
		map.put("page", page);
		System.out.println(map);
		model.addAttribute("page", page);
		List<HashMap<String, Object>> list = boardService.selectBoardList(map);
		model.addAttribute("list", list);
		model.addAttribute("contentpage", "Board/Board.jsp" );
		return "home";
	}
	
	@RequestMapping("/Board/detail")
	public String Boarddetail(Model model, @RequestParam HashMap<String, Object> map) {
		System.out.println(map);
		boardService.updateHit(map);
		HashMap<String, Object> detail = boardService.selectBoardDetail(map);
		System.out.println(detail);
		model.addAttribute("detail", detail);
		model.addAttribute("contentpage", "Board/detail.jsp" );
		return "home";
	}
	
	@RequestMapping("/Board/write")
	public String Boardwrite(Model model, @RequestParam HashMap<String, Object> map) {
		System.out.println(map);
		
		model.addAttribute("contentpage", "Board/write.jsp" );
		return "home";
	}
	
	@RequestMapping("/Board/insertBoard")
	public String BoardinsertBoard(Model model, @RequestParam HashMap<String, Object> map, @RequestParam MultipartFile uploadfile) {
		System.out.println(map);
		System.out.println(uploadfile);
		if(!uploadfile.isEmpty()) {
			System.out.println("파일이 있습니다.");
			map.put("uploadfile",fileUploadService.restore(uploadfile));	
		}
		boardService.insertBoard(map);
		
		return "redirect:/Board";
	}
	
	@RequestMapping("/Board/deleteBoard")
	public String BoarddeleteBoard(Model model, @RequestParam HashMap<String, Object> map) {
		System.out.println(map);
		boardService.deleteBoard(map);
		
		return "redirect:/Board";
	}
	
	@RequestMapping("/Board/update")
	public String Boardupdate(Model model, @RequestParam HashMap<String, Object> map) {
		System.out.println(map);
		HashMap<String, Object> detail = boardService.selectBoardDetail(map);
		System.out.println(detail);
		model.addAttribute("detail", detail);
		model.addAttribute("contentpage", "Board/update.jsp" );
		return "home";
	}
	
	@RequestMapping("/Board/updateBoard")
	public String BoardupdateBoard(Model model, @RequestParam HashMap<String, Object> map) {
		System.out.println(map);
		boardService.updateBoard(map);
		
		return "redirect:/Board/detail?bno="+map.get("bno");
	}
}
