package com.kwon.db.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectMain {
	public static void main(String[] args) {
		// OracleDriver �� �� �ְ� : ojdbc8.jar
		Connection con = null;
		try {
			// DB�����ּ�(������ DB����Ŀ���� �ٸ�)
			String url = "jdbc:oracle:thin:@192.168.0.46:1521:xe";

			// ������ �� ����� Ŭ������ ����
			// Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// DB������ ������ ��Ű��
			// Class.forName�� ������ ����̹��� �ڹٰ� ã�Ƽ� ���
			// ������ �ڵ����� ã��
			// ����
			con = DriverManager.getConnection(url, "kwon", "kwon");
			System.out.println("�����");
			// SQL����
			// ����
			// ��� �޾ƿ���
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {con.close();} catch (SQLException e) {}
		}
	}
}








