package com.jinstar.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	@RequestMapping("/photoUpload")
	public String PhotoUpload(HttpServletRequest request, HashMap<String, Object> Photo){
		System.out.println(Photo);
		return "redirect:/Board";
	}
	
	@RequestMapping("/multiplephotoUpload")
	public void multiplePhotoUpload(HttpServletRequest request, HttpServletResponse response){
		try {
			//파일정보
			String sFileInfo ="";
			//파일명을 받는다 - 일반 원본파일명
			String filename = request.getHeader("file-name");
			System.out.println("originFilename : " +filename);
			//파일 확장자
			String filename_ext = filename.substring(filename.lastIndexOf(".")+1);
			//확장자를 소문자로 변경
			filename_ext = filename_ext.toLowerCase();
			//파일 기본경로
			String dftFilePath = request.getSession().getServletContext().getRealPath("/");
			System.out.println("dftFilePathname : " + dftFilePath);
			//파일 기본경로 - 상세경로
			String filePath = dftFilePath + "resources" + File.separator + "smarteditor" + File.separator + "photo_uploader" + File.separator + "demo" + File.separator + "upload" + File.separator;
			System.out.println("FilePathname : " + filePath );
			File file = new File(filePath);
			if(!file.exists()) {
				file.mkdir();
			}
			String realFileNm = "";	
			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
			String today = formatter.format(new java.util.Date());
			realFileNm = today+UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
			String rlFileNm = filePath + realFileNm;
			//서버에 파일 쓰기
			InputStream is = request.getInputStream();
			OutputStream os = new FileOutputStream(rlFileNm);
			int numRead;
			byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
			while((numRead = is.read(b,0,b.length)) != -1) {
				os.write(b,0,numRead);
			}
			if(is != null){
				is.close();
			}
			os.flush();
			os.close();
			// 서버에 파일쓰기
			// 정보 출력
			sFileInfo += "&bNewLine=true";
			sFileInfo += "&sFileName="+filename;
			sFileInfo += "&sFileURL="+"/JinwooKing-hugstar21/resources/smarteditor/photo_uploader/demo/upload/"+realFileNm;
			//sFileInfo += "&sFileURL="+"/controller/resources/smarteditor/photo_uploader/demo/upload/"+realFileNm;
			PrintWriter print = response.getWriter();
			System.out.println("sFileInfo");
			print.print(sFileInfo);
			print.flush();
			print.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}
}
