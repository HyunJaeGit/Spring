package com.itbank.model;

import java.sql.ResultSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.itbank.model.vo.BookVO;

@Repository
public class BookDAO {

	RowMapper<BookVO> rowMapperBooks = (ResultSet rs, int rowNum) -> {
		BookVO row = new BookVO();
		row.setIdx(rs.getInt("idx"));
		row.setPrice(rs.getInt("price"));
		row.setTitle(rs.getString("title"));
		row.setWriter(rs.getString("writer"));
		row.setPublisher(rs.getString("publisher"));
		row.setP_date(rs.getDate("p_date"));
		
		
		return row;
	};
	
	@Autowired
	private JdbcTemplate jt;
	
	// book 테이블 전체 조회
	public List<BookVO> selectAllBooks() {
		String sql = "select * from book order by idx desc";
		
		return jt.query(sql, rowMapperBooks);
	}
	
	// book 테이블에 새로운 행 삽입
	public int insert(BookVO input) {
		String sql = "insert into book (title, writer, publisher, price, p_date) "
				+ "values (?, ?, ?, ?, ?)";
		
		return jt.update(sql, input.getTitle(), 
				input.getWriter(), input.getPublisher(),
				input.getPrice(), input.getP_date());
	}
	

	public BookVO selectOne(int idx) {
		String sql = "select * from book where idx = ?";
		
		return jt.queryForObject(sql, rowMapperBooks, idx);
	}

	public int update(BookVO input) {
		String sql = "update book set "
						+ "title = ?, "
						+ "writer = ?, "
						+ "publisher = ?, "
						+ "p_date = ?, "
						+ "price = ? "
					+ "where idx = ?";
		
		return jt.update(sql, 
				input.getTitle(), input.getWriter(), 
				input.getPublisher(), input.getP_date(), 
				input.getPrice(), input.getIdx());
	}
	
	public int delete(int idx) {
		String sql = "delete from book where idx = ?";
		
		return jt.update(sql, idx);
	}
	
}
