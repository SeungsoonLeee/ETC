<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script type="text/javascript">
	function goThird(){
		location.href = "thirdC";
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<h1>secondV</h1>
	parameter �б�<br>
	a : ${param.a }<p>
	<br>
	attribute ����<br>
	b : ${b }<p>
	<br>
	<button onclick="goThird()">Third��</button>
	<hr>
</body>
</html>