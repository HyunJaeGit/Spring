package com.itbank.model.vo;

import java.sql.Date;

/*
	WRITER	VARCHAR2(200 BYTE)
	TITLE	VARCHAR2(200 BYTE)
	P_DATE	DATE
	PUBLISHER	VARCHAR2(200 BYTE)
	PRICE	NUMBER
	IDX	NUMBER
*/

public class BookVO {
	private int idx, price;
	private String title, writer, publisher;
	private Date p_date;
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
	public Date getP_date() {
		return p_date;
	}
	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}
	
	
	
}
