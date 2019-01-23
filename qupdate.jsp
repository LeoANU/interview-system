<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>update</title>
</head>
<body>


<%
 String username=request.getParameter("username");
 String email=request.getParameter("email");
 String user=request.getParameter("user");
 String cname=request.getParameter("cname");
 String cemail=request.getParameter("cemail");
 String fname=request.getParameter("fname");
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "123456");
 Statement stmt=conn.createStatement();
 
 String queryNumberSQL="SELECT * from login where username='"+username+"'";
 ResultSet rs=stmt.executeQuery(queryNumberSQL);
 boolean u=rs.next();

	 if(u){
		%>
		<script type="text/javascript" language="javascript">
		alert("username already used");
		window.document.location.href="qregister.jsp";
		</script>
		<%
	 }else{
		String mysql="insert into login(username,password,email) values('"+username+"','123','"+email+"')";
	 	stmt.executeUpdate(mysql);
	 	
	 	%>
	 	
	 	<script type="text/javascript" language="javascript">
		alert("saved");
		window.document.location.href="interview.jsp?user=<%=user%>&cname=<%=cname%>&cemail=<%=email%>&fname=<%=fname%>";
		</script>
	 	<% 

	 }
 
		rs.close();
		stmt.close();
		conn.close();
 %>
 </body>
 </html>