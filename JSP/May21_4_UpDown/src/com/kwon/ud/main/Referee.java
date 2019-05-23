package com.kwon.ud.main;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// java : static -> ���α׷� �����
// jsp : static -> ó�� �� ��ü �� ��
public class Referee {
	private int ans;
	//private int turn; // session, cookie(Ŭ���̾�Ʈ ������ ����)
	private static final Referee REFEREE = new Referee();

	public void pickNewAns() {
		ans = new Random().nextInt(1001);
		System.out.println(ans);
	}
	
	private Referee() {
		ans = new Random().nextInt(1001);
		System.out.println(ans);
	}

	public static Referee getReferee() {
		return REFEREE;
	}

	public void judge(HttpServletRequest request, HttpServletResponse response) {
		int n = Integer.parseInt(request.getParameter("n"));
		//turn++;
		//System.out.println(turn);
		if (ans < n) {
			request.setAttribute("result", "���� �� ����");
		} else if (ans > n) {
			request.setAttribute("result", "���� �� ŭ");
		} else {
			request.setAttribute("result", "����");
		}
	}

}
