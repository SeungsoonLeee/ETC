package com.kwon.may31.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	// Java
	// ������ ��û�ϸ� �׶����� �����ؼ� ����ξ���
	public static Connection connectOld() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@192.168.0.46:1521:xe";
		return DriverManager.getConnection(url, "leee", "leee");
	}
	
	// JSP������ ��� ������ : tomcat
	// ConnectionPool���
	public static Connection connect() throws Exception{
		// context.xml
		Context ctx = new InitialContext();
		
		// �뿩��
		DataSource ds 
			= (DataSource) ctx.lookup("java:comp/env/leePool");
		
		return ds.getConnection();
	}
	

	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			rs.close();
		} catch (Exception e) {
		}
		try {
			pstmt.close();
		} catch (Exception e) {
		}
		try {
			con.close();
		} catch (Exception e) {
		}
	}
}
