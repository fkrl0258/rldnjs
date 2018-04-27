<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="color.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script language="javaScript">

	
	function checkIt(){
		var userinput=eval("document.userinput");
		if(!userinput.id.value){
			alert("ID를 입력하세요");
			return false;			
		}
		
		if(!userinput.passwd.value){
			alert("password를 입력하세요");
			return false;
		}
		if(!userinput.username.value){
			alert("username을 입력하세요");
			return false;
		}
		if(!userinput.jmin1.value || !userinput.jmin2.value)
			{
				alert("주민번호를 입력하세요");
				return false;
			}		
	}
	
	// 아이디 중복 여부를 판다
	function openConfirmid(userinput) {
		// 아이디를 입력했는지 검사
		if(userinput.id.value == "") {
			alert("아이디를 입력하세요");
			return;
		}
		//ur1과 사용자 입력 id를 조합합니다.
		url = "confirmId.jsp?id=" + userinput.id.value;
		
		//새로운 윈도우를 엽니다. 
		open(url, "confirm", "toolbar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no, width=300, height=200");
	}
	/*function zipCheck(){
		var width = 500;
		var height = 600;
		daum.postcode.load(function(){
			new daum.Postcode({
				oncomplete: function(date){
					//팝업에서 검색결과 항목을 클릭했을때 실행할 코드 
					$("#zipAddr").val(data.address);
					$("#addr").val(data.buildingName);
				}
			}).open({
				//left: (window.screen.width / 2)-(width / 2),
				//top: (window.screen.height / 2)-(height / 2)
			});
		});
	}*/
	function zipCheck(){ //우편번호 추가
			url="ZipCheck.jsp?check=y";
		window.open(url,"post","toolbar=no, width=500, height=300, directories=no,status=yes,scrollbars=yes,menubar=no");
	}
</script>

<body bgcolor="<%=bodyback_c %>">

<form method="post" action="inputPro.jsp" name="userinput" onSubmit="return checkIt()">
	<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
		<tr>
		<td colspan="2" height="39" align="center" bgcolor="<%=value_c %>">
			<font size="+1"><b>회원가입</b></font></td>
		</tr>
		<tr>
		<td width="200">사용자 ID</td>
		<td width="400">
			<input type="text" name="id" size="10" maxlength="12">
			<input type="button" name="confirm_id" value="ID중복확인" OnClick="openConfirmid(this.form)">
		</td>
		</tr>
		<tr>
		<td width="200">비밀번호</td>
		<td width="400">
			<input type="password" name="passwd" size="15" maxlength="12">
		</td>
		</tr>
		<td width="200">비밀번호 확인</td>
		<td width="400">
			<input type="password" name="passwd2" size="15" maxlength="12">
		</td>
		</tr>
		
		<tr>
		<td width="200" bgcolor="<%=value_c %>"><b>개인정보 입력</b></td>
		<td width="400" bgcolor="<%=value_c %>"> </td>
		</tr>
		<td width="200">사용자 이름</td>
		<td width="400">
			<input type="text" name="name" size="15" maxlength="10">
		</td>
		</tr>
		<tr>
		<td width="200">주민등록번호</td>
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
	  		<td width="200">우편번호</td>
	  		<td>
	  	    <input type="text" name="zipcode" size="7">
	  	   	<input type="button" value="우편번호찾기" onClick="zipCheck()">
	  	   	우편번호를 검색 하세요.</td>
	  	 </tr>
	  	 <tr>
	  	 	<td>주소</td>
	  	 	<td>
	  	 		<input type="text" name="address" size="70">
	  	 		주소를 적어 주세요.</td>
	  	<tr>
	  	<td colspan="2" align="center" bgcolor="<%=value_c %>">
	  		<input type="submit" name="confirm" value="등   록">
	  		<input type="reset" name="reset" value="다시입력">
	  		<input type="button" value="가입안함" onclick="javascript:window.location='main.jsp'">
	  	</td>
	  	</tr>
	  </table>
</form>
</body>
</head>
<body>

</body>
</html>