package com.shop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shop.product.dto.Product;



public interface ProductDAO {
	
	//��ǰ���������
	public int productAdd(Product product);
	
	//��ǰ�������б�
	public List<Product> productRead();
	
	//��ǰ������ ����
	public int productUpdate(Product product);
	
	//��ǰ������ ����
	public int productDelete(Product product);
	
	//��ǰ���������
	public List<Product> productList();
	
	
	public List<Product> testlist(@Param("pagenum") int pagenum, @Param("contentnum") int contentnum);
	
	public int testcount();
}
