<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "util.CookieBox" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α�����</title>
</head>
<body>
<%
	CookieBox cookieBox = new CookieBox(request);	
%>
<form action="<%= request.getContextPath() %>/feb12/member/sessionLogin2.jsp"
      method="post">
<%
 if(cookieBox.exists("ID")){
%>      
���̵� <input type="text" name="id" size="10" value="<%= cookieBox.getValue("ID") %>">
<% }else{ %>
���̵� <input type="text" name="id" size="10">
<%} %>
��ȣ <input type="password" name="password" size="10">
<%
 if(cookieBox.exists("ID")){
%>      
���̵� ���� <input type="checkbox" name="save" value="true" checked>
<% }else{ %>
���̵� ���� <input type="checkbox" name="save" value="true">
<%} %>
<input type="submit" value="�α���">

</form>
</body>
</html>