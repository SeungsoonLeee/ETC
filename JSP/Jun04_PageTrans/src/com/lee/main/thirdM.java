package com.lee.main;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class thirdM{
	public static void test(HttpServletRequest request, HttpServletResponse response) {
		//secondV���� ���ο� ��û�� �ϱ� ������ a, b�� third���� ������ �� ����.
		//session�� cookie�� �̿��Ͽ� ���� �����ؾ� �Ѵ�.
		
		//session �б�
		int read_c = (Integer)request.getSession().getAttribute("c");
		System.out.println("���ǰ� : " + read_c);
		
		//cookie �ϱ�
		//���� ������� �ִ� ��Ű�� �߿� ���� ���� ��Ű�� �о�;� ��.
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("d")){
				System.out.println("��Ű�� : " + cookie.getValue());
			}
		}
	}
}
