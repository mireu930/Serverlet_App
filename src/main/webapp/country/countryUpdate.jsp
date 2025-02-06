<%@page import="com.mireu.app.countries.CountryDAO"%>
<%@page import="com.mireu.app.countries.CountryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	
    	CountryDTO countryDTO = new CountryDTO();
    	String id = request.getParameter("country_id");
    	countryDTO.setCountry_id(id);
    	
    	CountryDAO countryDAO = new CountryDAO();
    	countryDTO = countryDAO.getDetail(countryDTO);
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "./countryUpdateProcess.jsp" method = "post">
		<input type = "hidden" name = "country_id" value = "<%= countryDTO.getCountry_id()%>">
		<input type = "text" name = "country_name" value = "<%= countryDTO.getCountry_name()%>">
		<input type = "text" name = "region_id" value = "<%=countryDTO.getRegion_id()%>">
		
		<input type = "submit" value = "수정">
	</form>
	<a href ="/">Home</a>
	<a href ="./countryList.jsp">list</a>
</body>
</html>