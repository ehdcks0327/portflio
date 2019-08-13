package com.shop.admin.service;

import java.util.List;
import java.util.Map;

import com.shop.admin.dto.QnA_Post;
import com.shop.admin.dto.SignUp_Data;
import com.shop.dao.AdminDAO;
import com.shop.main.security.role.User;

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

	public int setUserRole(Map<String, Object> userRoleData) {
		// TODO Auto-generated method stub
		return dao.setUserRole(userRoleData);
	}

	@Override
	public int modifyNewUserRole(Map<String, Object> userRoleData) {
		// TODO Auto-generated method stub
		return dao.modifyNewUserRole(userRoleData);
	}

	@Override
	public User getUserDetailById(String id) {
		// TODO Auto-generated method stub
		return dao.getUserDetailById(id);
	}

	@Override
	public int setUserData(SignUp_Data userData) {
		// TODO Auto-generated method stub
		return dao.setUserData(userData);
	}

	@Override
	public int setUserRoleData(Map<String, Object> userRoleData) {
		// TODO Auto-generated method stub
		return dao.setUserRoleData(userRoleData);
	}
	
	
	




	
}
