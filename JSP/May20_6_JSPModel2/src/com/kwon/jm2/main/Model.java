package com.kwon.jm2.main;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Model {
	public static void test(HttpServletRequest request, HttpServletResponse response) {
		String path 
			= request.getSession()
			.getServletContext().getRealPath("img");
		
		try {
			MultipartRequest mr = 
				new MultipartRequest(request,
						path, 30*1024*1024, "euc-kr", 
						new DefaultFileRenamePolicy());
			// �������� mr
			String t = mr.getParameter("t");
			String p = mr.getFilesystemName("p");
			p = URLEncoder.encode(p, "euc-kr");
			p = p.replace("+", " ");
			System.out.println(t);
			System.out.println(p);
			
			// ���ó���� �������
			request.setAttribute("t", t);
			request.setAttribute("p", p);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
//	public static void test(HttpServletRequest request, HttpServletResponse response) {
//		try {
//			// ��û �Ķ���� �ѱ�ó���� 
//			// ���ʷ� �� �б� ���� => �������� ���ص� ��
//			request.setCharacterEncoding("euc-kr");
//		} catch (UnsupportedEncodingException e) {
//			e.printStackTrace();
//		}
//		String t = request.getParameter("t");
//		System.out.println(t);
//	}
	
}




