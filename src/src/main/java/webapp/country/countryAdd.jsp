<%@page import="com.mireu.app.countries.CountryDTO"%>
<%@page import="com.mireu.app.countries.CountryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
  
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "./countryAddProcess.jsp" method = "post">
		나라id <input type = "text" name = "country_id"><br>
		나라이름<input type = "text" name = "country_name"><br>
		지역id <input type = "text" name = "region_id">
		
		<input type = "submit" value = "등록">
	</form>
	<a href ="/">Home</a>
	<a href ="./countryList.jsp">list</a>
</body>
</html>