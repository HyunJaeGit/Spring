package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import beans.BoardVO;
import beans.ReplyVO;
import service.Paging;

public class BoardDAO extends DAO {
	
	private BoardVO mapper(ResultSet rs) throws SQLException {
		BoardVO row = new BoardVO();
		
		row.setContents(rs.getString("contents"));
		row.setIdx(rs.getInt("idx"));
		row.setTitle(rs.getString("title"));
		row.setView_count(rs.getInt("view_count"));
		row.setWrite_date(rs.getDate("write_date"));
		row.setWriter(rs.getString("writer"));
		row.setCnt(rs.getInt("cnt"));
		
		return row;
	}
	
	private int getTotalBoard(String type, String search) {
		String sql = "select count(*) as count from board "
					+ "where " + type + " like '%" + search + "%' ";
		
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			rs.next();
			
			return rs.getInt("count");
			
		} catch (SQLException e) {
			System.out.println("getTotalBoard 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}
	
	public Map<String, Object> selectAll(int reqPage, String type, String search, String order) {
		Paging p = new Paging(reqPage, getTotalBoard(type, search));
		
		String sql = "select * from BoardView " + 
						"where " + type + " like '%" + search + "%' " +
						"order by " + order + " desc " + 
						"offset ? rows " + 
						"fetch first ? rows only";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, p.getOffset());
			pstmt.setInt(2, p.getPerBoard());
			
			rs = pstmt.executeQuery();
			
			List<BoardVO> list = new ArrayList<>();
			
			while (rs.next()) {
				list.add(mapper(rs));
			}
			
			Map<String, Object> result = new HashMap<>();
			
			result.put("list", list);
			result.put("p", p);
			
			return result;
			
		} catch (SQLException e) {
			System.out.println("selectAll 예외 : " + e.getMessage());
		
		} finally {
			close();
		}
		
		return null;
	}

	private void countUp(int idx) {
		String sql = "update board "
				+ "set view_count = view_count + 1 "
				+ "where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("countUp 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
	}
	
	public BoardVO selectOne(int idx) {
		countUp(idx);
		String sql = "select * from BoardView where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			
			rs = pstmt.executeQuery();
			rs.next();
			
			return mapper(rs);
			
		} catch (SQLException e) {
			System.out.println("selectOne 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}

	public int delete(int idx) {
		String sql = "delete from board where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("delete 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}

	public int insert(BoardVO input) {
		String sql = "insert into "
						+ "board(title, contents, writer) "
						+ "values(?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getTitle());
			pstmt.setString(2, input.getContents());
			pstmt.setString(3, input.getWriter());

			return pstmt.executeUpdate();
			
		} catch(SQLException e) {
			System.out.println("insert 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}

	public int update(BoardVO input) {
		String sql = "update board "
				+ "set title = ?, contents = ?, writer = ? "
				+ "where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getTitle());
			pstmt.setString(2, input.getContents());
			pstmt.setString(3, input.getWriter());
			pstmt.setInt(4, input.getIdx());
			
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("update 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}

	public List<ReplyVO> selectReplyAll(int idx) {
		
		String sql = "SELECT * FROM reply WHERE board_idx = ? ORDER BY idx DESC";
		
		List<ReplyVO> list = new ArrayList<>();
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				ReplyVO row = new ReplyVO();
				
				row.setIdx(rs.getInt("idx"));
				row.setBoard_idx(rs.getInt("board_idx"));
				row.setContents(rs.getString("contents"));
				row.setWriter(rs.getString("writer"));
				row.setWrite_date(rs.getDate("write_date"));
				
				list.add(row);
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println("reply 예외 : " + e.getMessage());
		} finally {
			close();
		} return null;
		
	}
	
	public int insertReply(ReplyVO input) {
		String sql = "insert into "
						+ "reply(board_idx, contents, writer) "
						+ "values(?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, input.getBoard_idx());
			pstmt.setString(2, input.getContents());
			pstmt.setString(3, input.getWriter());

			return pstmt.executeUpdate();
			
		} catch(SQLException e) {
			System.out.println("createReply 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}

	public int deleteReply(int idx) {
		String sql = "delete from reply where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("delete 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}
}
