package com.kwon.jm2.main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Controller : Model/View�� �ʿ��� ������ �θ��� ����
//				�� ����Ʈ�� ������
// Servlet : ��û�� ���� ����
@WebServlet("/C")
public class C extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    // � ����Ʈ�� ù ������ GET��� ��û
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd
			= request.getRequestDispatcher("V.html");
		rd.forward(request, response);
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		M m = new M();
		m.calculate(request, response);
		
		request.getRequestDispatcher("V2.jsp").forward(request, response);
	}

}


