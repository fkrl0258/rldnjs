<%@ page contentType = "text/html; charset=euc-kr" %>

    <%@ page import="java.util.Date" %>
    <%@ page trimDirectiveWhitespaces="true" %>
    <%
    Date now = new Date();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>현재 시간</title>
</head>
<body>
현재 시간:
<%= now %>
</body>
</html>