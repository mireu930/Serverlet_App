<%@page import="com.mireu.app.departments.DepartmentDTO"%>
<%@page import="com.mireu.app.departments.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
	DepartmentDAO dao = new DepartmentDAO();
	request.getParameter("department_id");
	DepartmentDTO dto = new DepartmentDTO();
	
	int result = dao.add(dto);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>부서 등록 진행</h1>
	
</body>
</html>