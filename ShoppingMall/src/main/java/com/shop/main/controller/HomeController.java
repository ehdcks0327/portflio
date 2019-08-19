package com.shop.main.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	BCryptPasswordEncoder encodePassword;
	
	@Autowired
	AdminServices service;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "index";
	}
	
	@RequestMapping(value = "/s_test")
	public String errorIndex(Model model) {
		System.out.println("admin adminIndex");
		return "/admin/blank.board-temp";
	}
	
	@RequestMapping(value = "/fileupload")
	public String fileupload(Model model) {
		System.out.println("CKEDITER TEST");
		return "index";
	}

}
