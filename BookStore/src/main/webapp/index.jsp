<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book store home</title>
<link type="text/css" rel="stylesheet" href="static/css/style.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	
	<div id="header">
			<img class="logo_img" alt="" src="static/img/logo.png" >
			<span class="wel_word">Online Book Store</span>
			<%@include file="/include/NoLoginMenu.jsp" %>
	</div>
	<div id="main">
		<div id="book">
			<div class="book_cond">
				<form action="" method="get">
					Price：$<input id="min" type="text" name="min" value="">  - 
						$<input id="max" type="text" name="max" value="">  
						<input id="search" type="submit" value="Search" />
				</form>
			</div>
			<div style="text-align: center">
				<span>您的购物车中有3件商品</span>
				<div>
					您刚刚将<span style="color: red">时间简史</span>加入到了购物车中
				</div>
			</div>
			<div class="b_list">
				<div class="img_div">
					<img class="book_img" alt="" src="static/img/default.jpg" />
				</div>
				<div class="book_info">
					<div class="book_name">
						<span class="sp1">书名:</span>
						<span class="sp2">时间简史</span>
					</div>
					<div class="book_author">
						<span class="sp1">作者:</span>
						<span class="sp2">霍金</span>
					</div>
					<div class="book_price">
						<span class="sp1">价格:</span>
						<span class="sp2">￥30.00</span>
					</div>
					<div class="book_sales">
						<span class="sp1">销量:</span>
						<span class="sp2">230</span>
					</div>
					<div class="book_amount">
						<span class="sp1">库存:</span>
						<span class="sp2">1000</span>
					</div>
					<div class="book_add">
						<button>加入购物车</button>
					</div>
				</div>
			</div>
			
			<div class="b_list">
				<div class="img_div">
					<img class="book_img" alt="" src="static/img/default.jpg" />
				</div>
				<div class="book_info">
					<div class="book_name">
						<span class="sp1">书名:</span>
						<span class="sp2">时间简史</span>
					</div>
					<div class="book_author">
						<span class="sp1">作者:</span>
						<span class="sp2">霍金</span>
					</div>
					<div class="book_price">
						<span class="sp1">价格:</span>
						<span class="sp2">￥30.00</span>
					</div>
					<div class="book_sales">
						<span class="sp1">销量:</span>
						<span class="sp2">230</span>
					</div>
					<div class="book_amount">
						<span class="sp1">库存:</span>
						<span class="sp2">1000</span>
					</div>
					<div class="book_add">
						<button>加入购物车</button>
					</div>
				</div>
			</div>
			
			<div class="b_list">
				<div class="img_div">
					<img class="book_img" alt="" src="static/img/default.jpg" />
				</div>
				<div class="book_info">
					<div class="book_name">
						<span class="sp1">书名:</span>
						<span class="sp2">时间简史</span>
					</div>
					<div class="book_author">
						<span class="sp1">作者:</span>
						<span class="sp2">霍金</span>
					</div>
					<div class="book_price">
						<span class="sp1">价格:</span>
						<span class="sp2">￥30.00</span>
					</div>
					<div class="book_sales">
						<span class="sp1">销量:</span>
						<span class="sp2">230</span>
					</div>
					<div class="book_amount">
						<span class="sp1">库存:</span>
						<span class="sp2">1000</span>
					</div>
					<div class="book_add">
						<button>加入购物车</button>
					</div>
				</div>
			</div>
			
			<div class="b_list">
				<div class="img_div">
					<img class="book_img" alt="" src="static/img/default.jpg" />
				</div>
				<div class="book_info">
					<div class="book_name">
						<span class="sp1">书名:</span>
						<span class="sp2">时间简史</span>
					</div>
					<div class="book_author">
						<span class="sp1">作者:</span>
						<span class="sp2">霍金</span>
					</div>
					<div class="book_price">
						<span class="sp1">价格:</span>
						<span class="sp2">￥30.00</span>
					</div>
					<div class="book_sales">
						<span class="sp1">销量:</span>
						<span class="sp2">230</span>
					</div>
					<div class="book_amount">
						<span class="sp1">库存:</span>
						<span class="sp2">1000</span>
					</div>
					<div class="book_add">
						<button>加入购物车</button>
					</div>
				</div>
			</div>
		</div>
		
		<div id="page_nav">
		<a href="#">Home</a>
		<a href="#">Prev</a>
		<a href="#">3</a>
		[4]
		<a href="#">5</a>
		<a href="#">Next</a>
		<a href="#">Last Page</a>
		A total of 10 pages, 30 records To<input value="4" name="pn" id="pn_input"/>page
		<input type="button" value="Yes">
		</div>
	
	</div>
	
</body>
</html>