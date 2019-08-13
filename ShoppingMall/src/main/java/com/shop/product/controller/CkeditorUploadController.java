package com.shop.product.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value = "/ckeditor")
public class CkeditorUploadController {
	@RequestMapping(value="/upload", method=RequestMethod.POST)
	public void imageUpload(HttpServletRequest request, HttpServletResponse response,
			 @RequestParam MultipartFile upload ) throws Exception{
		//CKEditor ���� ������ �Ѱ��ִ� �̸��� upload �� ���� �Ǿ� �ִ�. �ݵ�� upload �� ����
		//��� ����
		System.out.println("ȣ��̳�?");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		OutputStream out =null;
		PrintWriter printWriter =null;
		
		String fileName =upload.getOriginalFilename(); //÷�� ���� �̸�
		byte[] bytes =upload.getBytes(); //÷�������� ����Ʈ �迭�� ����
	    

		//String uploadPath ="���ε��� ���丮 ���" + fileName; //������ ���� �����
	    String uploadPath =UploadPath.path(request) +fileName;
		
	    out=new FileOutputStream(new File(uploadPath));
	    out.write(bytes); //������ ���� ���ε�
	    
	    
	    String callback =request.getParameter("CKEditorFuncNum");
	    
	    printWriter=response.getWriter();
	    //URL �󿡼� ���� �ִ� �̹��� ���
	   // String fileUrl =request.getContextPath()+"/upload/"+ fileName;
	    String fileUrl ="../resources/upload/"+ fileName;
	    
	    String script="<script>window.parent.CKEDITOR.tools.callFunction(";
	    script +=callback;
	    script +=", '";
	    script +=fileUrl;
	    script +=" ' , '�̹����� ���ε� �߽��ϴ�.'";
	    script +=") </script>";
	    
	    printWriter.println(script);
	    printWriter.flush();
	    
	    
	}
}
