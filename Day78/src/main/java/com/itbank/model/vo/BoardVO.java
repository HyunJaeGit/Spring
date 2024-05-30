package com.itbank.model.vo;

import java.sql.Date;

import javax.annotation.Generated;

/*
	WRITE_DATE	DATE
	WRITER	VARCHAR2(100 BYTE)
	VIEW_COUNT	NUMBER
	TITLE	VARCHAR2(200 BYTE)
	IDX	NUMBER
	CONTENTS	CLOB
*/

public class BoardVO {
	
	private String title, writer, contents;
	private int idx, view_count;
	private Date write_date;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
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
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	
	
}
