package edu.global.ex.vo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.extern.slf4j.Slf4j;


@Slf4j
public class MsCustomUserDetailsVO implements UserDetails {

	private String username;
	private String password;
	private List<GrantedAuthority> authorities;

	public MsCustomUserDetailsVO(MsUserVO user) {
		this.setAuthorities(user);
		this.setPassword(user.getPassword());
		this.setUsername(user.getUsername());
	}

	// setter 함수
	public void setUsername(String username) {
		this.username = username;
	}

	// setter 함수
	public void setPassword(String password) {
		this.password = password;
	}

	// setter
	public void setAuthorities(MsUserVO userVO) {

		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

		for (MsAuthVO auth : userVO.getAuthList()) {
			authorities.add(new SimpleGrantedAuthority(auth.getAuthority()));
		}

		this.authorities = authorities;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return this.authorities;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return this.password;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return this.username;
	}

	// 계정이 만료 되지 않았는가?
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	// 계정이 잠기지 않았는가?
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	// 패스워드가 만료되지 않았는가?
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	// 계정이 활성화 되었는가?
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

}
