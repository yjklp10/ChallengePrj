package com.example.demo.config.oauth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.example.demo.config.auth.PrincipalDetails;
import com.example.demo.controller.LoginController;
import com.example.demo.dto.MemberDto;
import com.example.demo.mapper.MemberMapper;

@Service
public class PrincipalOauth2UserService extends DefaultOAuth2UserService{
	
	@Autowired
	private LoginController controller;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		System.out.println("getClientRegistration : "+userRequest.getClientRegistration());
		System.out.println("getAccessToken : "+userRequest.getAccessToken());
		
		
		OAuth2User oauth2User = super.loadUser(userRequest);
		System.out.println("getAttributes : "+super.loadUser(userRequest).getAttributes());
		
		String provider = userRequest.getClientRegistration().getClientId(); //google
		String providerId = oauth2User.getAttribute("sub");
		String memberid = provider+"_"+providerId;
		String memberpw = bCryptPasswordEncoder.encode("겟인데어");
		String memberemail = oauth2User.getAttribute("email");
		String role = "ROLE_USER";
		
		MemberDto memberEntity = mapper.idChk(memberid);
		
		if(memberEntity == null) {
			memberEntity.setMemberid(memberid);
			memberEntity.setMemberpw(memberpw);
			memberEntity.setMemberemail(memberemail);
			memberEntity.setMemberrole(role);
			memberEntity.setProvider(provider);
			memberEntity.setProviderId(providerId);
			//controller.registerForm(memberEntity);
					
		}else {
			
		}
		
		return new PrincipalDetails(memberEntity,oauth2User.getAttributes());
	}

}
