<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action ="./study_paramPeocess.jsp" method ="get">
		<div>
		<!-- disabled 파리미터 사용 x -->
		<!-- readonly 파리미터 사용 o-->
		<input type ="text" name ="p1" value ="p1_data" readonly>
		</div>
		<div>
		<input type = "hidden" value ="hidden data" name = "p2">
		</div>
	
	<div>
		남<input type = "radio" value = "m" name = "p3">
		여<input type = "radio" value = "w" name = "p3" checked>
	</div>
	
	<div>
		<select name = "p4" >
			<option value ="kt">KT</option>
			<option value ="skt" selected>sKT</option>
			<option value ="lg">lg</option>
		</select>
	</div>
	<div>
		야구<input type= "checkbox" value ="야구" name = "p5"checked>
		축구<input type= "checkbox" value ="축구" name = "p5"checked>
		농구<input type= "checkbox" value ="농구" name = "p5"checked>
		배구<input type= "checkbox" value ="배구" name = "p5"checked>
	</div>
	
		<button type ="submit">제출</button>
	</form>

</body>
</html>