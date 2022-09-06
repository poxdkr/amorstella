package com.amor.stella.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.amor.stella.user.UserVO;

@Mapper
public interface UserMapper {
	
	public UserVO checkUser(String userId);
	
	public void registUser(UserVO uvo);
	
	//전체 유저의 숫자 카운트
	public int count_user_total();
	
	// 전체 유저의 명세 리스트
	public ArrayList<UserVO> get_user_total();

	//이달의 가입자수 카운트
	public int count_user_month();
		
	//이달의 가입자 명세 리스트
	public ArrayList<UserVO> get_user_month();

	
}
