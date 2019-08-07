package com.shop.product.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.admin.controller.AdminController;
import com.shop.product.dto.Product;
import com.shop.product.service.ProductService;

@Controller
@RequestMapping(value = "/product")
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	ProductService pservice;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/call_product", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		
		return "/product/adder";
	}

	@RequestMapping(value = "/call_adder",method=RequestMethod.GET)
	public String productadd(Product product)
	{
		int ret=0;
		ret=pservice.productInfo(product);
		return "index";
	}
	
}
