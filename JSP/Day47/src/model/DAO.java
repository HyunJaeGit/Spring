package model;

public class DAO {
	protected String driver = "oracle.jdbc.driver.OracleDriver";
	protected String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	protected String user = "c##itbank";
	protected String password = "it";
	
	public DAO() {
		try {
			Class.forName(driver);
			System.out.println("드라이버 로드 성공");
			
		} catch (ClassNotFoundException e) {
			System.out.println("생성자 예외 : " + e.getMessage());
		}
	}
	
	public String test() {
		return "test~~";
	}
}
