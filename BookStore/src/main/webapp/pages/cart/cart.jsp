<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>购物车</title>
<base href="http://localhost:8080/BookStore02/">
<link type="text/css" rel="stylesheet" href="static/css/style.css" >
</head>
<body>
	
	<div id="header">
			<img class="logo_img" alt="" src="static/img/logo.gif" >
			<span class="wel_word">Cart</span>
			<div>
				<span>Welcome<span class="um_span">韩总</span>光临尚硅谷书城</span>
				<a href="pages/order/order.html">我的订单</a>
				<a href="index.html">注销</a>&nbsp;&nbsp;
				<a href="index.html">返回</a>
			</div>
	</div>
	
	<div id="main">
	
		<table>
			<tr>
				<td>Product name</td>
				<td>Amount</td>
				<td>Price</td>
				<td>金额</td>
				<td>操作</td>
			</tr>		
			<tr>
				<td>时间简史</td>
				<td>2</td>
				<td>30.00</td>
				<td>60.00</td>
				<td><a href="#">删除</a></td>
			</tr>	
			
			<tr>
				<td>母猪的产后护理</td>
				<td>1</td>
				<td>10.00</td>
				<td>10.00</td>
				<td><a href="#">删除</a></td>
			</tr>	
			
			<tr>
				<td>百年孤独</td>
				<td>1</td>
				<td>20.00</td>
				<td>20.00</td>
				<td><a href="#">删除</a></td>
			</tr>		
			
		</table>
		
		<div class="cart_info">
			<span class="cart_span"><span class="b_count">4</span>products int cart</span>
			<span class="cart_span">total amount<span class="b_price">90.00</span>元</span>
			<span class="cart_span"><a href="#">clean cart</a></span>
			<span class="cart_span"><a href="pages/cart/checkout.html">去结账</a></span>
		</div>
	
	</div>
</body>
</html>