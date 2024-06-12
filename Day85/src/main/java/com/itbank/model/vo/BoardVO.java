package com.itbank.model.vo;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/*
    idx         number          default board_idx.nextval,
    title       varchar2(200)   not null,
    contents    clob            not null,
    writer      varchar2(150)   not null,
    write_date  date            default sysdate,
    view_count  number          default 0,
*/
public class BoardVO {
	private int idx, view_count;
	private String title, contents, writer;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "ko-kr")
	private Date write_date;
	
	
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	
}
