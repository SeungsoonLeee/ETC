<%@page import="java.sql.Connection"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
	<%
		MultipartRequest mr = new MultipartRequest(request,
				request.getSession().getServletContext().getRealPath("photo"), 30 * 1024 * 1024, "euc-kr",
				new DefaultFileRenamePolicy());
		String n = mr.getParameter("n");
		double h = Double.parseDouble(mr.getParameter("h"));
		double w = Double.parseDouble(mr.getParameter("w"));
		String p = mr.getFilesystemName("p");
		p = URLEncoder.encode(p, "euc-kr");
		p = p.replace("+", " ");
		double stdWeight = (h - 100) * 0.9;
		double bimando = (w / stdWeight) * 100;
		String result = "��ü��";
		if (bimando > 120) {
			result = "��";
		} else if (bimando > 80) {
			result = "����";
		}
	%>
	<table>
		<tr>
			<td align="center">���</td>
		</tr>
		<tr>
			<td align="center"><img src="photo/<%=p%>"></td>
		</tr>
		<tr>
			<td align="center">�̸� : <%=n%></td>
		</tr>
		<tr>
			<td align="center">Ű : <%=h%></td>
		</tr>
		<tr>
			<td align="center">������ : <%=w%></td>
		</tr>
		<tr>
			<td align="center">ǥ��ü�� : <%=stdWeight%></td>
		</tr>
		<tr>
			<td align="center">�񸸵�: <%=bimando%></td>
		</tr>
		<tr>
			<td align="center"><%=result%></td>
		</tr>
	</table>
</body>
</html>





