<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/index.css">
</head>
<body>
	<table>
		<tr>
			<td align="center">���</td>
		</tr>
		<tr>
			<td align="center"><img src="photo/${hh.fileName }"></td>
		</tr>
		<tr>
			<td align="center">�̸� : ${hh.name }</td>
		</tr>
		<tr>
			<td align="center">Ű : ${hh.height }</td>
		</tr>
		<tr>
			<td align="center">������ : ${hh.weight }</td>
		</tr>
		<tr>
			<td align="center">ǥ��ü�� : ${hh.stdWeight }</td>
		</tr>
		<tr>
			<td align="center">�񸸵�: ${hh.bimando }</td>
		</tr>
		<tr>
			<td align="center">${hh.result }</td>
		</tr>
	</table>
</body>
</html>





