<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="member" scope="request" class="member.MemberInfo" />    
<%
	member.setId("madvirus");
	member.setName("¶ó±â¿ø");
%>
<jsp:forward page="./useObject.jsp" />