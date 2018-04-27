<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String code = request.getParameter("code");
	String viewPageURI = null;
	
	if(code.equals("A")){
		viewPageURI = "./viewModule/a.jsp";
	} else if (code.equals("B")){
		viewPageURI = "/mar30/viewModule/b.jsp";
	} else if (code.equals("C")){
		viewPageURI = "/mar30/viewModule/c.jsp";
	}
%>
<jsp:forward page="<%= viewPageURI %>" />