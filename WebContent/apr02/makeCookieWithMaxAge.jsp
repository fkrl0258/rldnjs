<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie cookie = new Cookie("oneh", "1time");
	cookie.setMaxAge(60*1);
	response.addCookie(cookie);
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��Ű��ȿ �ð�����</title>
</head>
<body>

��ȿ �ð��� 1���� oneh��Ű ����.

</body>
</html>