<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="color.jsp" %>    
<%@ page import = "util.CookieBox" %>  


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>
<link href="style.css" rel="stylesheet" type="text/css">

	<script language="javascript">
		<!--
			function begin(){
				document.myform.id.focus();
		}
		function checkIt(){
			if(!document.myform.id.value){
				alert("�̸��� �Է����� �����̽��ϴ�.");
				document.myform.id.focus();
				return false;
			}
			if(!document.myform.passwd.value){
				alert("��й�ȣ�� �Է����� �ʾҽ��ϴ�.");
				document.myform.passwd.focus();
				return false;
			}
		}
		-->
	</script>
</head>
<%
	CookieBox cookieBox = new CookieBox(request);	
%>
<body onload="begin()" bgcolor="<%=bodyback_c%>">
<form name="myform" action="loginPro.jsp" method="post" onSubmit="return checkIt()">
<table cellSpacing=1 cellPadding=1 width="260" border=1 align="center">
	<tr height="30">
		<td colspan="2" align="middle" bgcolor="<%=title_c %>"><strong>ȸ���α���</strong>
		
	<tr height="30">
		<td width="110" bgcolor="<%=title_c %>" align=center>���̵�</td>
		<td width="150" bgcolor="<%=value_c %>" align=center>
			<input type="text" name="id" size="15" maxlength="12"></td></tr>
	<tr height="30">
		<td width="110" bgcolor="<%=title_c %>" align=center>��й�ȣ</td>
		<td width="150" bgcolor="<%=value_c %>" align=center>
			<input type="password" name="passwd" size="15" maxlength="12"></td></tr>
	<tr height="30">
		<td colspan="2" align="middle" bgcolor="<%=title_c %>">
		 	<input type=submit value="�α���">
		 	<input type=reset value="�ٽ��Է�">
		 	<input type="button" value="ȸ������" onclick="javascript:window.location='inputForm.jsp'"></td></tr>
</table>

</body>
</html>