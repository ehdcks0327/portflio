package com.shop.product.service;


import java.util.List;

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
	public int productRead(Product product)
	{
		return dao.productRead(product);
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
}
