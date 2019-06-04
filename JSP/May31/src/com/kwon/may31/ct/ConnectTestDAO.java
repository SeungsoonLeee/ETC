package com.kwon.may31.ct;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kwon.may31.main.DBManager;

// DAO : M�߿� DB�����۾� �� Ŭ����
public class ConnectTestDAO {
	public static void connectTest(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		try {
			con = DBManager.connect();
			request.setAttribute("result", "���Ἲ��");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("result", "�������");
		} finally {
			DBManager.close(con, null, null);
		}
	}
}




