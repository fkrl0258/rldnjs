<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>choose 태그</title>
</head>
<body>

<ul>
<c:choose>
	<c:when test="${param.name == 'kw' }">
	<li> 당신의 이름은 ${param.name } 입니다.</li>
	</c:when>
	
	<c:when test="${param.age >= 20 }">
	<li>당신은 20세 이상입니다.</li>
	</c:when>
	
	<c:otherwise>
	<li>당신은 'kw'가 아니고 20세 이상이 아닙니다.</li>
	</c:otherwise>
</c:choose>
</ul>

</body>
</html>