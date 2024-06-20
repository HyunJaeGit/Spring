package beans;

import java.sql.Date;

/*
	IDX	NUMBER	No	"C##ITBANK"."BOARD_IDX"."NEXTVAL"
	TITLE	VARCHAR2(200 BYTE)	No	
	CONTENTS	CLOB	No	 
	WRITER	VARCHAR2(100 BYTE)	No	
	VIEW_COUNT	NUMBER	Yes	0
	WRITE_DATE	DATE	Yes	sysdate
	
	추가)
	CNT		댓글 개수
*/

public class BoardVO {
	private String writer, title, contents;
	private int view_count, idx, cnt;
	private Date write_date;
	
	
	public BoardVO() {
		
	}


	public BoardVO(String writer, String title, String contents, int view_count, int idx, Date write_date) {
		super();
		this.writer = writer;
		this.title = title;
		this.contents = contents;
		this.view_count = view_count;
		this.idx = idx;
		this.write_date = write_date;
	}


	public int getCnt() {
		return cnt;
	}


	public void setCnt(int cnt) {
		this.cnt = cnt;
	}


	public String getWriter() {
		return writer;
	}


	public void setWriter(String writer) {
		this.writer = writer;
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


	public int getView_count() {
		return view_count;
	}


	public void setView_count(int view_count) {
		this.view_count = view_count;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public Date getWrite_date() {
		return write_date;
	}


	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	
	
}
