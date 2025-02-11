<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String p1 = request.getParameter("p1");
    	String p2 = request.getParameter("p2");
    	String p3 = request.getParameter("p3");
    	String p4 = request.getParameter("p4");
    	String[] p5 = request.getParameterValues("p5");
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>param1:<%= p1 %> </h3>
	<h3>param2:<%= p2 %> </h3>
	<h3>param3:<%= p3 %> </h3>
	<h3>param4:<%= p4 %> </h3>
	<% for(String a: p5) {%>
	<h3>param5:<%= a %> </h3>
	<%} %>
</body>
</html>