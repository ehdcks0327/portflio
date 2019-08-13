package com.shop.main.security.role;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;


public class User implements UserDetails{

	private static final long serialVersionUID = 1L;

	private List<GrantedAuthority> authorities;
//	private boolean accountNonExpired = true;
//	private boolean accountNonLocked = true;
//	private boolean credentialsNonExpired = true;
//	private boolean enabled = true;

	public void setAuthorities(String role) {
		if (authorities == null) {
			this.authorities = new ArrayList<GrantedAuthority>();
		}
		this.authorities.add(new SimpleGrantedAuthority(role));		
	}

//	public void setEnabled(boolean enabled) {
//		this.enabled = enabled;
//	}

	private String u_accound;
	private String u_password;
		
	public String getU_accound() {
		return u_accound;
	}

	public void setU_accound(String u_accound) {
		this.u_accound = u_accound;
	}

	public String getU_password() {
		return u_password;
	}

	public void setU_password(String u_password) {
		this.u_password = u_password;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return this.authorities;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return u_password;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return u_accound;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

//	@Override
//	public boolean isEnabled() {
//		// TODO Auto-generated method stub
//		return this.enabled;
//	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

}
