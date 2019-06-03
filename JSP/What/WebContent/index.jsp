<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>WHAT</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/star.css">
<link rel="stylesheet" href="css/snail.css">
<link rel="stylesheet" href="css/sushi.css">
<link rel="stylesheet" href="css/word.css">
<link rel="stylesheet" href="css/weather.css">
<link rel="stylesheet" href="css/loc.css">
<script type="text/javascript" src="js/validCheck.js"></script>
<script type="text/javascript" src="js/check.js"></script>
<script type="text/javascript" src="js/sushi.js"></script>
<script type="text/javascript" src="js/word.js"></script>
</head>

<body>
	<table id="siteTitleArea">
		<tr> 
			<td align="center">
				<table id="siteTitle">
					<tr>
						<td align="center"><a href="HomeController">WHAT</a></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

	<table id="siteMenu">
		<tr>
			<td><a href="StarController">*���</a></td>
		</tr>
		<tr>
			<td><a href="SnailController">������</a></td>
		</tr>
		<tr>
			<td><a href="SushiController">ȸ���ʹ�</a></td>
		</tr>
		<tr>
			<td><a href="WordController">�����ձ�</a></td>
		</tr>
		<tr>
			<td><a href="WeatherController">����</a></td>
		</tr>
		<tr>
			<td><a href="LocController">��Ұ˻�</a></td>
		</tr>
	</table>
	<table id="siteContent">
		<tr>
			<td><jsp:include page="${contentPage }"></jsp:include></td>
		</tr>
	</table>
</body>
</html>