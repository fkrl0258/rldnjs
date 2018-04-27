<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.io.*"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>기본 객체 사용하여 지원 읽기</title>
</head>
<body>

<%
	String resourcePath = "mar29/message/notice/notice.txt";
%>
자원의 실제 경로:<br>
<%= application.getRealPath(resourcePath) %>
<br>
-----------<br>
<%= resourcePath %>의 내용<br>
-----------<br>
<%
	BufferedReader br = null;
	char[] buff = new char[512];
	int len = -1;

	try{
		br = new BufferedReader(new InputStreamReader(application.getResourceAsStream(resourcePath) ));
		while( (len = br.read(buff)) != -1) {
			out.println(new String(buff, 0, len));
		}
	}catch(IOException ex){
		out.println("예외 발생: "+ex.getMessage());
	}finally{
		if (br != null) try { br.close(); } catch(IOException ex) {}
	}
%>

</body>
</html>