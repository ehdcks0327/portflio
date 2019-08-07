package com.shop.product.service;


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
	public int productInfo(Product product)
	{
		return dao.productInfo(product);
	}
	
}
