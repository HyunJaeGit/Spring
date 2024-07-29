package beans;

import java.sql.Date;

public class ReplyVO {
	
	private int idx, board_idx;
	private String contents, writer;
	private Date write_date;
	
	public ReplyVO() {
		
	}
	
	public ReplyVO(int idx, int board_idx, String contents, String writer, Date write_date) {
		super();
		this.idx = idx;
		this.board_idx = board_idx;
		this.contents = contents;
		this.writer = writer;
		this.write_date = write_date;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
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
	
}
