package com.kwon.what.sushi;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SushiChef {
	private static final SushiChef CHEF = new SushiChef();
	private Random brain = null;
	private String[] source = null;
	private String[] color = null;
	private String[] ingredient = null;
	private HashMap<String, Integer> price = null;
	private int money;

	private SushiChef() {
		brain = new Random();
		source = new String[] { "���游��", "��ġ�˿ø�", "", "", "", "������", "ū", "����" };
		color = new String[] { "r", "g", "b", "w" };
		ingredient = new String[] { "����", "��ġ", "����", "����", "�Ұ��", "����", "���" };
		price = new HashMap<String, Integer>();
		price.put("w", 1000);
		price.put("r", 1500);
		price.put("g", 2000);
		price.put("b", 3000);
	}

	public static SushiChef getChef() {
		return CHEF;
	}

	public void make(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Sushi> dishes = new ArrayList<Sushi>();
		for (int j = 0; j < 10; j++) {
			dishes.add(new Sushi(color[brain.nextInt(color.length)],
					source[brain.nextInt(source.length)] + ingredient[brain.nextInt(ingredient.length)]));
		}
		request.setAttribute("dishes", dishes);
	}

	public void reset(HttpServletRequest request, HttpServletResponse response) {
		money = 0;
		request.setAttribute("money", money);
	}

	public void calculate(HttpServletRequest request, HttpServletResponse response) {
		String c = request.getParameter("color");
		money += price.get(c);
		request.setAttribute("money", money);
	}
}
