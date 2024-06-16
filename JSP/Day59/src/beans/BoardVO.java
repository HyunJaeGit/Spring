package beans;

import java.sql.Date;

/*
	IDX        NOT NULL NUMBER        
	TITLE      NOT NULL VARCHAR2(200) 
	CONTENTS   NOT NULL CLOB          
	WRITER     NOT NULL VARCHAR2(100) 
	VIEW_COUNT          NUMBER        
	WRITE_DATE          DATE
	
	異붽�)
	CNT		�뙎湲� 媛쒖닔
*/

public class BoardVO {
	private int idx, view_count, cnt;
	private String title, contents, writer;
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
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
}
