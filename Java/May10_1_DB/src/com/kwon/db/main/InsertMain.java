package com.kwon.db.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class InsertMain {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			String url = "jdbc:oracle:thin:@192.168.0.46:1521:xe";
			con = DriverManager.getConnection(url, "kwon", "kwon");
			System.out.println("�����");
			
			System.out.print("�Ĵ�� : ");
			String n = s.next();
			
			System.out.print("��ġ : ");
			String a = s.next();
			
			// String sql = String.format(format, args);
			// �����ϰ����ϴ� SQL(;����, �ڹٺ��� �����ڸ��� ?��)
			// ?�� ������
			String sql = "insert into MAY09RESTAURANT values(?, ?)";
			
			// SQL�� ������ ����, ���� SQL�� ����, 
			// �� ����� �޾ƿ��⸦ ���ִ� ��ü
			pstmt = con.prepareStatement(sql);
			
			// ?�� �� ä��� : pstmt.setXXX(����ǥ��ȣ, ��);
			pstmt.setString(2, a);
			pstmt.setString(1, n);
			
			// SQL�� ������ ����, ���� SQL�� ����,
			// �� ���(���̺�� ������ ����޾Ҵ���)�� �޾ƿ���
			int row = pstmt.executeUpdate();
			if (row == 1) {
				System.out.println("����");
			} else {
				System.out.println("����");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {pstmt.close();} catch (SQLException e) {}
			try {con.close();} catch (SQLException e) {}
			s.close();
		}
	}
}








