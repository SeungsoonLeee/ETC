<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="CalculatorController" 
		method="post" 
		name="calculatorForm"
		onsubmit="return calculatorCheck();">
		x <input name="x"><p>
		y <input name="y"><p>
		<button>Ȯ��</button>
	</form>
</body>
</html>


