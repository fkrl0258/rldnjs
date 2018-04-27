<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>

<%
	String idValue = request.getParameter("id");

	Connection conn = null;
	PreparedStatement pstmtItem = null;
	PreparedStatement pstmtDetail = null;
	
	String jdbcDriver = "jdbc:oracle:thin:@istudy.iptime.org:7000:ORCL";
	String dbUser = "KH10";
	String dbPass = "oracle";
	
	Throwable occuredException = null;
	
	try{
		int id = Integer.parseInt(idValue);
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		conn.setAutoCommit(false);
		
		pstmtItem = conn.prepareStatement("insert into ITEM0258 values (?,?)");
		pstmtItem.setInt(1, id);
		pstmtItem.setString(2, "��ǰ �̸� " + id);
		pstmtItem.executeUpdate();
		
		if(request.getParameter("error") != null){
			throw new Exception("�ǵ��� ���� �߻�");
		}
		
		pstmtDetail = conn.prepareStatement("insert into ITEM_DETAIL0258 values (?,?)");
		pstmtDetail.setInt(1, id);
		pstmtDetail.setString(2, "��ǰ �̸� " + id);
		pstmtDetail.executeUpdate(); 
		
		conn.commit();
	}catch(Throwable e){
		if(conn != null){
			try{
				conn.rollback();
			}catch(SQLException ex) {}
		}
		occuredException = e;
	}finally{
		if(pstmtItem != null)
			try{ pstmtItem.close(); } catch(SQLException ex){}
		if(pstmtDetail != null)
			try{ pstmtDetail.close(); } catch(SQLException ex){}
		if(conn != null) try { conn.close(); } catch(SQLException ex){}
	}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�� �Է�</title>
</head>
<body>

<% if(occuredException != null ) { %>
������ �߻��Ͽ���: <%= occuredException.getMessage() %>
<% } else { %>
�����Ͱ� ���������� ��
<% } %>

</body>
</html>