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
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/list.css">
<style>
	.departmentList_add{
		margin: 5px 0 5px 10px;
	}
</style>
</head>
<body>
<%@ include file="/template/header.jsp" %>
  <section class = "wrap_left content">
    <%@ include file = "/template/nav.jsp" %>
    <nav class = " right content_right">
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
					href="departmentDetail.jsp?department_id=<%= ar.get(i).getDepartment_id()%>">
						<%= ar.get(i).getDepartment_name()%></a></td>
			</tr>
			<%}%>
		</tbody>
	</table>
	<div class = "departmentList_add">
		<a href="departmentAdd.jsp">부서등록</a>
	</div>
    </nav>
  </section>
  <%@ include file = "../template/footer.jsp" %>

	

</body>
</html>