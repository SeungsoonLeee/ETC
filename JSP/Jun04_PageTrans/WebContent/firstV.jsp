<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script type="text/javascript">
	function goSecond(){
		location.href = "secondC?a=20";
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<h1>firstV</h1>
	get��� ��û�� ���<hr>
	1. a�±�<br>
	<a href="secondC?a=10">Second��</a>
	<hr>
	2. �ڹٽ�ũ��Ʈ<br>
	<button onclick="goSecond()">Second��</button>
	<hr>
	3. form �±�<br>
	<form action="secondC">
		<input name="a">
		<button>Second��</button>
	</form>
</body>
</html>