<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>    
<c:choose>
	<c:when test="${param.type == 'flickr' }">
		<%-- http://www.flickr.com/search?f=hp&q=����Ű��� --%>
			<c:import url="https://www.flickr.com/search">
				<c:param name="f" value="hp"/>
				<c:param name="q" value="����Ű���"/>
			</c:import>	
	</c:when>
	
	<c:when test="${param.type == 'youtube' }">
		<c:import url="https://www.youtube.com/results">
			<c:param name="search_query" value="ryu"/>
		</c:import>
	</c:when>
	<c:otherwise>
		<c:import url="use_import_tag_help.jsp">
			<c:param name="massage" value="�������ּ���"/>
		</c:import>
	</c:otherwise>
</c:choose>		
