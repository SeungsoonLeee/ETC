<%@page import="java.util.ArrayList"%>
<%@page import="com.kwon.el.main.Human"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>V2</h1>
	<%
		String pt = request.getParameter("plainText");
	
		String n = request.getParameter("number");
		Integer n2 = Integer.parseInt(n);
		int n3 = n2.intValue();
		
		String[] cb = request.getParameterValues("cb");
	
		Object pt2 = request.getAttribute("pt2");
		String pt22 = (String) pt2;
		
		Object hh = request.getAttribute("hh");
		Human hh2 = (Human) hh;
		
		Object ar = request.getAttribute("ar");
		String[] ar2 = (String[]) ar;
		
		Object al = request.getAttribute("al");
		ArrayList<String> al2 = (ArrayList<String>) al;
		
		Object humans = request.getAttribute("humans");
		ArrayList<Human> humans2 
			= (ArrayList<Human>) humans;
	%>
	<%=humans2.get(0).getName() %>
	
	<%=al2.get(0) %> <%=al2.get(1) %><br>
	<%=ar2[0] %> <%=ar2[1] %><br>
	hh name : <%=hh2.getName() %><br>
	hh age : <%=hh2.getAge() %><br>
	pt2 : <%=pt22 %><br>
	plainText : <%=pt %><br> 
	number : <%=n3 + 100 %><br> 
	cb :
	<%
		if (cb != null) {
			for (String s : cb) {
	%>
				<%=s %>
	<%
			}
		}
	%>
	<hr>
	<%
		// �ѱ�ó��(x) : M�ʿ���
		// ���, ...(x) : M�ʿ���

		// ���ǹ�, �ݺ��� : Ŀ�����±�
		// �� �ޱ� : EL 
		// EL(Expression Language)
		//		${??? } => ��Ĺ�� �ڹ��ڵ�� �ٲ㼭 ����
		//		����ȯ �ڵ�
		//		������ ��� ����
		//		null��ó�� �˾Ƽ�
		//		import�ʿ����
		
		// 	parameter : ${param.�Ķ���͸�}
		//	parameter(checkbox) 
		//		: ${paramValues.�Ķ���͸�[�ε���]}
		
		//  attribute : ${��Ʈ����Ʈ��}
		//	attribute(��ü) : ${��Ʈ����Ʈ��.���������} -> getterȣ��
		//	attribute([]) or attribute(List)
		//		: ${��Ʈ����Ʈ��[�ε���] }
		// 	attribute(List<��ü>)
		//		: ${��Ʈ����Ʈ��[�ε���].���������}
		
		// session : ${sessionScope.��Ʈ����Ʈ��}
		
		// cookie : ${cookie.�̸�.value}
	%>
	${sessionScope.str}<br>
	${cookie.c.value}<br>
	${humans[0].name}<br>
	${al[0] } ${al[1] }<br>
	${ar[0] } ${ar[1] }<br>
	plainText : ${param.plainText }<br> 
	number : ${param.number + 100 }<br>
	cb : ${paramValues.cb[0] } ${paramValues.cb[1] }<br>
	pt2 : ${pt2 }<br>
	n2 : ${n2Haha * 2 }<br>
	hh name : ${hh.name }<br>
	hh age : ${hh.age }<br>
</body>
</html>





