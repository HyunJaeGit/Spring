package com.itbank.model.vo;

import java.sql.Date;

/*
 * ReplyVO
	WRITE_DATE	DATE
	WRITER	VARCHAR2(100 BYTE)
	IDX	NUMBER
	CONTENTS	CLOB
	BOARD_IDX	NUMBER
*/
public class ReplyVO {
	private String writer, contents;
	private int idx, board_idx;
	private Date write_date;
	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	
	
	
}
