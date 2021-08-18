<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order management</title>
<%@include file="/include/ImportSource.jsp" %>
</head>
<body>
	
	<div id="header">
			<img class="logo_img" alt="" src="static/img/logo.png" >
			<span class="wel_word">Order management system</span>
			
			<%@include file="/include/ManagerMenu.jsp" %>
	</div>
	
	<div id="main">
		<table>
			<tr>
				<td>Date</td>
				<td>Amount</td>
				<td>Details</td>
				<td>Ship</td>
				
			</tr>		
			<tr>
				<td>2015.04.23</td>
				<td>90.00</td>
				<td><a href="#">learn more</a></td>
				<td><a href="#">Click to ship</a></td>
			</tr>	
			
			<tr>
				<td>2015.04.20</td>
				<td>20.00</td>
				<td><a href="#">learn more</a></td>
				<td>shipped</td>
			</tr>	
			
			<tr>
				<td>2014.01.23</td>
				<td>190.00</td>
				<td><a href="#">learn more</a></td>
				<td>Waiting for receipt</td>
			</tr>		
		</table>
	</div>
</body>
</html>