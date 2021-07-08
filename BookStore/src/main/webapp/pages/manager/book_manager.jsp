<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage library</title>
<link type="text/css" rel="stylesheet" href="../../static/css/style.css" >
</head>
<body>
	
	<div id="header">
			<img class="logo_img"  src="../../static/img/logo.png" >
			<span class="wel_word">Library management system</span>
			<div>
				<a href="book_manager.html">Library management</a>|
				<a href="order_manager.html">Order management</a>|
				<a href="../../index.html">Return to store</a>
			</div>
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
	
	<div id="bottom">
		<span>
			尚硅谷书城.Copyright &copy;2015
		</span>
	</div>
</body>
</html>