package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import beans.BoardVO;

public class BoardDAO extends DAO {
	
	private BoardVO mappers(ResultSet rs) throws SQLException {
		BoardVO row = new BoardVO();
		
		row.setIdx(rs.getInt("idx"));
		row.setContents(rs.getString("contents"));
		row.setTitle(rs.getString("title"));
		row.setWriter(rs.getString("writer"));
		row.setView_count(rs.getInt("view_count"));
		row.setWrite_date(rs.getDate("write_date"));
		
		return row;
		
	}
	
	public Map<String, Object> selectAll() {
		String sql = "select * from board "
				+ "order by idx desc "
				+ "offset 0 rows "
				+ "fetch first 10 rows only";
		
		Map<String, Object> result = new HashMap<>();
		
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			List<BoardVO> list = new ArrayList<>();
			
			while (rs.next()) {

				// �� ���ڵ忡�� �ʿ��� �����͸� �����Ͽ� MAP�� ����
				list.add(mappers(rs));
			}
			
			result.put("list",list);
			
			return result;
			
			
		} catch (Exception e) {
			System.out.println("selectAll ���� : " + e.getMessage());
		} finally {
			close();
		} return null;
		
		
	}

	public BoardVO selectOne (int idx) {
		String sql = "select * from board where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);

			rs = pstmt.executeQuery();
			
			rs.next();
			
			return mappers(rs);
			
		} catch (Exception e) {
			System.out.println("selectOne ���� : " + e.getMessage());
		} finally {
			close();
		} return null;
	}
	
	public int insert(BoardVO input) {
		String sql = "insert into board (title, contents, writer) "
				+ "values (?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getTitle());
			pstmt.setString(2, input.getContents());
			pstmt.setString(3, input.getWriter());
			
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("insert ���� : " + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}
}
