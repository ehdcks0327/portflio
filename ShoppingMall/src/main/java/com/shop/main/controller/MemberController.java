package com.shop.main.controller;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.admin.dto.SignUp_Data;
import com.shop.admin.service.AdminServices;

/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/member")
@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private BCryptPasswordEncoder encodePassword;
	
	@Autowired
	private AdminServices service;
	
	@Autowired
	private JavaMailSenderImpl javaMailSenderImpl;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "/admin/blank.board-temp";
	}
	
	@RequestMapping(value = "/blank", method = RequestMethod.GET)
	public String testBlank(Locale locale, Model model) {
		return "/admin/blank2.board-temp";
	}
	
	@RequestMapping(value = "/mail_check", method = RequestMethod.GET)
	public String mailCheck(@RequestParam("uuid") String uuid, @RequestParam("u_id") int u_id, Model model) {
		
		Map<String, Object> userRoleData = new HashMap<String, Object>();
		
		userRoleData.put("u_id", u_id);
		userRoleData.put("uuid", "'" + uuid + "'");
		
		int retval = service.modifyNewUserRole(userRoleData);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/sign_up")
	public String signUpProcess (
			@RequestParam("firstName")String firstName,
			@RequestParam("nickName")String nickName,
			@RequestParam("inputPassword")String inputPassword,
			@RequestParam("inputEmail")String inputEmail,
			@RequestParam("userName")String userName,
			@RequestParam("phone")String phone,
			@RequestParam("zoneCode")String zoneCode,
			@RequestParam("firstAddress")String firstAddress,
			@RequestParam("secondAddress")String secondAddress,
			HttpServletRequest request,
			Model model) throws IOException, MessagingException {
		
		inputPassword = encodePassword.encode(inputPassword);
		System.out.println("save addr : " + firstAddress);
		SignUp_Data userData = new SignUp_Data(firstName, nickName, inputPassword, inputEmail, phone, zoneCode, firstAddress, secondAddress);
		service.setUserData(userData);

		String uuid = UUID.randomUUID().toString();	
		System.out.println("id : " + userData.getU_id());
		insertUserRole(userData.getU_id(), uuid);
		
		
		/*
		 * 인증 메일이 발송됨
		 */
		
		sendingMail(userData.getU_id(), request);
		
		/*
		 * 인증메일이 발송된것을 확인시켜줌.
		 *   
		 */
		
		model.addAttribute("userName", firstName);
		model.addAttribute("email", inputEmail);
		
		return "/admin/blank2.board-temp";
	}
	
	private void insertUserRole(int u_id, String uuid) {
		Map<String, Object> userRoleData = new HashMap<String, Object>();
		
		userRoleData.put("u_id", u_id);
		userRoleData.put("u_role", "ROLE_USER");
		userRoleData.put("u_enable", uuid);
		
		service.setUserRoleData(userRoleData);
	}
	
	private void sendingMail(int u_id, HttpServletRequest request) 
		throws IOException,	MessagingException {
		String path = request.getServletContext().getRealPath("/resources/main/mail/sign-up-check-mail.html");
		
		String uuid = UUID.randomUUID().toString();
		uuid = uuid.replace("-", "");

		StringBuilder mailText = loadMail(path, u_id, uuid);		
				
		MimeMessage message = javaMailSenderImpl.createMimeMessage();
		
		message.setFrom(new InternetAddress("java.carnad@gmail.com"));
		message.addRecipient(RecipientType.TO, new InternetAddress("gunzun@naver.com"));
		message.setSubject("연습용 메일입니다.");
		message.setText(mailText.toString(), "utf-8", "html");
		
		javaMailSenderImpl.send(message);
	}
	
	private StringBuilder loadMail(String path, int u_id, String uuid) throws IOException {
		File file = new File(path);
		FileReader fileReader = new FileReader(file);
		
		StringBuilder mailText = new StringBuilder();
        BufferedReader buff = new BufferedReader(fileReader);
        String pageContents;
        while((pageContents = buff.readLine())!=null){
            //System.out.println(pageContents);
        	if (pageContents.contains("U_ID")) {
        		pageContents = pageContents.replace("U_ID", String.valueOf(u_id));
        		pageContents = pageContents.replace("UUID_KEY", uuid);
			}
        	mailText.append(pageContents);
        	mailText.append("\r\n");
        }
        buff.close();
        fileReader.close();
        
		return mailText;
	}
	
}
