<%@page import="com.mireu.app.departments.DepartmentDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.mireu.app.departments.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
	//스크립툴릿 자바코드안에 사용하는 
	DepartmentDAO dao = new DepartmentDAO();
	List<DepartmentDTO> ar = dao.getList();
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	border: 1px soild black;
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
	<h1>Department list</h1>
	<h3>표현식: 자바의 변수나 값을 html로 출력할때 사용</h3>
	<table>
		<thead>
			<tr>
				<th>부서번호</th>
				<th>부서명</th>
			</tr>
		</thead>
		<tbody>
			<% for(int i=0;i<ar.size();i++){%>
			<tr>
				<td><%= ar.get(i).getDepartment_id()%></td>
				<td><a
					href="detail.jsp?department_id=<%= ar.get(i).getDepartment_id()%>">
						<%= ar.get(i).getDepartment_name()%></a></td>
			</tr>
			<%}%>
		</tbody>
	</table>

	<div>
		<a href="add.jsp">부서등록</a>
	</div>
</body>
</html>