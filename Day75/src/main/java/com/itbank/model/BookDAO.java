package com.itbank.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.BookVO;

public interface BookDAO {

	@Select("select banner from v$version")
	String test();
	
	List<BookVO> selectAll(Map<String, Object> param);

	int insert(BookVO input);

	@Delete("delete from book where idx = #{idx}")
	int delete(int idx);

	@Select("select * from book where idx = #{idx}")
	BookVO selectOne(int idx);

	int update(BookVO input);
}
