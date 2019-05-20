package com.kwon.sd.main;

import java.util.ArrayList;
import java.util.Scanner;

import com.kwon.sd.student.Student;

// V
public class ConsoleScreen {
	public static void printResult(String result) {
		System.out.println(result);
	}

	public static void printResult2(ArrayList<Student> result) {
		for (Student student : result) {
			student.print();
		}
	}

	public static Student showSearchStudentMenu() {
		System.out.print("�̸� : ");
		String n = new Scanner(System.in).next();
		return new Student(0, n, 0, null, null, null);
	}

	public static Student showRegStudentMenu() {
		Scanner s = new Scanner(System.in);
		System.out.print("�̸� : ");
		String n = s.next();
		System.out.print("���� : ");
		int a = s.nextInt();
		System.out.print("���� : ");
		String g = s.next();
		System.out.print("�ּ� : ");
		String addr = s.next();
		System.out.print("���ǽǸ� : ");
		String l = s.next();
		return new Student(0, n, a, g, addr, l);
	}

	public static Student showDelStudentMenu() {
		System.out.print("��ȣ : ");
		int n = new Scanner(System.in).nextInt();
		return new Student(n, null, 0, null, null, null);
	}

	public static Student showUpdateStudentMenu() {
		Scanner s = new Scanner(System.in);
		System.out.print("��ȣ : ");
		int n = s.nextInt();
		System.out.print("���� : ");
		int a = s.nextInt();
		return new Student(n, null, a, null, null, null);
	}

	public static int showMainMenu() {
		System.out.println("�п�����");
		System.out.println("-----");
		System.out.println("1. �л����");
		System.out.println("2. �л�����");
		System.out.println("3. �л�����");
		System.out.println("4. �л���ü��ȸ");
		System.out.println("9. ����");
		System.out.println("-----");
		System.out.print("�� : ");
		return new Scanner(System.in).nextInt();
	}
}
