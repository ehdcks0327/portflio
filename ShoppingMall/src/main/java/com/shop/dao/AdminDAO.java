package com.shop.dao;

import java.util.List;
import java.util.Map;

import com.shop.admin.dto.QnA_Post;
import com.shop.admin.dto.SignUp_Data;
import com.shop.main.security.role.User;

public interface AdminDAO {
	
	public List<QnA_Post> getQnA_AllData(int nowPage);
	
	public List<QnA_Post> getQnA_SecretPreData(Map<String, Integer> nowData);	
	
	public List<QnA_Post> getQnA_publicPreData(int nowPage);
	
	public int setQnA_Post(QnA_Post post);
	
	public int setUserRole(Map<String, Object> userRoleData);
	
	public int modifyNewUserRole(Map<String, Object> userRoleData);
	
	public int setUserData(SignUp_Data userData);
	
	public int setUserRoleData(Map<String, Object> userRoleData);
	
	public User getUserDetailById(String id);
	
}
