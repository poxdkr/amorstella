package com.amor.stella.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.amor.stella.mapper.UserMapper;
import com.amor.stella.user.UserVO;

@Controller
public class pageController {
	
	@Autowired
	UserMapper userMapper;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@GetMapping("/")
	public String goIndex() {
		System.out.println("index로 이동");
		return "index";
	}
	
	@GetMapping("/login")
	public String goLogin() {
		System.out.println("로그인페이지로 이동");
		return "login";
	}
	
	@GetMapping("/loginFail")
	public String loginFail() {
		System.out.println("로그인 실패");
		return "loginFail";
	}
	
	@RequestMapping("/registUser")
	public String goLogin(HttpServletRequest request) {
		
		System.out.println("user를 등록합니다");
		String userId = request.getParameter("userId");
		String pw = request.getParameter("pw");
		String grade =request.getParameter("grade");
		String upoint=request.getParameter("upoint");
		String cert=request.getParameter("cert");
		String role=request.getParameter("role");
		
		pw = passwordEncoder.encode(pw);
		
		UserVO uvo = new UserVO();
		uvo.setUserid(userId);
		uvo.setPw(pw);
		uvo.setGrade(grade);
		uvo.setUpoint(upoint);
		uvo.setCert(cert);
		uvo.setRole(role);
		
		System.out.println("request User정보" + uvo);
		try {
			userMapper.registUser(uvo);
		}catch (Exception e) {
			System.out.println(e);
		}
		return "login";
	}
	
	@GetMapping("/loginSuccess")
	public String loginOk() {
		System.out.println("로그인 성공");
		return "loginSuccess";
	}
	
	
	@GetMapping("/loginFailure")
	public String loginFailed() {
		System.out.println("로그인 실패");
		return "login";
	}
}
