package com.kwon.aop.main;

// AOP(Aspect Oriented Programming)
//		�����������α׷���
//		OOP�� �ٸ��������� ����, �������ΰ� ���� ����
public class Human {
	public void ready() {
		System.out.println("�ı�");
		System.out.println("���Ա�");
		System.out.println("�Ź߽ű�");
	}

	public void goSchool() {
		ready();
		System.out.println("����������");
		System.out.println("����Ÿ�� �б���");
	}

	public void goPark() {
		ready();
		System.out.println("������");
		System.out.println("�� ���� ��������");
	}

	public void goMart() {
		ready();
		System.out.println("�ɾ ��Ʈ��");
	}
}
