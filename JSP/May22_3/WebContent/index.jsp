<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>May22</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/home.css">
<link rel="stylesheet" href="css/converter.css">
<script type="text/javascript" src="js/validCheck.js"></script>
<script type="text/javascript" src="js/check.js"></script>
</head>
<body>
	<table id="site">
		<tr>
			<td id="siteTitle">May22</td>
		</tr>
		<tr>
			<td id="siteMenu">
				<a href="HomeController">Ȩ</a> 
				<a href="AController">A</a> 
				<a href="CalculatorController">��Ģ����</a>
				<a href="AdminController">���ھ߱�(������)</a>				
				<a href="PlayerController">���ھ߱�(�÷��̾�)</a>
				<a href="ConverterController">������ȯ</a>				
				<a href="LottoController">�ζ�</a>				
			</td>
		</tr>
		<tr>
			<td id="siteContent" valign="top">
				<jsp:include page="${contentPageHaha }"></jsp:include>
			</td>
		</tr>
	</table>

</body>
</html>





