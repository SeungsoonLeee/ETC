package com.kwon.s.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// WAS������ ����Ǵ�
// Ŭ���̾�Ʈ�� ��û�� ���� �����ϴ� ���α׷�

@WebServlet("/MySecondServlet") // �� ���� ��Ĺ�� ���
public class MySecondServlet extends HttpServlet {
	// Ŭ���̾�Ʈ�κ��� GET��� ��û ������ �ڵ� ȣ��
	//		���� �ּ� ġ�°�
	//		Ŭ���ؼ� 
	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		int a = 10 + 20;
		
		// ���ȸ���� �޷��ִ� ����� ����
		PrintWriter out = response.getWriter();
		out.write("<html><body>");
		out.write("<marquee>" + a + "</marquee>");
		out.write("</body></html>");
	}
	
	
	
	
	
	// Ŭ���̾�Ʈ�κ��� POST��� ��û ������ �ڵ� ȣ��
	//		�α��� ���� Ư���� ��Ȳ�϶�
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
