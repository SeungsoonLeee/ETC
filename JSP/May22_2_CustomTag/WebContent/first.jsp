<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>first</h1>
	<%
		// ��κ��� ���� : M���� 
		// �� �ޱ� : EL
		// ������ �̵�
		//		�ڵ� �̵� :
		//			redirect, include
		// �ݺ���, ���ǹ�
		// ������� ����
	%>
	
	<%
		// CustomTag
		//		.jsp������ �����ִ� �±�
		//		�۾��Ҷ��� HTML�±׸�� 
		//			=> ��Ĺ�� �ڹٷ� �ٲ㼭 ����
		//		<���ξ�:�±׸�>����
		
		//	JSPǥ�ؾ׼��±� : jspȯ�濡�� �⺻ ���
		//		���ξ� : jsp
		//		include 
		//			=> �� ��ġ�� include���ϴ� ���� �ҽ� �־���
		
		//	CustomTag : �ܺ� .jar���� �ְ� ���
	%>
	������
	<jsp:include page="second.jsp"></jsp:include>
</body>
</html>






