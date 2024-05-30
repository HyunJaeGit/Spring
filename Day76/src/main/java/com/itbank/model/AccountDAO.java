package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.AccountVO;

public interface AccountDAO {
	
	@Select("select * from account where idx = #{idx}")
	public abstract AccountVO test(int idx);
	
	@Select("select banner from v$version")
	public abstract String version();

	@Select("select * from account order by idx desc")
	public abstract List<AccountVO> selectAll();

	@Select("select * from account where userid = #{userid} and userpw = #{userpw}")
	public abstract AccountVO selectOne(AccountVO input);
	
	
}
