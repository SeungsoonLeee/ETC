<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="StarController" method="post" name="starInputForm" onsubmit="return starInputCheck();">
		<table id="starInputTable">
			<tr>
				<td align="center" id="starInputTitle">���</td>
			</tr>
			<tr>
				<td align="center">
				<input name="floor" placeholder="�� ��" id="starInput" autofocus="autofocus" autocomplete="off"></td>
			</tr>
			<tr>
				<td align="center"><input type="radio" name="direction"
					value="a" class="starRadio" checked="checked">������&nbsp;&nbsp;&nbsp;<input type="radio" name="direction"
					value="b">������</td>
			</tr>
			<tr>
				<td align="center">
					<button id="starButton">���</button>
				</td>
			</tr>
		</table>


	</form>
</body>
</html>