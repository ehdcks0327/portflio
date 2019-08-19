package com.shop.product.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;



@Controller
@RequestMapping(value = "/upload")
public class ImageUploadController {

	// ��Ʈ�ѷ�Ŭ������ �α׸� ���
    private static final Logger logger = LoggerFactory.getLogger(ImageUploadController.class);
 
    // �̹��� ���ε�
    // product_edit���������� ���εǴ� �޼ҵ�
    // �̹����� �����ϰ�, �ҷ�����, ���ε��ϱ����� �Ű������� ����

    @RequestMapping(value="/imageUpload") 
    public void imageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload)
    //MultipartFile Ÿ���� ckedit���� upload�� �̸����� �����ϰ� �ȴ�
            throws Exception {
 
        // �ѱ۱����� �����ϱ����� ���ڼ� ����
        response.setCharacterEncoding("utf-8");
 
        // ���������� �Ķ���ͷ� ���޵Ǵ� response ��ü�� �ѱ� ����
        response.setContentType("text/html; charset=utf-8");
 
        // ���ε��� ���� �̸�
        //String fileName = upload.getOriginalFilename();
        String fileName = genSaveFileName(upload.getOriginalFilename());
 
        // ������ ����Ʈ �迭�� ��ȯ
        byte[] bytes = upload.getBytes();
 
        // �̹����� ���ε��� ���丮(���� ���丮�� ����)
        String realPath = request.getSession().getServletContext().getRealPath("");
        String finalPath = "resources\\images\\";
        System.out.println("realPath : " + realPath);
        String uploadPath =  realPath+finalPath;
      //"D:\\bigdata\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ShoppingMall\\WEB-INF\\views\\images\\";
        
        OutputStream out = new FileOutputStream(new File(uploadPath + fileName));
 
        // ������ ���ε�
        // write�޼ҵ��� �Ű������� ������ �� ����Ʈ�� �Ű������� �ش�.
        // ������ ����Ʈ�� ��� ��Ʈ���� ���� (����ϱ� ���ؼ�)
        out.write(bytes);
        out.flush();
        System.out.println(uploadPath);
        // Ŭ���̾�Ʈ�� ��� ǥ��
        String callback = request.getParameter("CKEditorFuncNum");
 
        // ����=>Ŭ���̾�Ʈ�� �ؽ�Ʈ ����(�ڹٽ�ũ��Ʈ ����)
        PrintWriter printWriter = response.getWriter();
        String fileUrl = request.getContextPath() + "/images/" + fileName;
        System.out.println(fileUrl);
        printWriter.println("<script>window.parent.CKEDITOR.tools.callFunction(" + callback + ",'" + fileUrl
                + "','�̹����� ���ε�Ǿ����ϴ�.')" + "</script>");
        printWriter.flush();

//        JsonObject json = new JsonObject();
//        json.addProperty("uploaded", 1);
//        json.addProperty("fileName", fileName);
//        json.addProperty("url", fileUrl);
//        
//        printWriter.println(json);
        
    }
    private String genSaveFileName(String extName) {
	    String fileName = "";
	     
	    Calendar calendar = Calendar.getInstance();
	    fileName += calendar.get(Calendar.YEAR);
	    fileName += String.valueOf(calendar.get(Calendar.MONTH) + 1);
	    fileName += calendar.get(Calendar.DATE);
	    fileName += calendar.get(Calendar.HOUR);
	    fileName += calendar.get(Calendar.MINUTE);
	    fileName += calendar.get(Calendar.SECOND);
	    fileName += calendar.get(Calendar.MILLISECOND);
	    fileName += "_"+extName;
	    System.out.println("genSaveFileName() : "+fileName); 
	    return fileName;
	  }
}
