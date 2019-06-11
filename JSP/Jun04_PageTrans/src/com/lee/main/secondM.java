package com.lee.main;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class secondM{
	public static void test(HttpServletRequest request, HttpServletResponse response) {
		String a = request.getParameter("a");
		System.out.println(a);
		
		int b = 100;
		request.setAttribute("b", b);
		
		//attribute�� �ڹٷ� �о�� �� 
		int read_b = (Integer)request.getAttribute("b");
		System.out.println(read_b);
		
		//session�� �̿��� �� �ѱ�
		int c = 1000;
		request.getSession().setAttribute("c", c);
		request.getSession().setMaxInactiveInterval(5); //session �ִ� �����ð� ����, �ð� �� �۾����� ������ ������ �����.
		
		//cookie�� �̿��� �� �ѱ�
		String d = "2000";
		Cookie cookie = new Cookie("d", d);
		cookie.setMaxAge(5); //��Ű �����ð� ����
		response.addCookie(cookie);
	}
}
