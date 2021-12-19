<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Ogani | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="../resource/client/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="../resource/client/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="../resource/client/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="../resource/client/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="../resource/client/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet"
	href="../resource/client/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="../resource/client/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="../resource/client/css/style.css"
	type="text/css">
</head>

<body>

	<div id="preloder">
		<div class="loader"></div>
	</div>
	<!-- Page Preloder -->
	<%@include file="common/header.jsp"%>

	<section class="hero hero-normal">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div style="margin-top: 10px" class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>Danh Mục</span>
						</div>
						<ul
							style="border-bottom-left-radius: 20px; border-bottom-right-radius: 20px; padding-right: 40px">
							<c:forEach items="${categories}" var="category">
								<li><a class="froma"
									href="product-grid?categoryId=${category.categoryId}">${category.categoryName}</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div style="margin-top: 10px" class="hero__search">
						<div class="hero__search__form">
							<form action="search" method="get">
								<div class="hero__search__categories">
									Tìm kiếm <span class="arrow_carrot-down"></span>
								</div>
								<div id="search" class="search">
									<input type="text" class="search" value="" name="text"
										placeholder="Bạn muốn tìm gì ..?">
									<button type="submit" class="site-btn">Tìm Kiếm</button>

								</div>
							</form>
						</div>
						<div class="hero__search__phone">
							<div class="hero__search__phone__icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="hero__search__phone__text">
								<h5>(+84) 378713332</h5>
								<span>Hỗ trợ 24/7 </span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="../resource/client/img/blog/details/details-hero.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Blog</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a> <span>Blog</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Blog Section Begin -->
	<section class="blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-5">
					<div class="blog__sidebar">
						<div class="blog__sidebar__search">
							<form action="#">
								<input type="text" placeholder="Search...">
								<button type="submit">
									<span class="icon_search"></span>
								</button>
							</form>
						</div>
						<div class="blog__sidebar__item">
							<h4>Danh Mục</h4>
							<ul>
								<c:forEach items="${categories}" var="category">
									<li><a class="froma"
										href="product-grid?categoryId=${category.categoryId}">${category.categoryName}</a></li>
								</c:forEach>
							</ul>
						</div>
						 
						<div class="blog__sidebar__item">
							<h4>Search By</h4>
							<div class="blog__sidebar__item__tags">
								<a href="#">Apple</a> <a href="#">Beauty</a> <a href="#">Vegetables</a>
								<a href="#">Fruit</a> <a href="#">Healthy Food</a> <a href="#">Lifestyle</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-7">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="blog__item__pic">
									<img src="../resource/client/img/blog/blog-2.jpg" alt="">
								</div>
								<div class="blog__item__text">
									<ul>
										<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
										<li><i class="fa fa-comment-o"></i> 5</li>
									</ul>
									<h5>
										<a href="#">6 ngày trải nghiệm với samsung</a>
									</h5>
									<p>Hãy trải nghiệm như chính con người bạn đã từng làm những điều mình thích</p>
									<a href="#" class="blog__btn">ĐỌC THÊM <span
										class="arrow_right"></span></a>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="blog__item__pic">
									<img src="../resource/client/img/blog/blog-3.jpg" alt="">
								</div>
								<div class="blog__item__text">
									<ul>
										<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
										<li><i class="fa fa-comment-o"></i> 5</li>
									</ul>
									<h5>
										<a href="#">Tham quan trang Nơi sản xuất smatphone ở Mỹ</a>
									</h5>
									<p>đẫ thành lập được 30 năm mỹ đã xếp thứ 3 lĩnh vực di động trên toàn thế giới</p>
									<a href="#" class="blog__btn">ĐỌC THÊM <span
										class="arrow_right"></span></a>
								</div>
							</div>
						</div>
						 
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="blog__item__pic">
									<img src="../resource/client/img/blog/blog-5.jpg" alt="">
								</div>
								<div class="blog__item__text">
									<ul>
										<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
										<li><i class="fa fa-comment-o"></i> 5</li>
									</ul>
									<h5>
										<a href="#">Mẹo giúp điện thoại tăng tốc</a>
									</h5>
									<p>đột nhiên bạn cảm thấy điện thoại của mình chậm hãy hành động ngay nào vì nó sẽ gây hại rất nhiều cho chiếc điện thoại thân yêu của bạn</p>
									<a href="#" class="blog__btn">ĐỌC THÊM<span
										class="arrow_right"></span></a>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="blog__item__pic">
									<img src="../resource/client/img/blog/blog-6.jpg" alt="">
								</div>
								<div class="blog__item__text">
									<ul>
										<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
										<li><i class="fa fa-comment-o"></i> 5</li>
									</ul>
									<h5>
										<a href="#">Khoảnh khắc bạn cần loại bỏ Thói quen sạc điện thoại</a>
									</h5>
									<p>Đừng vừa sạc vừa chơi nhé các bạn  - nguy hại khó lường trước được</p>
									<a href="#" class="blog__btn">ĐỌC THÊM <span
										class="arrow_right"></span></a>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="blog__item__pic">
									<img src="../resource/client/img/blog/blog-1.jpg" alt="">
								</div>
								<div class="blog__item__text">
									<ul>
										<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
										<li><i class="fa fa-comment-o"></i> 5</li>
									</ul>
									<h5>
										<a href="#">Mẹo giúp bảo mật điện thoại tốt hơn</a>
									</h5>
									<p>Tốt nhất là đừng đưa điện thoại cho ai khác hoặc bạn đừng đùng điện thoại nữa</p>
									<a href="#" class="blog__btn">ĐỌC THÊM<span
										class="arrow_right"></span></a>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="product__pagination blog__pagination">
								<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a
									href="#"><i class="fa fa-long-arrow-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a href="./index.html"><img src="img/logo.png" alt=""></a>
						</div>
						<ul>
							<li>Address: 60-49 Road 11378 New York</li>
							<li>Phone: +65 11.188.888</li>
							<li>Email: hello@colorlib.com</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
					<div class="footer__widget">
						<h6>Useful Links</h6>
						<ul>
							<li><a href="#">About Us</a></li>
							<li><a href="#">About Our Shop</a></li>
							<li><a href="#">Secure Shopping</a></li>
							<li><a href="#">Delivery infomation</a></li>
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Our Sitemap</a></li>
						</ul>
						<ul>
							<li><a href="#">Who We Are</a></li>
							<li><a href="#">Our Services</a></li>
							<li><a href="#">Projects</a></li>
							<li><a href="#">Contact</a></li>
							<li><a href="#">Innovation</a></li>
							<li><a href="#">Testimonials</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-12">
					<div class="footer__widget">
						<h6>Join Our Newsletter Now</h6>
						<p>Get E-mail updates about our latest shop and special
							offers.</p>
						<form action="#">
							<input type="text" placeholder="Enter your mail">
							<button type="submit" class="site-btn">Subscribe</button>
						</form>
						<div class="footer__widget__social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-pinterest"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="footer__copyright">
						<div class="footer__copyright__text">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
						<div class="footer__copyright__payment">
							<img src="img/payment-item.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="../resource/client/js/jquery-3.3.1.min.js"></script>
	<script src="../resource/client/js/bootstrap.min.js"></script>
	<script src="../resource/client/js/jquery.nice-select.min.js"></script>
	<script src="../resource/client/js/jquery-ui.min.js"></script>
	<script src="../resource/client/js/jquery.slicknav.js"></script>
	<script src="../resource/client/js/mixitup.min.js"></script>
	<script src="../resource/client/js/owl.carousel.min.js"></script>
	<script src="../resource/client/js/main.js"></script>



</body>

</html>