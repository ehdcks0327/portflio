package com.shop.product.controller;



import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.dao.ProductDAO;
import com.shop.product.dto.PageMaker;
import com.shop.product.dto.Product;
import com.shop.product.service.ProductService;



@Controller
@RequestMapping(value = "/product")
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	ProductService pservice;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	//상품등록 페이지 호출
	@RequestMapping(value = "/call_product", method = RequestMethod.GET)
	public String callAdder(Locale locale, Model model) {
		
		return "/product/adder.product-temp";
	}
	//상품등록 메소드
	@RequestMapping(value = "/call_adder",method=RequestMethod.GET)
	public String productAdd(Product product)
	{
		int ret=0;
		//등록자 id 설정 넣어줘야됨
		System.out.println(product.getU_id());
		product.setU_nick("test");
		product.setU_id(1);
		ret=pservice.productAdd(product);
		
		return "/product/addSuccess";
	}
	//상품목록페이지
	@RequestMapping(value = "/call_productList",method=RequestMethod.GET)
	public String prouctList(Model model)
	{
			
		List<Product> productList = pservice.productList();
		
		//System.out.println("리스트 갯수"+productList.size());
		model.addAttribute("productList", productList);
		
		return "product_List";
	}

	
	//상세페이지 호출
	@RequestMapping(value = "/call_productpage",method=RequestMethod.GET)
	public String productpage(Model model)
	{
		//System.out.println("상품페이지호출");
		List<Product> productList=pservice.productRead();
		model.addAttribute("productList", productList);
		return "product_page";
	}

	@RequestMapping("/list")
	public String list(HttpServletRequest request) {
		PageMaker pagemaker = new PageMaker();
		String pagenum = request.getParameter("pagenum");
		String contentnum = request.getParameter("contentnum");
		int cpagenum = Integer.parseInt(pagenum);
		int ccontentnum = Integer.parseInt(contentnum);
		
		pagemaker.setTotalcount(pservice.testcount()); //전체 게시글 개수를 지정한다
		pagemaker.setPagenum(cpagenum-1); //현제 페이지를 페이지 객체에 지정한다 -1을 해야 쿼리에서 사용 가능
		pagemaker.setContentnum(ccontentnum); //한 페이지에 몇개씩 게시글을 보여줄지 지정한다.
		pagemaker.setCurrentblock(cpagenum); // 현제 페이지 블록이 몇번인지 현재 페이지 번호를 통해서 지정한다.
		pagemaker.setLastblock(pagemaker.getTotalcount()); //마지막 블록 번호를 전체 게시글 수를 통해서 정한다.
		
		pagemaker.prevnext(cpagenum);
		pagemaker.setStartPage(pagemaker.getCurrentblock());
		pagemaker.setEndPage(pagemaker.getLastblock(), pagemaker.getCurrentblock());
		
		List<Product> testlist = new ArrayList<>();
		testlist = pservice.testlist(pagemaker.getPagenum()*10, pagemaker.getContentnum());
		request.setAttribute("list", testlist);
		request.setAttribute("page", pagemaker);
		return "/product/productlist.product-temp";   // /*/*.product-temp
	}
	
	@RequestMapping("/product_page")
	public String prouct_page(HttpServletRequest request)
	{
		String p_id = request.getParameter("p_id");
		
		return "";
	}
}
