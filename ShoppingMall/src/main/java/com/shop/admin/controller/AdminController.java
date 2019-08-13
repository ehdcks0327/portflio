package com.shop.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.admin.service.AdminServices;

/**
 * Handles requests for the application home page.
 */

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	

	@Autowired
	private AdminServices as;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/ad_index")
	public String adminIndex(Model model) {
		return "/admin/index_admin.board-temp";
	}
	

	
	@RequestMapping(value = "/ad_login")
	public String adminLogin(Model model) {
		return "/admin/login";
	}
	
	@RequestMapping(value = "/ad_forgot-password")
	public String adminForgotPassword(Model model) {
		return "/admin/forgot-password";
	}
	
	@RequestMapping(value = "/ad_charts")
	public String adminCharts(Model model) {
		return "/admin/charts";
	}
	
	@RequestMapping(value = "/ad_register")
	public String adminRegister(Model model) {
		return "/admin/register";
	}
	
	@RequestMapping(value = "/ad_qna-board")
	public String adminQnABoard(Model model) {
		return "/admin/qna-borad";
	}	

	@RequestMapping(value = "/ad_tables")
	public String adminTable(Model model) {
		return "/admin/tables";
	}
	
}
