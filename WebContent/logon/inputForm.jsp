<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="color.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script language="javaScript">

	
	function checkIt(){
		var userinput=eval("document.userinput");
		if(!userinput.id.value){
			alert("ID�� �Է��ϼ���");
			return false;			
		}
		
		if(!userinput.passwd.value){
			alert("password�� �Է��ϼ���");
			return false;
		}
		if(!userinput.username.value){
			alert("username�� �Է��ϼ���");
			return false;
		}
		if(!userinput.jmin1.value || !userinput.jmin2.value)
			{
				alert("�ֹι�ȣ�� �Է��ϼ���");
				return false;
			}		
	}
	
	// ���̵� �ߺ� ���θ� �Ǵ�
	function openConfirmid(userinput) {
		// ���̵� �Է��ߴ��� �˻�
		if(userinput.id.value == "") {
			alert("���̵� �Է��ϼ���");
			return;
		}
		//ur1�� ����� �Է� id�� �����մϴ�.
		url = "confirmId.jsp?id=" + userinput.id.value;
		
		//���ο� �����츦 ���ϴ�. 
		open(url, "confirm", "toolbar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no, width=300, height=200");
	}
	/*function zipCheck(){
		var width = 500;
		var height = 600;
		daum.postcode.load(function(){
			new daum.Postcode({
				oncomplete: function(date){
					//�˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ� 
					$("#zipAddr").val(data.address);
					$("#addr").val(data.buildingName);
				}
			}).open({
				//left: (window.screen.width / 2)-(width / 2),
				//top: (window.screen.height / 2)-(height / 2)
			});
		});
	}*/
	function zipCheck(){ //������ȣ �߰�
			url="ZipCheck.jsp?check=y";
		window.open(url,"post","toolbar=no, width=500, height=300, directories=no,status=yes,scrollbars=yes,menubar=no");
	}
</script>

<body bgcolor="<%=bodyback_c %>">

<form method="post" action="inputPro.jsp" name="userinput" onSubmit="return checkIt()">
	<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
		<tr>
		<td colspan="2" height="39" align="center" bgcolor="<%=value_c %>">
			<font size="+1"><b>ȸ������</b></font></td>
		</tr>
		<tr>
		<td width="200">����� ID</td>
		<td width="400">
			<input type="text" name="id" size="10" maxlength="12">
			<input type="button" name="confirm_id" value="ID�ߺ�Ȯ��" OnClick="openConfirmid(this.form)">
		</td>
		</tr>
		<tr>
		<td width="200">��й�ȣ</td>
		<td width="400">
			<input type="password" name="passwd" size="15" maxlength="12">
		</td>
		</tr>
		<td width="200">��й�ȣ Ȯ��</td>
		<td width="400">
			<input type="password" name="passwd2" size="15" maxlength="12">
		</td>
		</tr>
		
		<tr>
		<td width="200" bgcolor="<%=value_c %>"><b>�������� �Է�</b></td>
		<td width="400" bgcolor="<%=value_c %>"> </td>
		</tr>
		<td width="200">����� �̸�</td>
		<td width="400">
			<input type="text" name="name" size="15" maxlength="10">
		</td>
		</tr>
		<tr>
		<td width="200">�ֹε�Ϲ�ȣ</td>
		<td width="400">
			<input type="text" name="jumin1" size="7" maxlength="6">
			-<input type="text" name="jumin2" size="7" maxlength="7">
		</td>
	  	</tr>
	  	<tr>
		<td width="200">E-mail</td>
		<td width="400">
			<input type="text" name="email" size="40" maxlength="30">
		</td>
	  	</tr>
	  	<tr>
		<td width="200">Blog</td>
		<td width="400">
			<input type="text" name="blog" size="60" maxlength="50">
		</td>
	  	</tr>
	  	
	  	<tr> 
	  		<td width="200">������ȣ</td>
	  		<td>
	  	    <input type="text" name="zipcode" size="7">
	  	   	<input type="button" value="������ȣã��" onClick="zipCheck()">
	  	   	������ȣ�� �˻� �ϼ���.</td>
	  	 </tr>
	  	 <tr>
	  	 	<td>�ּ�</td>
	  	 	<td>
	  	 		<input type="text" name="address" size="70">
	  	 		�ּҸ� ���� �ּ���.</td>
	  	<tr>
	  	<td colspan="2" align="center" bgcolor="<%=value_c %>">
	  		<input type="submit" name="confirm" value="��   ��">
	  		<input type="reset" name="reset" value="�ٽ��Է�">
	  		<input type="button" value="���Ծ���" onclick="javascript:window.location='main.jsp'">
	  	</td>
	  	</tr>
	  </table>
</form>
</body>
</head>
<body>

</body>
</html>