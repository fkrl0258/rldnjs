<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %>    
<%
	Cookie cookie = new Cookie("name",URLEncoder.encode("����", "euc-kr"));
	response.addCookie(cookie);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��Ű����</title>
</head>
<body>

<%= cookie.getName() %> ��Ű�� �� = "<%= cookie.getValue() %>"

</body>
</html>