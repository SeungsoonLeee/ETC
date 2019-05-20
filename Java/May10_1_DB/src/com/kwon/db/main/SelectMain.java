package com.kwon.db.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SelectMain {
	public static void main(String[] args) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String url = "jdbc:oracle:thin:@192.168.0.46:1521:xe";
			con = DriverManager.getConnection(url, "kwon", "kwon");
			System.out.println("�����");

			String sql = "select * "
					+ "from may09restaurant " 
					+ "order by r_name";
			pstmt = con.prepareStatement(sql);
			
			// insert, update, delete : pstmt.executeUpdate()
			// select : pstmt.executeQuery()

			// SQL�� ������ ����, ���� SQL�� ����,
			// �� ���(select�� ���)�� �޾ƿ���
			rs = pstmt.executeQuery();
			
			// rs�� �ִ°� ���
			
			// rs.next() // ���� �����ͷ�,
					     //	���� �����Ͱ� ������ true, ������false
			while (rs.next()) { 
				// rs.getXXX("�ʵ��");
				System.out.println(rs.getString("r_name"));
				System.out.println(rs.getString("r_addr"));
				System.out.println();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {rs.close();} catch (SQLException e) {}
			try {pstmt.close();} catch (SQLException e) {}
			try {con.close();} catch (SQLException e) {}
		}
	}
}
