package com.kwon.mvc.main;

import java.util.Scanner;

// V(View) : �����̳�
//		����ڰ� ������ ���� ����
//		�Է¹ޱ�, ��� �����ֱ�
public class V {
	public static void print(int sum) {
		System.out.println("���� " + sum);
	}
	
	public static int[] getNum() {
		Scanner s = new Scanner(System.in);
		System.out.print("x : ");
		int x = s.nextInt();
		System.out.print("y : ");
		int y = s.nextInt();
		s.close();
		return new int[] {x, y};
	}
	
}




