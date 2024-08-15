package beans;
/*
USERPW	VARCHAR2(128 BYTE)
USERID	VARCHAR2(20 BYTE)
NICK	VARCHAR2(20 BYTE)
JOIN_DATE	DATE
IDX	NUMBER
EMAIL	VARCHAR2(150 BYTE)

*/

import java.sql.Date;

public class AccountVO {
	String userid, userpw, nick, email;
	int idx;
	Date join_date;
	
	
	
	public AccountVO() {
		
	}
	
	
	public AccountVO(String userid, String userpw, String nick, String email, int idx, Date join_date) {
		super();
		this.userid = userid;
		this.userpw = userpw;
		this.nick = nick;
		this.email = email;
		this.idx = idx;
		this.join_date = join_date;
	}
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
