<%@page import="com.mireu.app.countries.CountryDAO"%>
<%@page import="com.mireu.app.countries.CountryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("country_id");
	String name = request.getParameter("country_name");
	String region = request.getParameter("region_id");
	
	CountryDTO countryDTO = new CountryDTO();
	countryDTO.setCountry_id(id);
	countryDTO.setCountry_name(name);
	countryDTO.setRegion_id(Integer.parseInt(region));
	
	CountryDAO countryDAO = new CountryDAO();
	int result = countryDAO.update(countryDTO);
	
	String message = "실패했습니다";
	
	if(result >0){
		message = "성공했습니다";	
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