package com.itbank.model.vo;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

/*
	IDX	NUMBER	No
	NAME	VARCHAR2(300 BYTE)	No
	PATH	VARCHAR2(900 BYTE)	No
	UPLOADER	VARCHAR2(150 BYTE)	No
	MEMO	VARCHAR2(150 BYTE)	Yes
	UPLOAD_DATE	DATE	Yes
*/
public class FileVO {

	private int idx;
	private String name, path, uploader, memo;
	private Date upload_date;
	
	private MultipartFile upload;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getUploader() {
		return uploader;
	}

	public void setUploader(String uploader) {
		this.uploader = uploader;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public Date getUpload_date() {
		return upload_date;
	}

	public void setUpload_date(Date upload_date) {
		this.upload_date = upload_date;
	}

	public MultipartFile getUpload() {
		return upload;
	}

	public void setUpload(MultipartFile upload) {
		System.out.println("setter 호출됨");
		this.upload = upload;
	}
	
	
}
