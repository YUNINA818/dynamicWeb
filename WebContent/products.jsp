<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>  
<%@ page import="dto.Product" %>  
<%@ page import="dao.ProductRepository" %>  

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"></jsp:useBean>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>

		<jsp:include page="menu.jsp"></jsp:include>
		<div class="jumbotron">
			<div class = "container">
				<h1 class= "display-3">
				상품목록
				</h1>
			</div>
		</div>

	<%
	ProductRepository dao = ProductRepository.getInstance();
	ArrayList <Product> listOfProducts = dao.getAllProducts();
	%>	
	<div class="container">
		<div class="row" align="center">
		<%
			for(int i=0; i< listOfProducts.size(); i++){
				Product product = listOfProducts.get(i);
			
			%>
		<div class="col-md-4">
			<!--  <img src="C:/upload/<%=product.getFilename()%>" style="width:80%"> -->
			<img src="./resources/images/<%=product.getFilename()%>" style="width:80%">
			<h3> <%= product.getPname() %></h3>
			<p><br> <%= product.getDescription() %></p>
			<p>품목 : <%= product.getCategory() %>
			<br>컨디션 : <%= product.getCondition() %> 
			<br>가격 : <%= product.getUnitPrice() %> 원 </p>	
			<p><a href="./product.jsp?id=<%=product.getProductId() %>" class="btn btn-secondary" role="button"> 상세 정보 &raquo; </a>	
		</div>
		<%
		}
	%>
		</div>
	</div>

		<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>