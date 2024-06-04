package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.AccountVO;

public interface AccountDAO {

	
	@Select("select * from account where userid=#{userid} and userpw=#{userpw}")
	public abstract AccountVO selectOne(AccountVO input);

	@Insert("insert into account (userid, userpw, nick, email) "
			+ "values(#{userid}, #{userpw}, #{nick}, #{email})")
	public abstract int insert(AccountVO input);

	@Select("select * from account order by idx")
	public abstract List<AccountVO> selectAll();

	@Delete("delete from account where idx = #{idx}")
	public abstract int delete(int idx);

	@Select("select * from account where idx = #{idx}")
	public abstract AccountVO getInfo(int idx);
}
