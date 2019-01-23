<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background:url(image/2.jpg) ;background-size:1000px 540px; background-position-x:50%">
<%
String uname=request.getParameter("uname");
%>
<a href="CandidateServlet2?uname=<%=uname %>" style="position:absolute;left:1;top:1; color:#000000" ><center><img src="image/0.jpg" style="opacity:0.8" width=30px><br>Back</center></a>

<br>
<br>
<br>
<br>
<br>
<br>
	<center>
		<h1 style="color:red;font-size:42px">Search</h1>
		<form action="SearchServlet2" method="post">
		<input type="hidden" name="uname" value=<%=uname%>>
		<table border="0">
		<tr>
			<td>Key words:</td>
			<td><input type="text" name="key" style="width:165px"  maxlength="30" ></td>
		</tr>

		</table>
			<input type="submit" value="   search   "> 
			<input type="reset" value="   reset   "> 
		</form>
			
	</center>



</body>
</html>