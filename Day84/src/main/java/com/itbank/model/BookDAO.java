package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.BookVO;

public interface BookDAO {

	
	@Select("select * from book order by idx desc")
	List<BookVO> selectAll();

	@Select("select * from book where idx = #{idx}")
	BookVO selectOne(int idx);

}
