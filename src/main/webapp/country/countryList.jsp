<%@page import="com.mireu.app.countries.CountryDTO"%>
<%@page import="com.mireu.app.countries.CountryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	CountryDAO countryDAO = new CountryDAO();
    	CountryDTO countryDTO = new CountryDTO();
    	
    	countryDTO.setCountry_id("AR");
    	
    	
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h3 {
		text-align: center;
	}

	table {
		border: 1px solid black;
		margin: 0 auto;
		border-collapse: collapse;
	}
	
	table th, table td {
		border: 1px solid black;
	}
</style>
</head>
<body>
	<h3>나라 리스트</h3>
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
		<td>1</td><td>2</td><td>3</td>
		</tr>
	</tbody>
	</table>

<a href = "./countryAdd.jsp">지역 추가하기</a>
</body>
</html>