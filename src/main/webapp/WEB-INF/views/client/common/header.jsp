<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="header__top__left">
							<ul>
								<li><i class="fa fa-envelope"></i>linhstore1112@gmail.com</li>
								<li>miễn phí ship cho tất cả Đơn hàng 100.000 VND</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="header__top__right">
							<div class="header__top__right__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-linkedin"></i></a> <a href="#"><i
									class="fa fa-pinterest-p"></i></a>
							</div>
							<div class="header__top__right__language">
								<img src="../resource/client/img/language.png" alt="">
								<div>Vietnamese</div>
								<span class="arrow_carrot-down"></span>
								<ul>
									<li><a href="#">Vietnamese</a></li>
									<li><a href="#">English</a></li>
								</ul>
							</div>


							<c:if test="${sessionScope.user == null}">
								<div class="header__top__right__language">
									<div>Đăng nhập | Đăng kí</div>
									<span class="arrow_carrot-down"></span>
									<ul>
										<li><a href="../login" class="fa fa-user">Đăng nhập</a></li>
										<li><a href="../register" class="fa fa-registered">Đăng
												Kí</a></li>
									</ul>
								</div>

							</c:if>


							<c:if test="${sessionScope.user != null}">
								<div class="header__top__right__language">
									<img class="img-circle"
										src="../downloadUser?image=${sessionScope.user.avatar}"
										style="width: 26px; margin-top: -4px;">
									<div>${sessionScope.username}</div>
									<span class="arrow_carrot-down"></span>
									<ul>
										<li></li>
										<li><a href="profile" class="fa fa-user">Trang cá
												nhân</a></li>
										<li><a href="../logout" class="fa fa-sign-in">Đăng
												Xuất</a></li>
									</ul>
								</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div
			style="background-color: #CC0000; box-shadow: 2px 2px 2px 2px #AAA;"
			class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="header__logo">
							<a href="home"><img
								style="border-radius: 20px; box-shadow: 3px 3px 3px 3px black;"
								src="../resource/client/img/logo.png" alt=""></a>
						</div>
					</div>
					<div class="col-lg-6">
						<nav class="header__menu">
							<ul>
								<li><a class="fa fa-home" href="home">Trang Chủ</a></li>
								<li><a class="fa fa-shopping-bag" href="product-grid2">Cửa
										Hàng</a></li>
								<li><a class="fa fa-shopping-basket" href="#">Mua Sắm</a>
									<ul class="header__menu__dropdown">
										<li><a href="cart">Giỏ Hàng</a></li>
										<c:if test="${sessionScope.user != null}">
											<li><a href="my-order">Quản Lý Đơn Hàng</a></li>
											<li><a href="profile">Thông Tin Cá Nhân</a></li> 
										</c:if>
										<li><a href="cart">Sản Phẩm Yêu Thích</a></li>
									</ul></li>

								<li><a class="fa fa-window-maximize" href="blog">Blog</a></li>
							</ul>
						</nav>
					</div>
					<div class="col-lg-3">
						<div class="header__cart">
							<ul>
								<li><a href="cart"><i class="fa fa-heart"></i> <span>1</span></a></li>

								<li class="option-cart"><a href="cart"><i
										class="fa fa-shopping-bag"></i> <span class="cart_no">${sessionScope.totalQuantity}</span></a></li>
							</ul>

							<div class="header__cart__price">
								Giỏ Hàng : <span>${sessionScope.subTotal} VND</span> 
							</div>
						</div>
					</div>
				</div>
				<div class="humberger__open">
					<i class="fa fa-bars"></i>
				</div>
			</div>
		</div>
	</header>
</body>
</html>