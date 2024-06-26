package com.itbank.model.vo;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/*
	IDX       NOT NULL NUMBER        
	TITLE     NOT NULL VARCHAR2(300) 
	WRITER    NOT NULL VARCHAR2(100) 
	PUBLISHER NOT NULL VARCHAR2(200) 
	P_DATE             DATE          
	PRICE     NOT NULL NUMBER
*/

public class BookVO {
	private int idx, price;
	private String title, writer, publisher;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "ko-kr")
	private Date write_date;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
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
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
}
