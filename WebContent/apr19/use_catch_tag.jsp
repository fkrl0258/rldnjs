<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>catch �±�</title>
</head>
<body>

<c:catch var="ex">
name �Ķ������ �� = <%=request.getParameter("name") %><br>
<% if (request.getParameter("name").equals("test")){ %>
${param.name }�� test �Դϴ�.
<%} %>
</c:catch>
<p>
<c:if test="${ex != null }">
���ܰ� �߻��Ͽ����ϴ�:<br>
${ex }
</c:if>

</body>
</html>