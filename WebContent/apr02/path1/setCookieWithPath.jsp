<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %>    
<%
	Cookie cookie1=new Cookie("path1",URLEncoder.encode("경로:/KH10/apr02/path1", "euc-kr"));
	cookie1.setPath("/KH10/apr02/path1");
	response.addCookie(cookie1);
	
	Cookie cookie2=new Cookie("path2",URLEncoder.encode("경로:", "euc-kr"));
	response.addCookie(cookie2);
	
	Cookie cookie3=new Cookie("path3",URLEncoder.encode("경로:/", "euc-kr"));
	cookie3.setPath("/");
	response.addCookie(cookie3);
	
	Cookie cookie4=new Cookie("path4",URLEncoder.encode("경로:/KH10/apr02/path2", "euc-kr"));
	cookie4.setPath("/KH10/apr02/path2");
	response.addCookie(cookie4);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>쿠키 경로 지정</title>
</head>
<body>

다음과 같이 쿠키를 생성합니다.<br>

<%= cookie1.getName() %>=<%= cookie1.getValue() %>
[<%= cookie1.getPath() %>]
<br>
<%= cookie2.getName() %>=<%= cookie2.getValue() %>
[<%= cookie2.getPath() %>]
<br>
<%= cookie3.getName() %>=<%= cookie3.getValue() %>
[<%= cookie3.getPath() %>]
<br>
<%= cookie4.getName() %>=<%= cookie4.getValue() %>
[<%= cookie4.getPath() %>]


</body>
</html>