package com.kwon.s.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyServlet1")
public class MyServlet1 extends HttpServlet {
	// http://localhost/May15_1_Servlet/MyServlet1?money=100000&say=test
	// ��Ź��://�ּ�:��Ʈ��ȣ/������/������/.../���ϸ�?������=��&������=��&������=��...
	// ��Ʈ��ȣ80�� ��������
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Ŭ���̾�Ʈ�� ��û�Ҷ� ���� ��:��û�Ķ����(String)
		String mHaha = request.getParameter("money");
		String sss = request.getParameter("say");
		
		// �����Ҷ� ���ڵ������ euc-kr��
		response.setCharacterEncoding("euc-kr");
		
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.printf("<h1>%s</h1>", mHaha);
		out.printf("<h1>%s</h1>", sss);
		out.print("</body></html>");
	}

	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
