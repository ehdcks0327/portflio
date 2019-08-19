package com.shop.product.service;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shop.dao.ProductDAO;

import com.shop.product.dto.Product;

public class ProductService implements ProductDAO {
	
	private ProductDAO dao;
	
	public ProductService(ProductDAO dao) {
		this.dao = dao;
	}

	public ProductDAO getDao() {
		return dao;
	}
	
	@Override
	public int productAdd(Product product)
	{
		return dao.productAdd(product);
	}

	@Override
	public List<Product> productRead()
	{
		return dao.productRead();
	}
	
	@Override
	public int productUpdate(Product product)
	{
		return dao.productUpdate(product);
	}
	
	@Override
	public int productDelete(Product product)
	{
		return dao.productDelete(product);
	}
	
	@Override
	public List<Product> productList()
	{
		return dao.productList();
	}
	
	
	@Override
	public List<Product> testlist(@Param("pagenum") int pagenum, @Param("contentnum") int contentnum)
	{
		return dao.testlist(pagenum, contentnum);
	}
	
	@Override
	public int testcount()
	{
		return dao.testcount();
	}
}
