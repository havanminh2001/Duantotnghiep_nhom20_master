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
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<%@include file="common/header.jsp"%>
	<section class="breadcrumb-section set-bg"
		data-setbg="../resource/client/img/oder.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Checkout</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a> <span>Checkout</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>Chi Tiết Thanh Toán</h4>

				<div class="row">
					<div class="col-lg-8 col-md-6">
						<div class="row">
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										Họ Tên : <span>*</span>
									</p>
									<input value="${sessionScope.user.fullname}"
										readonly="readonly" type="text">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										Số Điện Thoại :<span>*</span>
									</p>
									<input value="${sessionScope.user.phone}" readonly="readonly"
										type="text">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										Địa Chỉ <span>*</span>
									</p>
									<input value="${sessionScope.user.address}" readonly="readonly"
										type="text">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										Email <span>*</span>
									</p>
									<input value="${sessionScope.user.email}" readonly="readonly"
										type="text">
								</div>
							</div>
						</div>
						<c:if test="${sessionScope.user != null}">
							<a class="btn btn-outline-success" href="profile"> Đi Đến
								Trang Cá Nhân </a>
						</c:if>
					</div>

					<div class="col-lg-4 col-md-6">
						<div class="checkout__order">
							<h4>Đơn Hàng</h4>
							<div class="checkout__order__products">
								Sản Phẩm <span>Thành Tiền</span>
							</div>
							<ul>
								<c:forEach items="${sessionScope.cart}" var="cart">
									<li>${cart.value.productDTO.productName} <span>${cart.value.unitPrice}
											VND</span>
									</li>
								</c:forEach>
							</ul>
							<div class="checkout__order__subtotal">
								<li>Tổng phụ <span>${sessionScope.subTotal} VND</span></li>
							</div>
							<div class="checkout__order__total">
								<li>Vận Chuyển<span><span> 30.000 VND </span></span></li>
							</div>
							<div class="checkout__order__total">
								<li>Thành Tiền <span>${sessionScope.grandTotal} VND</span></li>
							</div>
							<div class="checkout__input__checkbox">
								<label for="paypal"> Tiền Mặt <input type="checkbox"
									id="paypal"> <span class="checkmark"></span>
								</label>
							</div>
							<div class="checkout__input__checkbox">
								<label for="paypal"> Paypal <input type="checkbox"
									id="paypal"> <span class="checkmark"></span>
								</label>
							</div>


							<c:if test="${sessionScope.user != null}">
								<c:if
									test="${sessionScope.user.address == null || sessionScope.user.phone == null}">
									<a href="profile-from-cart"><button type="submit"
											class="site-btn">Đặt Hàng</button></a>
								</c:if>
								<c:if
									test="${sessionScope.user.address != null && sessionScope.user.phone != null && sessionScope.grandTotal > 5}">
									<form action="checkout" method="post">
										<button type="submit" class="site-btn">Đặt Hàng</button>
									</form>
								</c:if>
							</c:if>
							<c:if test="${sessionScope.user == null}">
								<a class="site-btn" href="../login"> Yêu Cầu Thanh Toán</a>
							</c:if>


						</div>
					</div>
				</div>

			</div>
		</div>
	</section>


	<%@include file="common/footer.jsp"%>
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