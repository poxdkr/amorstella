package com.amor.stella.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.amor.stella.user.UserVO;

@Mapper
public interface UserMapper {
	
	public UserVO checkUser(String userId);
	
	public void registUser(UserVO uvo);
}
