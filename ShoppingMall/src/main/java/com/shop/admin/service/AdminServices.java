package com.shop.admin.service;

import java.util.List;
import java.util.Map;

import com.shop.admin.dto.QnA_Post;
import com.shop.dao.AdminDAO;

public class AdminServices implements AdminDAO{

	private AdminDAO dao;

	public AdminServices(AdminDAO dao) {
		this.dao = dao;
	}
	
	public List<QnA_Post> getQnA_AllData(int nowPage) {
		return dao.getQnA_AllData(nowPage);
	}

	@Override
	public List<QnA_Post> getQnA_publicPreData(int nowPage) {
		// TODO Auto-generated method stub
		return dao.getQnA_publicPreData(nowPage);
	}

	@Override
	public List<QnA_Post> getQnA_SecretPreData(Map<String, Integer> nowData) {
		// TODO Auto-generated method stub
		return dao.getQnA_SecretPreData(nowData);
	}

	@Override
	public int setQnA_Post(QnA_Post post) {
		return dao.setQnA_Post(post);
	}

	@Override
	public int setUserRole(Map<String, String> userRoleData) {
		// TODO Auto-generated method stub
		return dao.setUserRole(userRoleData);
	}
	




	
}
