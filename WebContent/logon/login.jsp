<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "util.CookieBox" %>  

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if (id.equals(password)) {
		session.setAttribute("kwmembers", id);
		
		if(request.getParameter("save") == null){
		   response.addCookie(
			CookieBox.createCookie("ID", "", "/", -1));
		}else{
		   response.addCookie(
			CookieBox.createCookie("ID", id, "/", -1));
		}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α��� ����</title>
</head>
<body>

�α��� �����߽��ϴ�.

</body>
</html>
<%
	} else { // �α��� ���н�
%>
<script>
alert("�α��ο� �����Ͽ����ϴ�.");
history.go(-1);
</script>
<%
	}
%>