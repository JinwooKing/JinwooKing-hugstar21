package com.jinstar.service;

import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileUploadService {
	//private static final String SAVE_PATH = "C:/Users/jinwo/git/JinwooKing-hugstar21/src/main/webapp/resources/upload";
	//private static final String PREFIX_URL = "C:/Users/jinwo/git/JinwooKing-hugstar21/src/main/webapp/resources/upload/";
	private static final String SAVE_PATH = "/usr/local/apache-tomcat-9.0.33/webapps/JinwooKing-hugstar21/resources/upload";
	private static final String PREFIX_URL = "/usr/local/apache-tomcat-9.0.33/webapps/JinwooKing-hugstar21/resources/upload/";
	
	public String restore(MultipartFile multipartFile) {
		String url = null;
		String saveFileName = null;
		try {
			// 파일 정보
			String originFilename = multipartFile.getOriginalFilename();
			String extName
				= originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
			Long size = multipartFile.getSize();
			
			// 서버에서 저장 할 파일 이름
			saveFileName = genSaveFileName(extName);
			
			System.out.println("originFilename : " + originFilename);
			System.out.println("extensionName : " + extName);
			System.out.println("size : " + size);
			System.out.println("saveFileName : " + saveFileName);
			
			writeFile(multipartFile, saveFileName);
			url = PREFIX_URL + saveFileName;
		}
		catch (IOException e) {	
			throw new RuntimeException(e);
		}
		return saveFileName;
	}
	
	
	// 현재 시간을 기준으로 파일 이름 생성
	private String genSaveFileName(String extName) {
		String fileName = "";
		
		SimpleDateFormat frm = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		String time1 = frm.format(date);
		fileName += time1;
		fileName += extName;
		
		return fileName;
	}
	
	
	// 파일을 실제로 write 하는 메서드
	private boolean writeFile(MultipartFile multipartFile, String saveFileName)
								throws IOException{
		boolean result = false;

		byte[] data = multipartFile.getBytes();
		FileOutputStream fos = new FileOutputStream(SAVE_PATH + "/" + saveFileName);
		fos.write(data);
		fos.close();
		
		return result;
	}
}