<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "./countryAddProcess.jsp" method = "post">
		<input type = "text" name = "country_id">
		<input type = "text" name = "country_name">
		<input type = "text" name = "region_id">
		
		<input type = "submit" value = "등록">
	</form>
</body>
</html>