package beans;

import java.sql.Date;

/*
WRITE_DATE	DATE	Yes	sysdate
WRITER	VARCHAR2(100 BYTE)	No	
VIEW_COUNT	NUMBER	Yes	0
TITLE	VARCHAR2(200 BYTE)	No	
IDX	NUMBER	No	"C##ITBANK"."BOARD_IDX"."NEXTVAL"
CONTENTS	CLOB	No	

*/
public class BoardVO {

	int idx,view_count;
	String writer,title,contents;
	Date write_date;
	
	
	public BoardVO() {
		
	}
	
	public BoardVO(int idx, int view_count, String writer, String title, String contents, Date write_date) {
		super();
		this.idx = idx;
		this.view_count = view_count;
		this.writer = writer;
		this.title = title;
		this.contents = contents;
		this.write_date = write_date;
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
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	
	
	
	
	
	
}
