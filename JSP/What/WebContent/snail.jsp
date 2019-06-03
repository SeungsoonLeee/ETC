<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="SnailController" method="post" name="snailInputForm" onsubmit="return snailInputCheck();">
		<table id="snailInputTable">
			<tr>
				<td><input name="size" id="snailSizeInput" placeholder="������" autofocus="autofocus" autocomplete="off"></td>
				<td><button id="snailButton">Ȯ��</button></td>
			</tr>
		</table>


	</form>
	<hr>
	<table id="snailTable">
		<c:forEach var="ar" items="${result }">
			<tr>
				<c:forEach var="n" items="${ar }">
					<td align="center">${n }</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</body>
</html>