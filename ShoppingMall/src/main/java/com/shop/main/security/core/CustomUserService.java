package com.shop.main.security.core;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.shop.admin.service.AdminServices;
import com.shop.main.security.role.User;

@Component
public class CustomUserService implements UserDetailsService {

	
	
	@Autowired
	private AdminServices service;
	
	@Override
	public UserDetails loadUserByUsername(String u_account) throws UsernameNotFoundException {
		System.out.println("load CustomUserService");
		User user = service.getUserDetailById(u_account);
		if (user == null) {
			throw new UsernameNotFoundException(u_account);
		}
		return user;
	}

}
