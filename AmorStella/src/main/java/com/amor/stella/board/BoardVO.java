package com.amor.stella.board;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {
	private int bidx;
	private String btitle;
	private String bpw;
	private String userid;
	private int hit;
	private String parent; //코멘트일경우만 값을 가짐.
	private String file1;
	private String file2;
	private String content;
	private String regdate;
	
	@Override
	public String toString() {
		return "BoardVO [bidx=" + bidx + ", btitle=" + btitle + ", bpw=" + bpw + ", userid=" + userid + ", hit=" + hit
				+ ", parent=" + parent + ", file1=" + file1 + ", file2=" + file2 + ", content=" + content + ", regdate="
				+ regdate + "]";
	}
	
	
}
