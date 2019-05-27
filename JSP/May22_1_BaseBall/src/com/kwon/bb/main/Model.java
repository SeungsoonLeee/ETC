package com.kwon.bb.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Model {
	private String ans;

	private static final Model MODEL = new Model();

	private Model() {
	}

	public static Model getModel() {
		return MODEL;
	}

	public void setAns(HttpServletRequest request, HttpServletResponse response) {
		ans = request.getParameter("n");
		request.setAttribute("ans", ans);
	}

	public void judge(HttpServletRequest request, HttpServletResponse response) {
		String playerAns = request.getParameter("n");
		
		int strike = 0;
		int ball = 0;
		// playerAns.length() : ���ڼ�
		// playerAns.charAt(0) : Ư����ġ����
		// P : 845
		// A : 864
		for (int i = 0; i < playerAns.length(); i++) {
			for (int j = 0; j < ans.length(); j++) {
				if (playerAns.charAt(i) == ans.charAt(j)) {
					if (i == j) {
						strike++;
					} else {
						ball++;
					}
					break;
				}
			}
		}
		request.setAttribute("playerAns", playerAns);		
		request.setAttribute("strike", strike);
		request.setAttribute("ball", ball);
	}
}
