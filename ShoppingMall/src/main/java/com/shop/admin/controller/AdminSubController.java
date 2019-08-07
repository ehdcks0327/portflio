package com.shop.admin.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.admin.dto.QnA_Post;
import com.shop.admin.dto.SignUp_Mail;
import com.shop.admin.service.AdminServices;

/**
 * Handles requests for the application home page.
 */

@Controller
@RequestMapping(value = "/admin/func")
public class AdminSubController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminSubController.class);
	
	@Autowired
	AdminServices service;
	
	@Autowired
	private JavaMailSenderImpl javaMailSenderImpl;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/")
	public String adminIndex(Model model) {
		System.out.println("admin adminIndex");
		return "/admin/board-qna.board-temp";
	}
	
	@RequestMapping(value = "/sign_up")
	public String sendMail(@RequestParam("uuid") String uuid, @RequestParam("u_id") int u_id, Model model) {
		
		
		
		
		return "/admin/board-qna.board-temp";
	}
	
	@RequestMapping(value = "/mail_test")
	public String testMail(Model model, HttpServletRequest request) throws Exception {
		String path = request.getServletContext().getRealPath("/resources/main/mail/sign-up-check-mail.html");
		
		String uuid = UUID.randomUUID().toString();
		uuid = uuid.replace("-", "");
		StringBuilder mailText = loadMail(path, uuid);		
		
		String u_id = "1";
		insertUserRole(u_id, uuid);
		
		MimeMessage message = javaMailSenderImpl.createMimeMessage();
		
		message.setFrom(new InternetAddress("java.carnad@gmail.com"));
		message.addRecipient(RecipientType.TO, new InternetAddress("gunzun@naver.com"));
		message.setSubject("연습용 메일입니다.");
		message.setText(mailText.toString(), "utf-8", "html");
		
		javaMailSenderImpl.send(message);
		
		return "/admin/board-qna.board-temp";
	}
	
	
	@RequestMapping(value = "/secret")
	public String secretBoard(@RequestParam("page") String page, @RequestParam("u_id") String u_id, Model model) {
		int nowPage = Integer.parseInt(page) * 10;
		int target_id = Integer.parseInt(u_id);
		HashMap<String, Integer> nowData = new HashMap<String, Integer>();
		nowData.put("nowPage", nowPage);
		nowData.put("target_id", target_id);
		List<QnA_Post> resultList = service.getQnA_SecretPreData(nowData);
		
		model = inputJSON(resultList, nowPage ,model);
				
		return "/admin/qna-page";
	}
	
	@RequestMapping(value = "/public")
	public String publicBoard(@RequestParam("page") String page, Model model) {
		int nowPage = Integer.parseInt(page) * 10;
		List<QnA_Post> resultList = service.getQnA_publicPreData(nowPage);

		model = inputJSON(resultList, nowPage ,model);
		
		return "/admin/qna-page";
	}
	
	@RequestMapping(value = "/view")
	public String viewBoard(@RequestParam("que_id") String que_id, Model model) {

		return "/admin/qna-page";
	}
	
	@RequestMapping(value = "/write")
	public String writeBoard(@RequestParam("que_id") String que_id, Model model) {		
		
		return "/admin/board-qna.board-temp";
	}
	
	@RequestMapping(value = "/register")
	public String registerUser(@RequestParam("que_id") String que_id, Model model) {		
		
		
		return "/admin/board-qna.board-temp";
	}
	
	private Model inputJSON(List<QnA_Post> resultList, int page, Model model) {		
		
		JSONArray jsonResult = new JSONArray();
				
		for (QnA_Post post : resultList) {
			JSONObject data = new JSONObject();
			data.put("no", post.getNo());
			data.put("que_id", post.getQue_id());
//			data.put("u_id", post.getU_id());
//			data.put("que_secret", post.getQue_secret());
			data.put("que_title", post.getQue_title());
//			data.put("que_text", post.getQue_text());
			data.put("que_date", post.getQue_date());
			data.put("que_check", post.getQue_check());
			jsonResult.add(data);
		}
		
		if (page == 0) {
			JSONObject data = new JSONObject();
			data.put("rows", resultList.get(0).getNo());
			jsonResult.add(data);
		}
				
		model.addAttribute("resultList", jsonResult);
		
		return model;
	}
	
	private StringBuilder loadMail(String path, String uuid) throws IOException {
		File file = new File(path);
		FileReader fileReader = new FileReader(file);
		
		StringBuilder mailText = new StringBuilder();
        BufferedReader buff = new BufferedReader(fileReader);
        String pageContents;
        while((pageContents = buff.readLine())!=null){
            //System.out.println(pageContents);
        	if (pageContents.contains("UUID_KEY")) {
        		System.out.println("UUID : " + uuid);
        		pageContents = pageContents.replace("UUID_KEY", uuid);
			}
        	mailText.append(pageContents);
        	mailText.append("\r\n");
        }
        buff.close();
        fileReader.close();
        
		return mailText;
	}
	
	private void insertUserRole(String u_id, String uuid) {
		Map<String, String> userRoleData = new HashMap<String, String>();
		
		userRoleData.put("u_id", u_id);
		userRoleData.put("UUID", uuid);
		
		service.setUserRole(userRoleData);
	}
	
}
