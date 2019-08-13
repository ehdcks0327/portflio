package com.shop.dao;

import java.util.List;

import com.shop.product.dto.Product;

public interface ProductDAO {
	
	//��ǰ���������
	public int productAdd(Product product);
	
	//��ǰ�������б�
	public int productRead(Product product);
	
	//��ǰ������ ����
	public int productUpdate(Product product);
	
	//��ǰ������ ����
	public int productDelete(Product product);
	
	//��ǰ���������
	public List<Product> productList();
}
