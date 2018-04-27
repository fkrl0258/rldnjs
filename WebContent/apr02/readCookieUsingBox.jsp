<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.CookieBox" %>
<%
	CookieBox cookieBox = new CookieBox(request);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Cookie 사용</title>
</head>
<body>

name 쿠키 = <%= cookieBox.getValue("name") %><br>
<% if (cookieBox.exists("id")) { %>
id 쿠키 = <%= cookieBox.getValue("id") %><br>
<% } %>

</body>
</html>