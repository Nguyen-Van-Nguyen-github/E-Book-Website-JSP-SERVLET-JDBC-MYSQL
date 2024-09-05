<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="all_component/allCss.jsp"%>

<%@ page import="com.DAO.BookDAOImpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.util.*"%>
<%@ page import="com.entity.BookDtls"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Recent Book</title>

<style type="text/css">
.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>

</head>
<body>

	<%
		User u = (User)session.getAttribute("userobj");
	%>
	
	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid">
		<div class="row p-3">
			<%
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao2.getAllRecentBook();
			for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho mt-3">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 100px; height: 150px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							<%
							if (b.getBookCategory().equals("Old")) {
							%>
							Categories:
							<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%>
								<i class="fas fa-dollar-sign"></i></a>
						</div>
						<%
						} else {
						%>
						Categories:
						<%=b.getBookCategory()%></p>
						<div class="row">

							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2"> <i
								class="fas fa-cart-plus"></i>Add Cart
							</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%> &&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-2"> <i
								class="fas fa-cart-plus"></i>Add Cart
							</a>
							<%
							}
							%>


							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> 
							
							<a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%> <i
								class="fas fa-dollar-sign"></i></a>
						</div>
						<%
						}
						%>



					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>
</body>
</html>