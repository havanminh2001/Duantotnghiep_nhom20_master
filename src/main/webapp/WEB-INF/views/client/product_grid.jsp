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
	<%@include file="common/header.jsp"%>
	<%@include file="common/category2.jsp"%>

	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5">
					<div class="sidebar">
						<div class="sidebar__item">
							<h4>Danh Mục</h4>
							<ul>
								<c:forEach items="${categories}" var="category">
									<li><a class="froma"
										href="product-grid?categoryId=${category.categoryId}">${category.categoryName}</a></li>
								</c:forEach>
							</ul>
						</div>
						<div class="sidebar__item">
							<h4>Khoảng Giá</h4>
							<div class="price-range-wrap">
								<div
									class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
									data-min="10" data-max="540">
									<div class="ui-slider-range ui-corner-all ui-widget-header"></div>
									<span tabindex="0"
										class="ui-slider-handle ui-corner-all ui-state-default"></span>
									<span tabindex="0"
										class="ui-slider-handle ui-corner-all ui-state-default"></span>
								</div>
								<div class="range-slider">
									<div class="price-input">
										<input type="text" id="minamount"> <input type="text"
											id="maxamount">
									</div>
								</div>
							</div>
						</div>

						<div class="fbl-box leftbar">
							<h3 class="title">Facebook</h3>
							<span class="likebutton"> <a href="#"> <img
									src="../resource/client/images/fblike.png" alt="">
							</a>
							</span>
							<p>12k like của Linh store.</p>
							<ul class="">
								<a href="#"><i class="fa fa-facebook"></i></a>
								</li>
								<a href="#"><i class="fa fa-youtube"></i></a>
								</li>
								<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<a href="#"><i class="fa fa-google-plus"></i></a>
								</li>
							</ul>
							<div class="fbplug">
								<a href="#"> <span> <img
										src="../resource/client/images/fbicon.png" alt="">
								</span> Facebook social plugin
								</a>
							</div>
						</div>

					</div>
				</div>
				<div class="col-lg-7 col-md-7">
					<div class="product__discount">
						<jsp:include page="common/toolbar.jsp" />
						<div class="row">
							<c:forEach items="${products}" var="product">
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div
											style="border-radius: 40px 40px 40px 40px; margin-left: 20px; margin-bottom: 5px;"
											class="btn btn-warning">-${product.saleDTO.salePercent}%</div>

										<div class="product__item__pic set-bg"
											data-setbg="../download?image=${product.image}">
											<ul class="product__item__pic__hover">
												<li><a
													href="add-to-cart?productId=${product.productId}"><i
														class="fa fa-heart"></i></a></li>
												<li><a href="#"><i class="fa fa-retweet"></i></a></li>
												<li><a
													href="add-to-cart?productId=${product.productId}"><i
														class="fa fa-shopping-cart"></i></a></li>
												<li><a
													href="product-details?productId=${product.productId}"
													style="text-decoration: none;"><i class=" ">-${product.saleDTO.salePercent}%</i></a></li>
											</ul>
										</div>
										<div class="product__item__text">
											<h6>
												<a href="#">${product.productName}</a>
											</h6>
											<c:if test="${product.saleDTO.salePercent == 0}">
												<h5>${product.price - (product.price *
									product.saleDTO.salePercent / 100)}
													VND</h5>
											</c:if>

											<c:if test="${product.saleDTO.salePercent != 0}">
												<h5>${product.price - (product.price * product.saleDTO.salePercent/100)}
													VND</h5>
											</c:if>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>






						<div class="product__pagination">

							<c:forEach begin="0" end="${totalPage - 1}" var="i">
								<a class="active"
									href="search?pricing=${pricing}&text=${text}&pageIndex=${i}&categoryId=${categoryId}&pageSize=${pageSize}"
									<c:if test="${pageIndex == i}"> </c:if>> ${i+1} </a>
							</c:forEach>

						</div>
					</div>
				</div>
			</div>
	</section>


	<%@include file="common/footer.jsp"%>

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