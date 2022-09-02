package com.amor.stella;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.amor.stella.board.BoardVO;
import com.amor.stella.mapper.BoardMapper;

@SpringBootTest
public class MapperTests {
	
	@Autowired
	private BoardMapper boardMapper;
	
	@Test
	public void testOfInsert() {
		BoardVO bvo = new BoardVO();
		bvo.setUserid("testBoardId");
		bvo.setBpw("testPw");
		bvo.setBtitle("testBoardTitle");
		bvo.setContent("testContentssss");
		bvo.setParent("null");
		bvo.setFile1("nofile");
		bvo.setFile2("nofile");
		bvo.setHit(0);
		
		boardMapper.insertBoard(bvo);
		System.out.println("boardMapper Test");
	}
}
