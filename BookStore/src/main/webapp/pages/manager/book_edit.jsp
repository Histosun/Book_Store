<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit library</title>
<%@include file="/include/ImportSource.jsp" %>
<style type="text/css">
	h1 {
		text-align: center;
		margin-top: 200px;
	}
	
	h1 a {
		color:red;
	}
	
	input {
		text-align: center;
	}
</style>
</head>
<body>
		<div id="header">
			<img class="logo_img" alt="" src="static/img/logo.png" >
			<span class="wel_word">Edit</span>
			
		</div>
		
		<div id="main">
			<form action="customer/BookServlet">
				<input name="method" type="hidden" value="add"/>
				<table>
					<tr>
						<td>Name</td>
						<td>Price</td>
						<td>Author</td>
						<td>Sales</td>
						<td>In stock</td>
						<td colspan="2">Operating</td>
					</tr>		
					<tr>
						<td><input name="title" type="text"/></td>
						<td><input name="price" type="text"/></td>
						<td><input name="author" type="text"/></td>
						<td><input name="sales" type="text"/></td>
						<td><input name="stock" type="text"/></td>
						<td><input type="submit" value="submit"/></td>
					</tr>	
				</table>
			</form>
		</div>
</body>
</html>