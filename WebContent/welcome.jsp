<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	
<meta charset="UTF-8">
<title> Welcome </title>
</head>
<body>
	<%@ include file = "menu.jsp" %>
	
		<%! String greeting = "Welcom to Web Shopping Mall"; String tagline = "Welcome to Web Market"; %>
		<div class="jumbotron">
			<div class = "container">
				<h1 class= "display-3">
					<%=greeting %>
				</h1>
			</div>
		</div>
		<div class="container">
			<div class = "text-center">
				<h3>
					<%=tagline %>
			<br>		
			<br>
			<br>
			<a href="./products.jsp" class="btn btn-secondary" role="button"> 제품 정보 &raquo; </a>	
					
					
				</h3>
			</div>
		</div>

		
	<%@ include file = "footer.jsp" %>	
	
</body>
</html>