<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="JoinController"
		method="post" enctype="multipart/form-data" 
		name="joinForm" onsubmit="return joinCheck();">
		<table id="joinTable">
			<tr>
				<td align="center">
					<input name="id" placeholder="ID" class="joinInput" maxlength="10" autocomplete="off" autofocus="autofocus">
				</td>
			</tr>
			<tr>
				<td align="center">
					<input name="pw" placeholder="PW" class="joinInput" type="password" maxlength="10" autocomplete="off">
				</td>
			</tr>
			<tr>
				<td align="center">
					<input name="pwChk" placeholder="PWȮ��" class="joinInput" type="password" maxlength="10" autocomplete="off">
				</td>
			</tr>
			<tr>
				<td align="center">
					<input name="name" placeholder="�̸�" class="joinInput" maxlength="10" autocomplete="off">
				</td>
			</tr>
			<tr>
				<td align="center">
					<textarea name="comment" placeholder="�λ縻" class="joinTA" maxlength="100" autocomplete="off"></textarea>
				</td>
			</tr>
			<tr>
				<td align="center">
					<div class="joinFileInputDiv">
					���� <input name="photo" class="joinFileInput" type="file" autocomplete="off">
					</div>
				</td>
			</tr>
			<tr>
				<td align="center">
					<button>����</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>






