package com.itbank.model.vo;

import java.sql.Date;

/*
    idx         number          default book_idx.nextval,
    title       varchar2(150)   not null,
    writer      varchar2(150)   not null,
    publisher   varchar2(150)   not null,
    price       number          not null,
    write_date  date            default sysdate,
    
    constraint book_idx primary key(idx)
*/
public class BookVO {
	
	private int idx, price;
	private String title, writer, publisher;
	private Date write_date;
	
	public BookVO()	 {
		
	}

	public BookVO(int idx, int price, String title, String writer, String publisher, Date write_date) {
		super();
		this.idx = idx;
		this.price = price;
		this.title = title;
		this.writer = writer;
		this.publisher = publisher;
		this.write_date = write_date;
	}

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
