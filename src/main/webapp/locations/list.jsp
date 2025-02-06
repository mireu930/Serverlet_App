<%@page import="java.util.ArrayList"%>
<%@page import="com.mireu.app.locations.LocationDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.mireu.app.locations.LocationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
LocationDAO dao = new LocationDAO();
List<LocationDTO> list = dao.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	border: 1px solid black;
	margin: 0 auto;
	border-collapse: collapse;
}

table td, table th {
	border: 1px solid black;
}

tbody a {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<h1>Location list</h1>
	<table>
		<thead>
			<tr>
				<th>지역아이디</th>
				<th>주소</th>
			</tr>
		</thead>
		<tbody>
			<%for (int i = 0; i < list.size(); i++) {%>
			<tr>
				<td><a
					href="detail.jsp?location_id=<%= list.get(i).getLocation_id()%>"><%=list.get(i).getLocation_id()%></a></td>
				<td>
					<%= list.get(i).getStreeat_address()%></td>
			</tr>
			<%}%>
		</tbody>
	</table>
	<a href = "./add.jsp">지역등록</a>
</body>
</html>