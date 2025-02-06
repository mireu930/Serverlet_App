<%@page import="com.mireu.app.departments.DepartmentDTO"%>
<%@page import="com.mireu.app.departments.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
     DepartmentDAO departmentDAO = new DepartmentDAO();
    DepartmentDTO departmentDTO = new DepartmentDTO();
    
    String id = request.getParameter("location_id");
    departmentDTO.setLocation_id(Integer.parseInt(id));
    
    int result = departmentDAO.delete(departmentDTO);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>삭제</h3>
	
	<%if(result > 0) {%>
	<h3>삭제되었습니다</h3>
	<%}else {%>
	<h3>실패했습니다</h3>
	<% } %>
	<a href = "/">Home</a>
</body>
</html>