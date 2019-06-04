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
	<form action="SnackRegController" method="post"
		 name="snackRegForm" onsubmit="return snackRegCheck();">
		<table id="snackRegTbl">
			<tr>
				<td align="right">�̸�</td>
				<td align="center">
					<input name="s_name" maxlength="10" autocomplete="off" autofocus="autofocus">
				</td>
			</tr>
			<tr>
				<td align="right">����</td>
				<td align="center">
					<input name="s_price" maxlength="5" autocomplete="off">
				</td>
			</tr>
			<tr>
				<td align="right">�������</td>
				<td align="center">
					<select name="s_exp_y">
						<c:forEach var="y" begin="${curYear }" end="${curYear + 10 }">
							<option>${y }</option>
						</c:forEach>
					</select> ��&nbsp;
					<select name="s_exp_m">
						<c:forEach var="m" begin="1" end="12">
							<option>${m }</option>
						</c:forEach>
					</select> ��&nbsp;
					<select name="s_exp_d">
						<c:forEach var="d" begin="1" end="31">
							<option>${d }</option>
						</c:forEach>
					</select> ��
				</td>
			</tr>
			<tr>
				<td align="right">����</td>
				<td align="center">
					<textarea name="s_desc" maxlength="90" autocomplete="off"></textarea>
				</td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<button>���</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>




