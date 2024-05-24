package com.itbank.model.vo;

import java.sql.Date;

/*
	USERPW	VARCHAR2(128 BYTE)
	USERID	VARCHAR2(20 BYTE)
	NICK	VARCHAR2(20 BYTE)
	JOIN_DATE	DATE
	IDX	NUMBER
	EMAIL	VARCHAR2(150 BYTE)
*/

public class AccountVO {
	
	private String userid, userpw, nick, email;
	private int idx;
	private Date join_date;
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	
	
	
}
