<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�ʱ�ȭ �Ķ���� �о����</title>
</head>
<body>

�ʱ�ȭ �Ķ���� ���:
<ul>
<%
	Enumeration initParamEnum = application.getInitParameterNames();
	while(initParamEnum.hasMoreElements()){
		String initParamName = (String)initParamEnum.nextElement();
%>
<li><%= initParamName %> = <%= application.getInitParameter(initParamName) %>
<%
	}
%>
</ul>
</body>
</html>