<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			
			<%@include file="/include/ManagerMenu.jsp" %>
		</div>
		
		<div id="main">
			<form action="book_manager.html">
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
						<td><input name="book_name" type="text" value="时间简史"/></td>
						<td><input name="book_price" type="text" value="30.00"/></td>
						<td><input name="book_author" type="text" value="霍金"/></td>
						<td><input name="book_sales" type="text" value="200"/></td>
						<td><input name="book_stock" type="text" value="300"/></td>
						<td><input type="submit" value="submit"/></td>
					</tr>	
				</table>
			</form>
		</div>
</body>
</html>