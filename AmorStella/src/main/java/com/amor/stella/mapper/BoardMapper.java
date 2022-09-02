package com.amor.stella.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.amor.stella.board.BoardVO;

@Mapper
public interface BoardMapper {
	//게시글 및 댓글 생성
	public void insertBoard(BoardVO bvo);
}
