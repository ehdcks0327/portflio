package com.shop.main.security.core;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.shop.main.security.role.User;


public class CustomAuthenticationProvider implements AuthenticationProvider {

	@Autowired
    private CustomUserService userService;	
	
	@Autowired
	BCryptPasswordEncoder encodePassword;
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		// TODO Auto-generated method stub
		System.out.println("userService id : " + userService);
		
		String u_account = (String) authentication.getPrincipal();
		String u_password = (String) authentication.getCredentials();
		
		System.out.println("input ID : " + u_account);
		
		User user = (User)userService.loadUserByUsername(u_account);

		if (!encodePassword.matches(u_password, user.getPassword())) {
			throw new BadCredentialsException(u_account);
		}
		
		if(!user.isEnabled()) {
            throw new BadCredentialsException(u_account);
        }
		
		return new UsernamePasswordAuthenticationToken(u_account, u_password, user.getAuthorities());
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return true;
	}

}
