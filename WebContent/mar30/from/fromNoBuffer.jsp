<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page buffer="none" %>    
<%--
	버퍼가 없을 경우 <jsp:forward> 액션 태그가
	올바르게 실행되지 않을 수도 있다.
 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

이 페이지는 from.jsp가 생성한 것입니다.

<jsp:forward page="../to/to.jsp"/>

</body>
</html>