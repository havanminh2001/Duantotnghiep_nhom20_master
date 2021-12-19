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

	<section class="breadcrumb-section set-bg"
		data-setbg="../resource/client/img/oder.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>
							Giỏ Hàng
							<h2>
								<div class="breadcrumb__option">
									<a href="home">Trang Chủ</a> <span>Giỏ Hàng</span>
								</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Shoping Cart Section Begin -->
	<section class="shoping-cart spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__table">
						<table>
							<thead>
								<tr>

									<th>Ảnh Sản Phẩm</th>
									<th>Chi Tiết Sản Phẩm</th>
									<th>Giá Sản Phẩm</th>
									<th>Số Lượng</th>
									<th>Tổng Tiền</th>
									<th>Xóa Sản Phẩm</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${sessionScope.cart}" var="cart">
									<tr>
										<td class="shoping__cart__item"><a
											href="product-details?productId=${cart.value.productDTO.productId}"><img
												src="../download?image=${cart.value.productDTO.image}"
												alt=""></a></td>
										<td>
											<h5>${cart.value.productDTO.productName}</h5>
											<p>
												<img alt="" src="../resource/client/img/star.png"> <a
													class="review_num" href="#"> 02 Review(s) </a>
											<p>
												Giảm Giá : <strong class="pcode">-${cart.value.productDTO.saleDTO.salePercent}%</strong>
											</p>
											<p>
												Mã Sản Phẩm : <strong class="pcode">${cart.value.productDTO.productId}</strong>
											</p>
											</p>

										</td>
										<td class="shoping__cart__price">
											<h5 style="color: black; font-weight: bold;">${cart.value.unitPrice}
												VND</h5> <c:if
												test="${cart.value.productDTO.saleDTO.salePercent > 0}">
												<p
													style="font-size: 16px; padding-top: 7px; text-decoration: line-through;">
													${cart.value.productDTO.price} VND</p>
											</c:if>
										</td>
										<td class="shoping__cart__quantity">
											<form action="add-to-cart" method="post">
												<select name="quantity" onchange="this.form.submit()">
													<c:forEach begin="1" end="10" var="i">
														<option
															<c:if test="${cart.value.quantity == i}">
														        selected="selected"
														         </c:if>
															value="${i}">${i}</option>
													</c:forEach>
													<input type="hidden"
													value="${cart.value.productDTO.productId}" name="productId" />
												</select>
											</form>
										</td>
										<td class="shoping__cart__total">
											<h5>
												<strong class="red" style="font-weight: bold;">
													${Math.round(cart.value.unitPrice) *
															cart.value.quantity}.00
													VND </strong>
											</h5>
										</td>
										<td><a class="btn btn-outline-danger"
											href="delete-from-cart?productId=${cart.value.productDTO.productId}">
												X</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__btns">
						<a href="home" class="btn btn-outline-danger">Tiếp Tục Mua Sắm</a>
						<a style="float: right;" href="cart"
							class="btn btn-outline-success"><span class="icon_loading"></span>
							Cập Nhật Giỏ Hàng</a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__continue">
						<div class="shoping__discount">
							<h5>Mã Giảm Giá</h5>
							<form action="#">
								<input type="text" placeholder="Nhập Mã Giảm Giá Của Bạn ... ">
								<button type="submit" class="btn btn-outline-success">ÁP
									DỤNG</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__checkout">
						<h5>Tổng Tiền Giỏ Hàng</h5>
						<ul>
							<li>Tổng phụ <span>${sessionScope.subTotal} VND</span></li>
							<li>Vận Chuyển<span><span> 30.000 VND </span></span></li>
							<li>Thành Tiền <span>${sessionScope.grandTotal} VND</span></li>
						</ul>
						<c:if test="${cart.value.productDTO.productId != 0}">
							<a href="cart2" class="btn btn-outline-success">Tiến Hành
								Thanh Toán</a>
						</c:if>
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