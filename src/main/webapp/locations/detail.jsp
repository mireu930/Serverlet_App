<%@page import="com.mireu.app.locations.LocationDTO"%>
<%@page import="com.mireu.app.locations.LocationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
LocationDAO dao = new LocationDAO();
LocationDTO dto = new LocationDTO();
String id = request.getParameter("location_id");
dto.setLocation_id(Integer.parseInt(id));

dto = dao.getDetail(dto);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, table th, table td {
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}
</style>
</head>
<body>
	<table>
	<%if (dto != null) {%>
		<thead>
			<tr>
				<th>디테일</th>
				<th>디테일2</th>
				<th>디테일3</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><%=dto.getLocation_id()%></td>
				<td><%=dto.getStreeat_address()%></td>
				<%} else {%>
				<h3>없는 아이디입니다.</h3>
				<%}%>
			</tr>
		</tbody>
	</table>
</body>
</html>