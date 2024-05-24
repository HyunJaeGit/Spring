package com.itbank.service;

public class Paging {

	private int reqPage;       	// 사용자가 요청한 페이지 번호
	private int totalBoard;     // 전체 게시물의 수
	private int perCount = 10;  // 한 페이지에 표시될 게시물의 수 (기본값: 10)
	private int offset;         // SQL 쿼리에서 사용될 페이지네이션의 시작 인덱스 (오프셋)
	private int totalPage;      // 전체 페이지의 수
	private int perPage = 10;   // 페이지네이션에서 한 번에 표시될 페이지 번호의 개수 (기본값: 10)
	private int section;        // 현재 페이지가 속한 섹션 (부분 페이지 그룹)
	private int begin;          // 현재 섹션의 시작 페이지 번호
	private int end;            // 현재 섹션의 끝 페이지 번호
	private boolean prev;       // 이전 섹션이 있는지 여부 (true일 경우 이전 섹션으로 이동 가능)
	private boolean next;       // 다음 섹션이 있는지 여부 (true일 경우 다음 섹션으로 이동 가능)
	
	public Paging() {
		
	}
	
	public Paging(int reqPage, int totalBoard, int perCount, int offset, int totalPage, int perPage, int section,
			int begin, int end, boolean prev, boolean next) {
		
		this.reqPage = reqPage;
		this.totalBoard = totalBoard;
		this.perCount = perCount;
		this.offset = offset;
		this.totalPage = totalPage;
		this.perPage = perPage;
		this.section = section;
		this.begin = begin;
		this.end = end;
		this.prev = prev;
		this.next = next;
	}
	
	public int getReqPage() {
		return reqPage;
	}
	public void setReqPage(int reqPage) {
		this.reqPage = reqPage;
	}
	public int getTotalBoard() {
		return totalBoard;
	}
	public void setTotalBoard(int totalBoard) {
		this.totalBoard = totalBoard;
	}
	public int getPerCount() {
		return perCount;
	}
	public void setPerCount(int perCount) {
		this.perCount = perCount;
	}
	public int getOffset() {
		return offset;
	}
	public void setOffset(int offset) {
		this.offset = offset;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public int getSection() {
		return section;
	}
	public void setSection(int section) {
		this.section = section;
	}
	public int getBegin() {
		return begin;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	
	
	
}
