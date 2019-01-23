<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qregister</title>
</head>
<body style="background:url(image/2.jpg) ;background-size:1500px 680px; background-position-x:50%">
<br>
<br>
<br>
<br>
<%
String user=request.getParameter("user");
String cname=request.getParameter("cname");
String cemail=request.getParameter("cemail");
String fname=request.getParameter("fname");
%>
<center>
		<h1 style="color:red;font-size:42px">New interviewer</h1>
		<br>
		
		<form action="qupdate.jsp" method="post">
		<input type="hidden" name="user" value=<%=user %>>
		<input type="hidden" name="cname" value=<%=cname %>>
		<input type="hidden" name="cemail" value=<%=cemail %>>
		<input type="hidden" name="fname" value=<%=fname %>>
		<table border="0">
		<tr>
		<td>Username:</td>
		<td><input type="text" name="username" style="width:230px" value="within 16 chars and start with a letter" maxlength="16" onfocus="if(this.value == 'within 16 chars and start with a letter') this.value =''"></td>
		</tr>
		<td>Email:</td>
		<td><input type="text" name="email" style="width:230px" value="example@sap.com" maxlength="30" onfocus="if(this.value == 'example@sap.com') this.value =''"></td>
		</tr>		
		</table>
			<input type="submit" value="register">
		</form>

</center>
</body>
</html>