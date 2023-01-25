
package com.example.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.example.demo.config.oauth.PrincipalOauth2UserService;

@Configuration
@EnableWebSecurity  	//스프링 시큐리티 필터를 스프링 필터체인에 등록
@EnableGlobalMethodSecurity(securedEnabled = true,prePostEnabled = true) //@Secured("ROLE_ADMIN") 어노테이션 활성화, @PreAuthorize("hasRole('ROLE_MANAGER') or hasRole('ROLE_ADMIN')") , @PostAuthorize()어노테이션활성화
public class SecurityConfig {

	@Autowired
	private PrincipalOauth2UserService principalOauth2UserService;
	
	//해당 메서드의 리턴되는 오브첵트를 IoC로 등록해준다
	@Bean
	public BCryptPasswordEncoder encodePwd() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception{
		http.csrf().disable();
		http.authorizeRequests()
			.antMatchers("/makingChallengeForm/**").authenticated() 	//로그인 하였을 때만 접근가능
			.antMatchers("/manager/**").access("hasRole('ROLE_MANAGER') or hasRole('ROLE_ADMIN')")	//manager만 접근가능
			.anyRequest().permitAll()					//위에 적힌 주소를 제외한 모든주소 접근허용
			.and()
			.formLogin()
			.loginPage("/loginform.do")
			.usernameParameter("memberid")
			.passwordParameter("memberpw")
			.loginProcessingUrl("/login")
			.defaultSuccessUrl("/home_main")
			.and()
			.oauth2Login()
			.loginPage("/loginform.do")
			.userInfoEndpoint()
			.userService(principalOauth2UserService);
			
		
		return http.build();
		
	}
	
	public WebSecurityCustomizer webSecurityCustomizer(){
		//스프링 시큐리티 룰을 무시하는 URL 규칙
		return (web) -> web.ignoring().antMatchers("/home_main");
		
	}
}

