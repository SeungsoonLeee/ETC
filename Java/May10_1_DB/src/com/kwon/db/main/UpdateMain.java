package com.kwon.db.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class UpdateMain {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			String url = "jdbc:oracle:thin:@192.168.0.46:1521:xe";
			con = DriverManager.getConnection(url, "kwon", "kwon");
			System.out.println("�����");

			System.out.print("���� : ");
			int p = s.nextInt();

			String sql = "update may09sell " + 
						"set s_price = s_price + ?";
			pstmt = con.prepareStatement(sql);

			pstmt.setInt(1, p);

			int row = pstmt.executeUpdate();
			if (row >= 1) {
				System.out.println("����");
			} else {
				System.out.println("����");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
			}
			try {
				con.close();
			} catch (SQLException e) {
			}
			s.close();
		}
	}
}
