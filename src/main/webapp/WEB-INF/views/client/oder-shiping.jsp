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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="../resource/client/css/bootstrap.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>



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
	<jsp:include page="common/header.jsp" />
	<div style="margin-top: 25px;" class="wrapper">
		<div class="clearfix"></div>
		<div class="container_fullwidth" style="margin-top: 0px;">
			<div class="container">
				<div class="container shopping-cart">
					<div class="row">
						<div class="col-md-3">
							<div class="get-newsletter leftbar" style="margin-top: 0px;">

								<div class="col-lg-10 col-md-12">
									<h3 class="title">
										Đơn Hàng <strong> Đang Vận Chuyển</strong>
									</h3>
									<hr>
									<div class="footer__widget">
										<h6>Tham gia bản tin của chúng tôi ngay bây giờ</h6>
										<p>Nhận thông tin cập nhật qua E-mail về cửa hàng mới nhất
											của chúng tôi và các ưu đãi đặc biệt.</p>
										<form action="#">
											<input type="text" placeholder="Nhập Email của Bạn">
											<button type="submit" class="site-btn">Gửi</button>
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
							<div class="leftbanner">
								<img src="../resource/client/images/favicon.png" alt="">
							</div>



						</div>
						<div class="col-md-9">
							<div class="checkout-page">
								<ol class="checkout-steps">
									<nav class="header__menu">
										<ul>

											<li><a style="color: black;"
												class="btn btn-outline-primary" href="#">Trạng Thái Đơn
													Hàng</a>
												<ul class="header__menu__dropdown">
													<li><a href="cart">Giỏ Hàng</a></li>
													<c:if test="${sessionScope.user != null}">
														<li class="steps active"><a href="my-order"> 01.
																Tất Cả Đơn Hàng</a></li>
														<li class="steps active"><a href="oder-pending">
																02. Đơn Hàng Chưa Xác Nhận</a></li>
														<li class="steps active"><a href="oder-success">
																03. Đơn Hàng Đã Xác Nhận</a></li>
														<li class="steps active"><a href="oder-shiping">
																04. Đơn Hàng Đang Ship</a></li>
														<li class="steps active"><a href="oder-ok"> 05.
																Đơn Hàng Đã Giao</a></li>
													</c:if>
												</ul></li>
										</ul>
									</nav>
									<table class="table table-striped" style="font-size: 15px;">
										<thead>
											<tr>
												<th>Mã Đơn No.</th>
												<th>Thanh Toán</th>
												<th>Ngày Đặt</th>
												<th>Trạng Thái</th>
												<th>Chi Tiết Đơn Hàng</th>
												<th>Hủy Đơn</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${orders}" var="order">
												<td><c:if test="${order.status == 'SUCCESS'}">
														<tr>
															<td><a href="#">No. ${order.orderId}</a></td>
															<td style="color: red; font-weight: bold;">${order.priceTotal}
																VND</td>
															<td>${order.buyDate}</td>
															<td><c:if test="${order.status == 'PENDING'}">
																	<span class="label label-warning">${order.status}</span>
																</c:if> <c:if test="${order.status eq 'SUCCESS'}">
																	<span class="label label-success">${order.status}</span>
																</c:if></td>
															<td><a class="btn btn-outline-warning"
																href="order-details?orderId=${order.orderId}"
																style="color: black; text-decoration: none;">Chi
																	Tiết</a></td>
															<td><c:if test="${order.status eq 'PENDING'}">
																	<a class="btn btn-outline-danger" href="order-delete">Hủy
																		Đơn</a>
																</c:if> <c:if test="${order.status eq 'SUCCESS'}">
																	<a class="btn btn-outline-success" href="#">Đã Nhận</a>
																</c:if></td>
														</tr>
													</c:if>
											</c:forEach>
										</tbody>
									</table>
								</ol>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
		<jsp:include page="common/footer.jsp" />
	</div>

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