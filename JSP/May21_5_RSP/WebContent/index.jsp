<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/index.css">
<script type="text/javascript" src="js/validCheck.js"></script>
<script type="text/javascript" src="js/check.js"></script>
</head>
<body>
	<form action="HomeController" onsubmit="return check();" name="f">
		�� : <input name="h" autocomplete="off" autofocus="autofocus"><p>
		������� : 
		
		<button>����</button>
	</form>
	<%
		// JavaScript
		// a
		// form + button
	%>
	<hr>
	<a href="HomeController?h=1">����</a><br>
	<a href="HomeController?h=2">����</a><br>
	<a href="HomeController?h=3">��</a><br>
	<hr>
	<a href="HomeController?h=1">
		<img src="img/1.png">
	</a>
	<a href="HomeController?h=2">
		<img src="img/2.png">
	</a>
	<a href="HomeController?h=3">
		<img src="img/3.png">
	</a>
	<hr>
	<img src="img/1.png" ondblclick="go(1);">
	<img src="img/2.png" ondblclick="go(2);">
	<img src="img/3.png" ondblclick="go(3);">
	<hr>
	�� : <img src="${myHand }"><p>
	�� : <img src="${comHand }"><p>
	���� : ${result }
</body>
</html>



