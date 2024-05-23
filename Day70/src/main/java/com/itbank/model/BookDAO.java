package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itbank.model.vo.BookVO;

public interface BookDAO {

	@Select("select banner from v$version")
	public abstract String test();
	
	@Select("select * from book order by idx desc")
	public abstract List<BookVO> selectAll();

	@Insert("insert into book (title, writer, publisher, p_date, price) "
			+ "values (#{title}, #{writer}, #{publisher}, #{p_date}, #{price})")
	public abstract int insert(BookVO input);
	
	// mybatis 인터페이스의 메서드에는 매개변수(ex_BookVO input)를 1개만 세팅한다
	// - 따라서 여러 값을 보낼 땐, vo 혹은 map을 사용해야한다.
	
	@Delete("delete from book where idx = ${idx}")
	public abstract int delete(int idx);
	
	@Update("update book set title = #{title}, writer=#{writer}, "
			+ "publisher=#{publisher}, p_date=#{p_date}, price=#{price} "
			+ "where idx = #{idx}")
	public abstract int update(BookVO input);
	
	@Select("select * from book where idx = #{idx}")
	public abstract BookVO selectOne(int idx);
	
}
