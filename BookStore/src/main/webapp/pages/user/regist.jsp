<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<base href="http://localhost:8080/BookStore/">
<%@include file="/include/ImportSource.jsp" %>
<style type="text/css">
	.login_form{
		height:420px;
		margin-top: 25px;
	}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#sub_btn").click(function(){
			var username=$("#username").val();
			var usernamePatt=/^\w{5,12}$/;
			if(!usernamePatt.test(username)){
				$(".errorMsg").text("Illegal username");		
				return false;
			}

			var password=$("#password").val();
			var passwordPatt=/^\w{5,12}$/;
			if(!passwordPatt.test(password)){
				$(".errorMsg").text("Illegal password");		
				return false;
			}

			var repwd=$("#repwd").val();
			if(repwd!=password){
				$(".errorMsg").text("Password does not match");		
				return false;
			}
			
			var email=$("#email").val();
			var emailPatt=/^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
			if(!emailPatt.test(email)){
				$(".errorMsg").text("Illegal email");
				return false;
			}
			
			alert("send regist request");
			var code=$("#code").val();
			if(code==null||code==""){
				return false;
			}
			return true;
		})
	})
</script>
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
								<h1>Register</h1>
								<span class="errorMsg"></span>
							</div>
							<div class="form">
								<form action="customer/RegistServlet" method="post">
									<label>Username：</label>
									<input class="itxt" type="text" placeholder="Please input username" autocomplete="off" tabindex="1" name="username" id="username" />
									<br />
									<br />
									<label>Password：</label>
									<input class="itxt" type="password" placeholder="Please input password" autocomplete="off" tabindex="1" name="password" id="password" />
									<br />
									<br />
									<label>Confirm：</label>
									<input class="itxt" type="password" placeholder="Confirm password" autocomplete="off" tabindex="1" name="repwd" id="repwd" />
									<br />
									<br />
									<label>Email：</label>
									<input class="itxt" type="text" placeholder="Please input email address" autocomplete="off" tabindex="1" name="email" id="email" />
									<br />
									<br />
									<label>Verify：</label>
									<input class="itxt" type="text" style="width: 150px;" id="code"/>
									<img alt="" src="static/img/code.bmp" style="float: right; margin-right: 40px">									
									<br />
									<br />
									<input type="submit" value="Register" id="sub_btn" />
									
								</form>
							</div>
							
						</div>
					</div>
				</div>
			</div>
</body>
</html>