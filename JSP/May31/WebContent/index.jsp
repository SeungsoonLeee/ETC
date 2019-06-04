<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>May31</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/snack.css">
<link rel="stylesheet" href="css/product.css">
<script type="text/javascript" src="js/go.js"></script>
<script type="text/javascript" src="js/validCheck.js"></script>
<script type="text/javascript" src="js/check.js"></script>
</head>
<body>
	<table id="site">
		<tr>
			<td colspan="2" id="siteTitle" align="center">
				<a href="HomeController">May31</a>
			</td>
		</tr>
		<tr>
			<td id="siteMenu" valign="top">
				<a href="CTController">�����׽�Ʈ</a><p>
				<a href="ITController">INSERT�׽�Ʈ</a><p>
				<a href="UTController">UPDATE�׽�Ʈ</a><p>
				<a href="DTController">DELETE�׽�Ʈ</a><p>
				<a href="STController">SELECT�׽�Ʈ</a><p>
				<a href="SnackController">����</a><p>
				<a href="ProductController">��ǰ</a><p>
			</td>
			<td id="siteContent" valign="top">
				<jsp:include page="${contentPage }"></jsp:include>
			</td>
		</tr>
	</table>
</body>
</html>