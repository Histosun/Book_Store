<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
									<%
										String errMsg=(String)request.getAttribute("loginMsg");
										String username=(String)request.getParameter("username");
										if(errMsg==null){
											errMsg="Please input username and password";
										}
									%>
									<%=errMsg %>
									
							</div>
							<div class="form">
								<form action="customer/LoginServlet" method="post">
									<label>Username:</label>
									<input class="itxt" type="text" placeholder="username" autocomplete="off" tabindex="1" name="username"
										value= "<%=username==null?"":username %>" />
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