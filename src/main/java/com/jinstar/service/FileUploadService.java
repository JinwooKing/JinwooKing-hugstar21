package com.jinstar.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileUploadService {
	
	public String restore(MultipartFile multipartFile, HttpServletRequest request, HttpServletResponse response) {
		String save_path = request.getSession().getServletContext().getRealPath("/") + "resources" + File.separator +  "upload"+ File.separator;
		String saveFileName = null;
		try {
			// ���� ����
			String originFilename = multipartFile.getOriginalFilename();
			String extName
				= originFilename.substring(originFilename.lastIndexOf(".")+1);
			Long size = multipartFile.getSize();
			
			// �������� ���� �� ���� �̸�
			saveFileName = genSaveFileName(extName);
			
			System.out.println("originFilename : " + originFilename);
			System.out.println("extensionName : " + extName);
			System.out.println("size : " + size);
			System.out.println("saveFileName : " + saveFileName);
			
			writeFile(multipartFile, saveFileName, save_path);
		}
		catch (IOException e) {	
			throw new RuntimeException(e);
		}
		return saveFileName;
	}
	
	
	// ���� �ð��� �������� ���� �̸� ����
	private String genSaveFileName(String extName) {
		String fileName = "";
		
		SimpleDateFormat frm = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		String time1 = frm.format(date);
		fileName += time1;
		fileName += UUID.randomUUID().toString();
		fileName += "." + extName;
		
		return fileName;
	}
	
	
	// ������ ������ write �ϴ� �޼���
	private boolean writeFile(MultipartFile multipartFile, String saveFileName, String save_path)
								throws IOException{
		boolean result = false;

		byte[] data = multipartFile.getBytes();
		FileOutputStream fos = new FileOutputStream(save_path + saveFileName);
		fos.write(data);
		fos.close();
		
		return result;
	}

	//naver editor file upload
	public void restore(HttpServletRequest request, HttpServletResponse response) {
		String save_path = request.getSession().getServletContext().getRealPath("/") + "resources" + File.separator +  "upload"+ File.separator;
		String saveFileName = null;
		try {
			//��������
			String sFileInfo ="";
			String originFilename = request.getHeader("file-name");
			String extName = originFilename.substring(originFilename.lastIndexOf(".")+1).toLowerCase();			
			
			saveFileName = genSaveFileName(extName);
			
			System.out.println("originFilename : " + originFilename);
			System.out.println("extensionName : " + extName);
			System.out.println("saveFileName : " + saveFileName);		
			
			//������ ���� ����
			InputStream is = request.getInputStream();
			OutputStream os = new FileOutputStream(save_path + saveFileName);
			
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
			// ������ ���Ͼ���
			// ���� ���
			sFileInfo += "&bNewLine=true";
			sFileInfo += "&sFileName="+originFilename;
			//sFileInfo += "&sFileURL="+"/JinwooKing-hugstar21/resources/upload/"+saveFileName;
			sFileInfo += "&sFileURL="+"/controller/resources/upload/"+saveFileName;
			PrintWriter print = response.getWriter();
			print.print(sFileInfo);
			print.flush();
			print.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}
}