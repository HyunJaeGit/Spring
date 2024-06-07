package com.itbank.model;

import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.FileVO;

public interface FileDAO {

	@Select("insert into upload (name, path, uploader, memo) "
			+ "values (#{name}, #{path}, #{uploader}, #{memo})")
	String insert(FileVO input);
}
