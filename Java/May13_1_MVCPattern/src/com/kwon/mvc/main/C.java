package com.kwon.mvc.main;

// MVC����
// 		��������, ������ ������ ����
//		Ŭ������ ������ �۾�
//		� Ŭ���� �ϳ��� M,V,C�߿� �ϳ��� ���Ҹ�

// C(Controller) : ������(������)
//		��������
//		���� M�� �ʿ��ϸ� M�θ���, V�� �ʿ��ϸ� V�θ���
public class C {
	public static void main(String[] args) {
		int[] xy = V.getNum();
		int sum = M.calculate(xy);
		V.print(sum);
	}
}


