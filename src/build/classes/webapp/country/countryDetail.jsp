<%@page import="com.mireu.app.countries.CountryDTO"%>
<%@page import="com.mireu.app.countries.CountryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	CountryDTO countryDTO = new CountryDTO();
    	CountryDAO countryDAO = new CountryDAO();
    	
    	String id = request.getParameter("country_id");
    	countryDTO.setCountry_id(id);
    	
    	countryDTO = countryDAO.getDetail(countryDTO);
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		border: 1px solid black;
		border-collapse: collapse;
	}
	
	table th, table td {
		border: 1px solid black;
	}
</style>
</head>
<body>
	<table>
	<thead>
		<tr>
			<th>나라id</th>
			<th>나라이름</th>
			<th>지역id</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><%= countryDTO.getCountry_id() %></td>
			<td><%= countryDTO.getCountry_name() %></td>
			<td><%= countryDTO.getRegion_id() %></td>
			<td><a href = ./countryUpdate.jsp?country_id=<%= countryDTO.getCountry_id() %>>수정</a></td>
			<td><a href = ./countryDelete.jsp?country_id=<%= countryDTO.getCountry_id() %>>삭제</a></td>
		</tr>
	</tbody>
	</table>
	<a href ="/">Home</a>
	<a href ="./countryList.jsp">list</a>
	
</body>
</html>