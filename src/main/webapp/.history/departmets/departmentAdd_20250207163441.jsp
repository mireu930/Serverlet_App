<%@page import="com.mireu.app.departments.DepartmentDTO"%>
<%@page import="com.mireu.app.departments.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	DepartmentDAO dao = new DepartmentDAO();
	DepartmentDTO dto = new DepartmentDTO();
%>
<link rel="stylesheet" href="/resources/css/add.css">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>add</h3>
	<form action = "./departmentAddProcess.jsp" method ="post">
		<fieldset>
      <legend>부서번호</legend>
        <input type = "text" name = "department_name" value = "test">
    </fieldset>
    <fieldset>
      <legend>부서명</legend>
      <input type = "text" name = "manager_id" value = "test2">
    </fieldset>
      <fieldset>
        <input type = "submit" value ="등록">
      </fieldset>
				
	</form>
</body>
</html>