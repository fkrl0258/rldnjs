<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="errorView.jsp" %>    
<%@ page import="connection.Message" %>
<%@ page import="connection.WriteMessageService" %>      

<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="message" class"=connection.Message">
	<jsp:setProperty name="massage" property="*"/>
</jsp:useBean>
<%
 	WriteMessageService writeService = WriteMessageService.getInstance();
	writeService.write(message);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� �޼��� ����</title>
</head>
<body>
���Ͽ� �޽����� ������ϴ�.
<br/>
<a href="list.jsp">[��� ����]</a>
</body>
</html>