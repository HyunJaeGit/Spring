package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DAO {

	protected Context ct;
	protected DataSource ds;
	
	protected Connection conn;
	protected Statement stmt;
	protected PreparedStatement pstmt;
	protected ResultSet rs;
	
	public DAO() {
		try {
			ct = new InitialContext();
			ds = (DataSource) ct.lookup("java:comp/env/jdbc/oracle");
			
		} catch (Exception e) {
			System.out.println("dao ���� : " + e.getMessage());
		} finally {
			close();
		}
		
	}
	
	protected void close() {
		
		try {
			if (rs != null) rs.close();
			if (pstmt != null) pstmt.close();
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
			
		} catch (Exception e) {}
		
	}
	
	public String test() {
		String sql = "select banner from v$version";
		
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			rs.next();
			
			return rs.getString(1);
			
		} catch(SQLException e) {
			System.out.println("test ���� : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}
	
	
	
	
}
