package com.shop.dao;

import java.util.List;

import com.shop.product.dto.Product;

public interface ProductDAO {
	
	//상품페이지등록
	public int productAdd(Product product);
	
	//상품페이지읽기
	public int productRead(Product product);
	
	//상품페이지 수정
	public int productUpdate(Product product);
	
	//상품페이지 삭제
	public int productDelete(Product product);
	
	//상품목록페이지
	public List<Product> productList();
}
