<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="JoinController" 
	name="joinForm" 
	onsubmit="return joinCheck();"
	method="post" enctype="multipart/form-data">
		�̸� :
		<input name="n" 
			maxlength="10"
			autofocus="autofocus"
			autocomplete="off">
		<hr>
		������� :
		<select name="y">
			<c:forEach var="y" begin="1980" end="2010">
				<option>${y }</option>
			</c:forEach>
		</select>��
		<select name="m">
			<c:forEach var="m" begin="1" end="12">
				<option>${m }</option>
			</c:forEach>
		</select>��
		<select name="d">
			<c:forEach var="d" begin="1" end="31">
				<option>${d }</option>
			</c:forEach>
		</select>��
		<hr>
		���� : 
		<input type="radio" name="g" value="����" checked="checked">����
		<input type="radio" name="g" value="����">����
		<hr>
		������� : 
		<input type="checkbox" name="v" value="����">����
		<input type="checkbox" name="v" value="����ö">����ö
		<input type="checkbox" name="v" value="��Ÿ">��Ÿ
		<hr>
		�ڱ�Ұ� : <br>
		<textarea name="i" maxlength="150"></textarea>
		<hr>
		Ű : <input name="h">
		<hr>
		������ : <input name="w">
		<hr>
		���� : <input name="p" type="file">
		<hr>
		<button>����</button>	
	</form>
</body>
</html>




