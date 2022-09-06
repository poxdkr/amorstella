package com.amor.stella.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.http.HttpResponse;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.amor.stella.AES256Cipher;
import com.amor.stella.board.BoardVO;
import com.amor.stella.mapper.BoardMapper;
import com.amor.stella.mapper.UserMapper;
import com.amor.stella.user.UserVO;

@Controller
public class pageController {
	
	@Autowired
	UserMapper userMapper;
	
	@Autowired
	BoardMapper boardMapper;
	
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
		return "user/login";
	}
	
	@GetMapping("/loginFail")
	public String loginFail() {
		System.out.println("로그인 실패");
		return "user/loginFail";
	}
	@GetMapping("/registPage")
	public String registPage() {
		System.out.println("가입 페이지로 이동");
		return "user/registUser";
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
		return "user/login";
	}
	
	@GetMapping("/loginSuccess")
	public String loginOk(HttpSession session, Principal principal){
		System.out.println("로그인 성공");
		String userid = principal.getName();
		UserVO user =  userMapper.checkUser(userid);
		session.setAttribute("userid", user.getUserid());
		session.setAttribute("role", user.getRole());
		return "user/loginSuccess";
	}
	
	
	@GetMapping("/loginFailure")
	public String loginFailed(){
		System.out.println("로그인 실패");
		return "user/login.jsp?error=fail";
	}
	
	
	  @GetMapping("/aesCheck") public String aesChecker(HttpServletRequest request)
	  throws InvalidKeyException, UnsupportedEncodingException,
	  NoSuchAlgorithmException, NoSuchPaddingException,
	  InvalidAlgorithmParameterException, IllegalBlockSizeException,
	  BadPaddingException{
	  
	  AES256Cipher aes256 = new AES256Cipher("lotte-wfms-cipher@20160622-qwer1");
	  //32bit 제대로된 키 필요함
	  
	  String info = request.getParameter("info"); System.out.println("info : " +
	  info);
	  
	  String aesInfo = aes256.encrypt(info);
	  
	  System.out.println("aesInfo : " + aesInfo);
	  
	  String decryptInfo = aes256.decrypt(aesInfo);
	  
	  System.out.println("decryptInfo : " + decryptInfo);
	  
		
	  String decryptInfo2 =
	  aes256.decrypt("30STG2WouwE%2BJG7c4KL5YaCMn2xDOi6zqJu7qmGhZKs%3D");
	  System.out.println("decryptInfo2 : " + decryptInfo2);
		 
	  
	  return "index"; 
	  }
	 
	  @RequestMapping("/get_estimate")
	  public String get_estimate() {
		  return "est_page";
	  }
	  
	  @RequestMapping("/send_est")
	  public String send_estimate(HttpServletResponse response, BoardVO bvo) throws IOException {
		  
		  response.setCharacterEncoding("UTF-8");
		  PrintWriter out = response.getWriter();
		  
		  System.out.println(bvo);
		
		  try {
			  boardMapper.insertBoard(bvo);
		  }catch(Exception e) {
			 System.out.println(e);
			 out.print("<script>"); 
			 out.print("alert('문의 등록에 실패했습니다....')");
			 out.print("</script>");
			 out.flush();
		  }
			 
		  return "index";
	  }
	  
	  @RequestMapping("/admin")
	  public String go_admin_page(HttpServletRequest req){
		  String login = req.getParameter("login");
		  return "admin/index.jsp?login=ok";
	  }
}
