<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage library</title>
<%@include file="/include/ImportSource.jsp" %>
<script type="text/javascript">

	$(function(){
		$(".delete").click(function(){
			var td=$(this).parent().parent().children(":first");
			
			confirm("Are you sure to delete "+);
			
			return false;
		});
	})

</script>
</head>
<body>
	
	<div id="header">
			<img class="logo_img"  src="static/img/logo.png" >
			<span class="wel_word">Library management system</span>
			
			<%@include file="/include/ManagerMenu.jsp" %>
	</div>
	
	<div id="main">
		<table>
			<tr>
				<td>Name</td>
				<td>Price</td>
				<td>Author</td>
				<td>Sales</td>
				<td>In stock</td>
				<td colspan="2">Operating</td>
			</tr>
			<c:forEach var="book" items="${requestScope.list}">
				<tr>
					<td>${book.title}</td>
					<td>${book.price}</td>
					<td>${book.author}</td>
					<td>${book.sales}</td>
					<td>${book.stock}</td>
					<td><a href="book_edit.html">modify</a></td>
					<td><a class="delete" href="#">delete</a></td>
				</tr>
			</c:forEach>
			
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="pages/manager/book_edit.jsp">Add books</a></td>
			</tr>	
		</table>
	</div>
	
</body>
</html>