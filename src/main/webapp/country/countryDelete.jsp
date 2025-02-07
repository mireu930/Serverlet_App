<%@page import="com.mireu.app.countries.CountryDAO"%>
<%@page import="com.mireu.app.countries.CountryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	CountryDTO countryDTO = new CountryDTO();
    	CountryDAO countryDAO = new CountryDAO();
    	
    	String id = request.getParameter("country_id");
    	
    	countryDTO.setCountry_id(id);
    	
    	int result = countryDAO.delete(countryDTO);
    	
    	String message = "실패했습니다.";
    	
    	if(result > 0) {
    		message = "삭제성공했습니다.";	
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><%= message %></h3>
	<a href ="/">Home</a>
	<a href ="./countryList.jsp">list</a>
</body>
</html>