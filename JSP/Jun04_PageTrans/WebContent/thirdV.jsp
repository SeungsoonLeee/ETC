<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>thirdV</h1>
	parameter �б�<br>
	a : ${param.a }<p>
	
	attribute �ѱ�<br>
	b : ${b }<p>
	<br>
	<hr>
	second�� parameter�� attribute�� thirdV���� �Ѿ���� ����<br>
	���� session�� cookie�� �̿��ؾ� ��.<br><br>
	session �б�<br>
	c : ${sessionScope.c }<p>
	
	cookie �б�<br>
	d : ${cookie.d.value }<p>
</body>
</html>