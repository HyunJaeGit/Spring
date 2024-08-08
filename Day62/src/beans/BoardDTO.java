package beans;

import java.sql.Date;

public class BoardDTO {
	String title, contents, writer, img_path;
	int idx;
	Date write_date;
	
	
	public BoardDTO() {
		
	}
	
	public BoardDTO(String title, String contents, String writer, String img_path, int idx, Date write_date) {
		super();
		this.title = title;
		this.contents = contents;
		this.writer = writer;
		this.img_path = img_path;
		this.idx = idx;
		this.write_date = write_date;
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
	public String getImg_path() {
		return img_path;
	}
	public void setImg_path(String img_path) {
		this.img_path = img_path;
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
