package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import beans.PersonVO;

public class PersonDAO {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	
	public PersonDAO() {
		try {
			Class.forName(driver);
			
		} catch (ClassNotFoundException e) {
			System.out.println("생성자 예외 : " + e.getMessage());
		}
	}
	
	private void close() {
		try {
			if (rs != null) 	rs.close();
			if (stmt != null) 	stmt.close();
			if (conn != null) 	conn.close();
			
		} catch(Exception e) {}
	}
	
	public PersonVO mapping(ResultSet rs) throws SQLException {
		PersonVO row = new PersonVO();
		
		Date date = rs.getDate("birth");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String birth = sdf.format(date);
		
		row.setBirth(birth);
		row.setHeight(rs.getDouble("height"));
		row.setName(rs.getString("name"));
		
		return row;
	}
	
	public List<PersonVO> selectAll() {
		String sql = "select * from person";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			List<PersonVO> list = new ArrayList<>();
			
			while (rs.next()) {
				PersonVO row = mapping(rs);
				list.add(row);
			}
			
			return list;
			
		} catch (SQLException e) {
			System.out.println("selectAll 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}

	public List<PersonVO> selectName(String name) {
		String sql = "select * from person where name like '%" + name + "%'";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			List<PersonVO> list = new ArrayList<>();
			
			while (rs.next()) {
				PersonVO row = mapping(rs);
				list.add(row);
			}
			
			return list;
			
		} catch (SQLException e) {
			System.out.println("selectName 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}

	public int insert(PersonVO newPer) {
		String sql = "insert into person values('%s', %f, '%s')";
		sql = String.format(sql, newPer.getName(), 
					newPer.getHeight(), newPer.getBirth());
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			
			int row = stmt.executeUpdate(sql);
			
			return row;
			
		} catch(SQLException e) {
			System.out.println("insert 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}

	public int delete(String name) {
		
		String sql = "delete from person where name = '" + name + "'";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			
			return stmt.executeUpdate(sql);
			
		} catch(SQLException e) {
			System.out.println("delete 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}
	
	public int update(PersonVO chgPer, String fName) {
		
		String sql = "update person " + 
						"set " + 
							"name = '%s', " + 
							"height = %.1f, " + 
							"birth = '%s' " + 
						"where name = '%s'";
		
		sql = String.format(sql, chgPer.getName(), chgPer.getHeight(), 
						chgPer.getBirth(), fName);
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			
			return stmt.executeUpdate(sql);
			
		} catch(SQLException e) {
			System.out.println("update 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
