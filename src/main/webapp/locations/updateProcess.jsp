<%@page import="com.mireu.app.departments.DepartmentDAO"%>
<%@page import="com.mireu.app.locations.LocationDAO"%>
<%@page import="com.mireu.app.locations.LocationDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	LocationDTO locationDTO = new LocationDTO();
    	LocationDAO locationDAO = new LocationDAO();
    	
    	String id = request.getParameter("location_id");
    	String address = request.getParameter("streeat_address");
    	String code = request.getParameter("postal_code");
    	
    	locationDTO.setLocation_id(Integer.parseInt(id));
    	locationDTO.setStreeat_address(address);
    	locationDTO.setPostal_code(code);
    	
    	int result = locationDAO.update(locationDTO);
    	
    	String message = "실패";
    	
    	if(result > 0){
    		message = "성공";
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><%=message %></h3>
	<a href = "/">home</a>
	<a href = "./list.jsp"></a>
</body>
</html>