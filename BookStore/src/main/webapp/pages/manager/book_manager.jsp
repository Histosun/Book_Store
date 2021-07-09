<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage library</title>
<%@include file="/include/ImportSource.jsp" %>
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
			<tr>
				<td>时间简史</td>
				<td>20.00</td>
				<td>霍金</td>
				<td>200</td>
				<td>400</td>
				<td><a href="book_edit.html">modify</a></td>
				<td><a href="#">delete</a></td>
			</tr>	
			
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="book_edit.html">Add books</a></td>
			</tr>	
		</table>
	</div>
	
</body>
</html>