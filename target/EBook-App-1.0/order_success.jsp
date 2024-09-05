<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="all_component/allCss.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Success Page</title>
</head>
<body style="background-color: #f0f1f2">
	
	<%@include file="all_component/navbar.jsp"%>
	
	<div class="container text-center mt-3">
		
		<i class="fa fa-check-circle fa-5x text-success" aria-hidden="true"></i>
		<h1>Thank You</h1>
		<h2>Your Order Successfully</h2>
		<h5>With 7 Days Your Product will be Delivered In your Address</h5>
		<a href="index.jsp" class="btn btn-primary mt-3">Home</a>
		<a href="order.jsp" class="btn btn-danger mt-3">View Order</a>
	</div>
</body>
</html>