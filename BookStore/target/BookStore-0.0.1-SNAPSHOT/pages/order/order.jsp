<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>æçè®¢å</title>
<%@include file="/include/ImportSource.jsp" %>
<style type="text/css">
	h1 {
		text-align: center;
		margin-top: 200px;
	}
</style>
</head>
<body>
	
	<div id="header">
			<img class="logo_img" alt="" src="static/img/logo.png" >
			<span class="wel_word">MyOrder</span>
			<%@include file="/include/LoginMenu.jsp" %>
	</div>
	
	<div id="main">
		
		<table>
			<tr>
				<td>Date</td>
				<td>Amount</td>
				<td>State</td>
				<td>Description</td>
			</tr>		
			<tr>
				<td>2015.04.23</td>
				<td>90.00</td>
				<td>In production</td>
				<td><a href="#">learn more</a></td>
			</tr>	
			
			<tr>
				<td>2015.04.20</td>
				<td>20.00</td>
				<td>In delivery</td>
				<td><a href="#">learn more</a></td>
			</tr>	
			
			<tr>
				<td>2014.01.23</td>
				<td>190.00</td>
				<td>Delivered</td>
				<td><a href="#">learn more</a></td>
			</tr>		
		</table>
		
	
	</div>
	
	<div id="bottom">
		<span>
			å°ç¡è°·ä¹¦å.Copyright &copy;2015
		</span>
	</div>
</body>
</html>