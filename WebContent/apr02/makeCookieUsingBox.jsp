<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "util.CookieBox" %>    
<%
	response.addCookie(CookieBox.createCookie("name", "����"));
	response.addCookie(CookieBox.createCookie("id", "madvirus", "/apr02", -1));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>CookieBox ��뿹</title>
</head>
<body>

CookieBox�� ����Ͽ� ��Ű ����.

</body>
</html>