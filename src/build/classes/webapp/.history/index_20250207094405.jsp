<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	* {
  margin: 0;
  padding: 0;
}
.header{
  height: 167px;
  background-color: blue;
}
.header_logo_wrap {
  background-color:white;
}

.header_logo{
  height: 52px;
  width: 920px;
  background-color:white;
  display: flex;
  margin: 0 auto;
}

.header_logo img {
  padding: 13px;
}

.header_logo_title {
  /* height: 52px; */
  width: 15%;
  /* display: flex; */
  margin: 10px 0 10px 2px;
}

.header_logo_title ul{
  display: flex;
  list-style: none;
  /* background-color:red; */
  justify-content: space-between;
  
}

.header_logo_in ul {
  display: flex;
  list-style: none;
  /* background-color:red; */
  justify-content: space-between;
}

.header_logo a {
  text-decoration: none;
}

</style>
</head>
<body>
	<h1>Welcome Home page</h1>
	<h1>Team Mate Add</h1>
	<h3>vs code</h3>
	<h3>vs code2</h3>
	<h3>vscode3</h3>

	<a href = "/departmets/departmentList.jsp">Department list</a><br>
	<a href = "locations/locationList.jsp">Location list</a><br>
	<a href = "./naver_sports/sports.jsp">������</a><br>
	<a href = "./country/countryList.jsp">Country list</a>
	
	<imag src="./naver_sports/images/���̹�.svg" >


		<div class = "header">
			<div class="header">
				<div class="header_logo_wrap">
					<div class="header_logo">
						<img src="./naver.sports/images/네이버.svg" height="25">
						
						<div class="header_logo_in">
							<ul>
								<li><a id="log" href="#">로그인</a></li>
								<li><a id="menu" href="#"><img src="./naver.sports/images/메뉴.svg" height="25"></a></li>
							</ul>
						</div>
					</div>
				</div>
		</div>
		<div class = "content">

		</div>
		<div class = "footer">

		</div>

</body>
</html>