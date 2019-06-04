package com.kwon.may31.it;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kwon.may31.main.DBManager;

public class InsertTestDAO {
	public static void insert(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		// ResultSet rs = null; // select����
		try {
			// ����
			con = DBManager.connect();
			
			// (post����) ��û �Ķ���� �ѱ�ó��
			request.setCharacterEncoding("euc-kr");
			
			// �� �ޱ�
			String p_name = request.getParameter("p_name");
			int p_price = Integer.parseInt(request.getParameter("p_price"));
			// int p_price = Integer.parseInt("p_price");
			
			// sql��
			String sql = "insert into may31_product values(?, ?)";
			
			// ����/��� ó�� �� ��ü
			pstmt = con.prepareStatement(sql);
			
			// sql�� �ϼ�(? ä���)
			pstmt.setInt(2, p_price);
			pstmt.setString(1, p_name);
			
			// ����/���ó��
			if (pstmt.executeUpdate() == 1) {
				request.setAttribute("result", "INSERT����");
			} else {
				request.setAttribute("result", "INSERT����");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("result", "INSERT����");
		} finally {
			// �ݱ�
			DBManager.close(con, pstmt, null);
		}
	}
}






