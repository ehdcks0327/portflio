package com.shop.product.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.shop.product.dto.Product;
import com.shop.product.service.ProductService;



@Controller
@RequestMapping(value = "/product")
public class ProductController {
	
	
	
	@Autowired
	ProductService pservice;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/call_product", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		
		return "product_registration";
	}
	
	@RequestMapping(value = "/call_adder",method=RequestMethod.GET)
	public String productAdd(Product product)
	{
		int ret=0;
		//등록자 id 설정 넣어줘야됨
		System.out.println(product.getU_id());
		ret=pservice.productAdd(product);
		
		return "/product/addSuccess";
	}
	
	@RequestMapping(value = "/call_productlist",method=RequestMethod.GET)
	public String prouctlist(Product product)
	{
		 
		return "/product/productlist";
	}
	
	@RequestMapping(value = "/call_productpage",method=RequestMethod.GET)
	public String productpage(List<Product> listInfo)
	{
		//System.out.println("상품페이지호출");
		int ret=0;
		//ret=pservice.productpage(listInfo);
		
		return "product_page";
	}
}
