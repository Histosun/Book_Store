<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login success</title>
<%@include file="/include/ImportSource.jsp" %>
<style type="text/css">
	h1 {
		text-align: center;
		margin-top: 200px;
	}
	
	h1 a {
		color:red;
	}
</style>
</head>
<body>
		
		<div id="header">
				<img class="logo_img" alt="" src="static/img/logo.png" >
				<span class="wel_word"></span>
				<%@include file="/include/LoginMenu.jsp" %>
		</div>
		
		<div id="main">
		
			<h1>Login success! <a href="../../index.html">Go to homepage</a></h1>
	
		</div>
</body>
</html>