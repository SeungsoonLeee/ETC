package com.kwon.ddp.main;

import java.util.Scanner;

public class InsertMain {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.print("�Ĵ�� : ");
		String n = s.next();
		System.out.print("��ġ : ");
		String a = s.next();
		
		Restaurant r = new Restaurant(n, a);
		DAO.getDao().regRestaurant(r);
	}
}
