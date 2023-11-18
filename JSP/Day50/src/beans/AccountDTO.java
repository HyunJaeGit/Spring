package beans;

import java.sql.Date;

public class AccountDTO {
	// 1) 필드
	protected int idx;
	protected String userid, userpw, nick, email;
	protected Date jdate;
	
	// 2) 기본생성자
	public AccountDTO() {
		
	}

	// 3) 생성자
	public AccountDTO(int idx, String userid, String userpw, String nick, String email, Date jdate) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.userpw = userpw;
		this.nick = nick;
		this.email = email;
		this.jdate = jdate;
	}

	
	
	// 4) getter & setter
	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
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

	public Date getJdate() {
		return jdate;
	}

	public void setJdate(Date jdate) {
		this.jdate = jdate;
	}
	
	
	
}
