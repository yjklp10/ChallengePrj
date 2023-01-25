package com.example.demo.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.demo.config.auth.PrincipalDetails;
import com.example.demo.dto.MemberDto;
import com.example.demo.mapper.MemberMapper;
import com.mysql.cj.Session;

@Service
public class PrincipalDetailsBizImpl implements UserDetailsService{

	@Autowired
	private MemberMapper mapper;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("memberid : "+username);
		MemberDto dtoEntity = mapper.idChk(username);
		if(dtoEntity != null) {
			
			return new PrincipalDetails(dtoEntity);
		}
		
		return null;
	}

}
