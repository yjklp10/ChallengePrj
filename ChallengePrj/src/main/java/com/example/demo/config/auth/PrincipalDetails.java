package com.example.demo.config.auth;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import com.example.demo.dto.MemberDto;

import lombok.Data;

@Data
public class PrincipalDetails implements UserDetails{
	
	private MemberDto dto;
	private Map<String,Object> attributes;
	
	//일반로그인
	public PrincipalDetails(MemberDto dto) {
		this.dto = dto;
	}
	
	//OAuth로그인
	public PrincipalDetails(MemberDto dto, Map<String,Object> attributes) {
		this.dto = dto;
		this.attributes = attributes;
	}
	
	//해당 user의 권한을 리턴하는 곳
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		Collection<GrantedAuthority> collect = new ArrayList<>();
		collect.add(new GrantedAuthority() {
			
			@Override
			public String getAuthority() {
				return dto.getMemberrole();
			}
		});
		return collect;
	}
	
	
	
	public MemberDto getMemberDto() {
        return dto;
    }

	@Override
	public String getPassword() {
		return dto.getMemberpw();
	}

	@Override
	public String getUsername() {
		return dto.getMemberid();
	}

	//계정만료여부
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	//계정잠김여부
	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	//비밀번호 사용기간
	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	//계정활성화여부
	@Override
	public boolean isEnabled() {
		return true;
	}

	

}
