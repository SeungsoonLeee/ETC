package com.kwon.io.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Output
 */
@WebServlet("/Output")
public class Output extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Output() {
		super();
		// TODO Auto-generated constructor stub
	}
	// ��Ĺ�� �ڵ����� �ٲܶ� �츮�� ���ϴ� ���ڵ� ����� ������
	
	// �ּҿ� �ѱ�x
	//		�� -> %2A : ��Ĺ�� �ڵ�����
	//		%2A -> �� : ��Ĺ�� �ڵ�����
	// �Ķ���Ͱ� �ּҿ�
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("euc-kr");

		String n = request.getParameter("n");
		String p = request.getParameter("p");
		String g = request.getParameter("g");
		String g2 = request.getParameter("g2");

		PrintWriter out = response.getWriter();
		out.print("<html><head>");
		out.print("<meta charset='euc-kr'></head><body>");
		out.print("<h1>Output</h1>");
		out.printf("�̸� : %s<p>", n);
		out.printf("��� : %s<p>", p);
		out.printf("���� : %s<p>", g);
		out.printf("���� : %s<p>", g2);
		out.print("</body></html>");
	}

	// �Ķ���Ͱ� ���������� ����
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");
		
		String n = request.getParameter("n");
		
		// checkbox or select(multiple)
		String[] i = request.getParameterValues("i");
		String[] i2 = request.getParameterValues("i2");
		
		// textarea���� ����ģ�� : \n
		// html���� �ٹٲ� : <br>
		String s = request.getParameter("s");
		s = s.replace("\n", "<br>"); // ?
		System.out.println(s);
		
		PrintWriter out = response.getWriter();
		out.print("<html><head>");
		out.print("<meta charset='euc-kr'></head><body>");
		out.print("<h1>Output</h1>");
		out.printf("�̸� : %s<p>", n);
		out.printf("�� �� : %s<p>", s);
		out.print("���ɻ� : ");
		for (String string : i) {
			out.print(string + " ");
		} 
		out.print("<p>");
		out.print("���ɻ�2 : ");
		for (String string : i2) {
			out.print(string + " ");
		} 
		out.print("<p>");
		out.print("<p>");
		out.print("</body></html>");
	}

}
