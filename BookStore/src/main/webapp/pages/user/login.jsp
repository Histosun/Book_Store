<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log in</title>
<%@include file="/include/ImportSource.jsp" %>
</head>
<body>
		<div id="login_header">
			<img class="logo_img" alt="" src="static/img/logo.png" >
		</div>
		
			<div class="login_banner">
			
				<div id="l_content">
					<span class="login_word">Welcome</span>
				</div>
				
				<div id="content">
					<div class="login_form">
						<div class="login_box">
							<div class="tit">
								<h1>book store member</h1>
								<a href="pages/user/regist.html">Sign up now</a>
							</div>
							<div class="msg_cont">
								<b></b>
								<span class="errorMsg">
									${loginMsg==null?"Please input username and password":loginMsg}
								</span>
									
							</div>
							<div class="form">
								<form action="customer/UserServlet" method="post">
									<input type="hidden" name="method" value="login"/>
									<label>Username:</label>
									<input class="itxt" type="text" placeholder="username" autocomplete="off" tabindex="1" name="username"
										value= "${param.username}" />
									<br />
									<br />
									<label>Password：</label>
									<input class="itxt" type="password" placeholder="password" autocomplete="off" tabindex="1" name="password" />
									<br />
									<br />
									<input type="submit" value="log in" id="sub_btn" />
								</form>
							</div>
							
						</div>
					</div>
				</div>
			</div>
</body>
</html>