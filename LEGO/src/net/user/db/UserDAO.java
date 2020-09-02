package net.user.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	//기본 생성자
	//DAO 객체 생성시 자동으로 DB 연결 완료
	public UserDAO(){
		try {
			getConn();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//DB 연결 - getConn
	private Connection getConn() throws Exception{
		System.out.println("UserDAO - getConn()");
		
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/lego");
		con = ds.getConnection();
		
		System.out.println("DB 연결 & 드라이버 로드 성공! : "+con);
		return con;
	}
	
	
	//DB 자원 해제 - closeDB
	public void closeDB(){
		System.out.println("UserDAO - closeDB()");
		
		try {
			if(rs != null)rs.close();
			if(pstmt != null)pstmt.close();
			if(con != null)con.close();
			System.out.println("DB 자원 해제 성공!!");
		} catch (SQLException e) {
			System.out.println("DB 자원 해제 실패!!");
			e.printStackTrace();
		}
	}
	
	//회원가입 - 유저 추가 userAdd
	public int userAdd(UserDTO ud){
		System.out.println("UserDAO - userAdd(ud)");
		
		int result = 0;
		int no = 0;
		try {
			sql = "select max(user_no) from user";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				no = rs.getInt(1)+1;
			}
			
			sql = "insert into ";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
}
