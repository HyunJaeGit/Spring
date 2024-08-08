package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.BoardDTO;

public class BoardDAO extends DAO {
	
	public BoardDTO mappers(ResultSet rs) throws SQLException {
		
		BoardDTO row = new BoardDTO();
		
		row.setIdx(rs.getInt("idx"));
		row.setTitle(rs.getString("title"));
		row.setContents(rs.getString("contents"));
		row.setWriter(rs.getString("writer"));
		row.setWrite_date(rs.getDate("write_date"));
		row.setImg_path(rs.getString("img_path"));
		
		return row;
		
	}
	
	public List<BoardDTO> selectAll() {
		
		String sql = "select * from board order by idx desc";
		
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			List<BoardDTO> list = new ArrayList<>();
			
			while (rs.next()) {
				list.add(mappers(rs));
			}
			return list;
			
		} catch (Exception e) {
			System.out.println("selectAll 예외 : " + e.getMessage());
		} finally {
			close();
		}
		return null;
	}
	
	public BoardDTO selectOne(int idx) {
		
		String sql = "select * from board where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			
			rs = pstmt.executeQuery();
			rs.next();
			
			return mappers(rs);
			
		} catch (Exception e) {
			System.out.println("selectAll 예외 : " + e.getMessage());
		} finally {
			close();
		}
		return null;
		
		
	}
	
	public int insertImg(String title, String contents, String writer, String img_path) {
		
		String sql = "insert into board (title, contents, writer, img_path) "
						+ "values (?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, title);
			pstmt.setString(2, contents);
			pstmt.setString(3, writer);
			pstmt.setString(4, img_path);
			
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("insert 예외 : " + e.getMessage());
		} finally {
			close();
		}
		return 0;
	}
	
	public int insert(BoardDTO args) {
		
		String sql = "insert into board (title, contents, writer, img_path) "
						+ "values (?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, args.getTitle());
			pstmt.setString(2, args.getContents());
			pstmt.setString(3, args.getWriter());
			pstmt.setString(4, args.getImg_path());
			
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("insert 예외 : " + e.getMessage());
		} finally {
			close();
		}
		return 0;
	}
	
}
