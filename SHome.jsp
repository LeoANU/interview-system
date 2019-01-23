<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>search result</title>
</head>
<body style="background:url(image/2.jpg) ;background-size:1000px 540px; background-position-x:50%">
<a href="CandidateServlet" style="position:absolute;left:1;top:1; color:#000000" ><center><img src="image/0.jpg" style="opacity:0.8" width=30px><br>Back</center></a>

<%String key=request.getParameter("key"); %>
<center>
		<br>
		<br>
		<br>
		
		<h1 style="color:red;font-size:42px">Results</h1>
		key words:<%=key %>
		<table border="6">
		<%
		int i=1; 
		String pp=request.getParameter("page");
		if(pp==null){pp="1";}
		int p=Integer.parseInt(pp);
		
		%>
		
		  <tr>
		    <th>Candidate</th>
		    <th>Email</th>
		    <th>Resume</th>
		  </tr>
		
		  <c:forEach items="${mylist}" var="my" >
			<%if(i%3==1 & (6*p-6)<i & i<6*p+1  ){ %>
			<tr>
			<%} %>
			<%if(i%3!=0 & (6*p-6)<i & i<6*p+1){ %>
			<td>${my}</td>
			<%}
			else if((6*p-6)<i & i<6*p+1){ %>
			<td><a href="upload/${my}">${my}</a></td>
			
			<td><a href="InterviewServlet?fname=${my}">interview process</a></td>
			
			<td><a href="delete.jsp?fname=${my}">delete</a></td>
			</tr>
			<%}  
			i++;%>
		  </c:forEach>
		 </table>
		 <br><br><br><br><br><br>
		 <a href="SearchServlet?page=<%=1 %>&key=<%=key%>">first page</a>
		 <%
		 int lastp=(int)(i+3)/6;
		 if(p>1){ %>
		 <a href="SearchServlet?page=<%=p-1 %>&key=<%=key%>">page up</a>
		 <%} %>
		 Page<%=p %>
		 <%if(p<lastp){ %>
		 <a href="SearchServlet?page=<%=p+1 %>&key=<%=key%>">page down</a>
		 <%} %>
		 <a href="SearchServlet?page=<%=lastp %>&key=<%=key%>">last page</a>
</center>






</body>
</html>