<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Book</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body>

	<%
		User u = (User) session.getAttribute("userobj");
	%>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid"></div>
	<div class="row p-3">
		<%
			String ch = request.getParameter("ch");
			BookDaoImpl dao2 = new BookDaoImpl(DBConnect.getConn());
			List<BookDetails> list2 = dao2.getBookBySerch(ch);
			for (BookDetails b : list2) {
		%>
		<div class="col-md-3">
			<div class="card crd-ho m-3">
				<div class="card-body text-center">
					<img alt="" src="book/<%=b.getPhotoName()%>"
						style="width: 100px; height: 150px;" class="img-thumblin">
					<p><%=b.getBookName()%></p>
					<p><%=b.getAuthor()%></p>
					<p>
						<%
							if (b.getBookCategory().equals("Old")) {
						%>
						Categories:<%=b.getBookCategory()%></p>
					<div class="row">
						<a href="view_books.jsp?bid=<%=b.getBookId()%>"
							class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
							class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%> <i
							class="fas fa-rupee-sign"></i></a>
					</div>
					<%
						} else {
					%>
					Categories:<%=b.getBookCategory()%></p>
					<div class="row">

						<%
							if (u == null) {
						%>
						<a href="login.jsp" class="btn btn-danger btn-sm ml-2"> Add
							Cart</a>
						<%
							} else {
						%>
						<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
							class="btn btn-danger btn-sm ml-2"> Add Cart</a>
						<%
							}
						%>

						<a href="view_books.jsp?bid=<%=b.getBookId()%>"
							class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
							class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%> <i
							class="fas fa-rupee-sign"></i></a>
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
</body>
</html>