package com.kwon.fu.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;



// 1. ���� ���۱�� ���� => ���� ������
// 2. ���� �����س��� ���� ���۱���� Ȱ��(cos.jar)
// 3. cos.jar���� ��Ű�´�� �۾�
// 		3.1 ������ ���ε�� ���� Ȯ��
//		3.2 ������ �ּҿ� �� ���� ������ POST��Ŀ�û
//		3.3 form�� ������ ���ڵ� ����� cos.jar�� �������
//			enctype="multipart/form-data"


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

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("euc-kr");
		String n = request.getParameter("n");
		PrintWriter out = response.getWriter();
		out.print("<html><head>");
		out.print("<meta charset='euc-kr'></head><body>");
		out.printf("<h1>�̸� : %s</h1>", n);
		out.print("</body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("euc-kr");
		
		// ������ ���ε� �� ���� ���� ���� ���(��ü)
		String path 
			= request.getSession()
			.getServletContext().getRealPath("file");
		System.out.println(path);
		// cos.jar������� ������ ��û(���� ���ε� �Ϸ�)
		MultipartRequest mr 
			= new MultipartRequest(
				request,
				path,
				10 * 1024 * 1024,// ���ε� �� ������ ��� �ִ� ũ��
				"euc-kr", // ��û �Ķ���� �ѱ� ó��
				new DefaultFileRenamePolicy()// �ߺ����ϸ� ó��
		);
		
		String n = mr.getParameter("n");
		// ���ε��� ���ϸ�
		String p = mr.getFilesystemName("photo"); // �� ��.png
		// ��Ĺ�� utf-8�̿��� �ѱ����ϸ� �ν�x
		// URL���ڵ����� �ٲ㼭 ����ؾ�
		p = URLEncoder.encode(p, "euc-kr"); 	// %2A+%2A.png
		// ����� +�� �ٲ��� ���� ���� ���·� �־��
		p = p.replace("+", " ");				// %2A %2A.png
		
		PrintWriter out = response.getWriter();
		out.print("<html><head>");
		out.print("<meta charset='euc-kr'></head><body>");
		out.printf("<h1>�̸� : %s</h1>", n);
		out.printf("<img src='file/%s'>", p);
		out.print("</body></html>");
	}

}

