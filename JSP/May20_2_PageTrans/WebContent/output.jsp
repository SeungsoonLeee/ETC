<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>output</h1>
	<%
		int x = Integer.parseInt(request.getParameter("x"));
		int y = Integer.parseInt(request.getParameter("y"));
		int z = x + y;
		
		// �ڵ��̵�
		// 		�̺�Ʈ ���� �ٷ� third������ �̵�
		
		// redirect : ������
		//response.sendRedirect("third.jsp");
		
		// forward
		// input -> output���� �� �� ���ߴ� ��û������ 
		// third���� ��������
		RequestDispatcher rd
			= request.getRequestDispatcher("third.jsp");
		
		request.setAttribute("a", z);
		request.setAttribute("b", "������");
		request.setAttribute("c", new Random());
		
		rd.forward(request, response);
		
		// include(��ġ�����Ұ� : �ֻ�ܿ���)
		// output.jsp�ӿ� third.jsp�� ����
		// rd.include(request, response);
		
		////////////////////////////////////
		// ��
		// parameter
		//		(GET��Ŀ�û�϶�)�ּҿ�
		//		(POST��Ŀ�û�϶�)����������
		//		<input>�� ����ڰ� �Է��� ��
		//		��û�� �����
		//		String or String[]
		// attribute
		//		java�� ���� ��
		//		��û�� �����
		//		Object�� �ƹ��ų� �� ����
		// session
		// cookie
	%>
	<%=x %> + <%=y %> = <%=z %>
</body>
</html>




