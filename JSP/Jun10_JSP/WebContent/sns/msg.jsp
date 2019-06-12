<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MSG</title>
</head>
<body>
	<input name="token" value="${token }" type="hidden">
	<table id="snsLoadTable">
		<tr>
			<td align="center">
				<table id="snsMsgTable">
					<tr>
						<td rowspan="2" align="center" width="100px"><img src="img/${s.photo }"></td>
						<td>${s.id }(${s.name })</td>
					</tr>
					<tr>
						<td>�ۼ��� : ${s.date }</td>
					</tr>
					<tr>
						<td colspan="2" class="snsMsg"><textarea id="msg">${s.msg }</textarea></td>
					</tr>
					<c:if test="${s.id == sessionScope.m.id }">
						<tr>
							<td colspan="2" align="right">
								<font color="red">${result }</font>
								<button onclick="updateMsg(${s.no });">�����ϱ�</button>
								<button onclick="deleteMsg(${s.no });">�����ϱ�</button>
								<button onclick="goSnsPage();">�Ϸ�</button>
							</td>
						</tr>
					</c:if>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>