<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.mireu.app.countries.CountryDTO"%>
<%@page import="com.mireu.app.countries.CountryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    	CountryDAO countryDAO = new CountryDAO();
    	CountryDTO countryDTO = new CountryDTO();
    	
    	List<CountryDTO> list = countryDAO.getList(countryDTO);
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
.add {
	text-align: center;
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
			<%for(int i=0;i<list.size();i++){ %>
			<tr>
				<td><a
					href="./countryDetail.jsp?country_id=<%= list.get(i).getCountry_id()%>"><%= list.get(i).getCountry_id() %></a></td>
				<td><%= list.get(i).getCountry_name()%></td>
				<td><%= list.get(i).getRegion_id() %></td>
			</tr>
			<%} %>
		</tbody>
	</table><br>
<div class="add">
	<a href="./countryAdd.jsp">지역 추가하기</a>
</div>
</body>
</html>