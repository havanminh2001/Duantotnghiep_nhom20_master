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
						<h2>TT CÁ NHÂN</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Trang Chủ</a> <span>TT CÁ NHÂN</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h3 class="title">
					CẬP NHẬT <strong> TT CÁ NHÂN</strong>
				</h3>
				<input type="hidden" name="userId"
					value="${sessionScope.user.userId}" />
				<div style="display: flex;">
					<c:if test="${messageError != null}">
						<span
							style="width: 90%; margin-top: 15px; font-size: 15px; color: red;">${messageError}</span>
					</c:if>
					<c:if test="${messageSuccess != null}">
						<span
							style="width: 100%; margin-top: 15px; font-size: 15px; color: green;">${messageSuccess}</span>
					</c:if>
				</div>


				<form action="profile-update" method="post"
					enctype="multipart/form-data">
					<div class="row">
						<div class="col-lg-8 col-md-6">

							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Họ Tên : <span>*</span>
										</p>
										<input type="text"
											placeholder="Vui Lòng nhập Họ Tên Của Bạn ..."
											class="input namefild" name="fullname"
											value="${sessionScope.user.fullname}">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Số Điện Thoại :<span>*</span>
										</p>
										<input type="text"
											placeholder="Vui Lòng nhập Số Điện thoại ..."
											class="input namefild" name="phone" required="required"
											value="${sessionScope.user.phone}">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Email <span>*</span>
										</p>
										<input value="${sessionScope.user.email}" type="email"
											class="input namefild" name="email" required="required"
											readonly="readonly" type="text">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Địa Chỉ<span>*</span>
										</p>
										<input type="text" placeholder="Vui Lòng nhập Địa chỉ ..."
											class="input namefild" name="address" required="required"
											value="${sessionScope.user.address}">

									</div>
									<button class="btn btn-outline-danger" type="submit">Cập
										Nhật Thông tin</button>
								</div>

							</div>
						</div>



						<div class="col-lg-4 col-md-6">
							<div class="checkout__order">
								<h4>Ảnh Đại Diện</h4>
								<div class="leftbanner">

									<c:if test="${user.avatar != null}">
										<a type="file"><img
											src="../downloadUser?image=${user.avatar}" name="avatarFile"
											class="avatar img-circle" class="img-profile rounded-circle"
											style="width: 50%; border-radius: 20px"> </a>
									</c:if>
									<input class="btn btn-outline-danger" type="file"
										placeholder="aa" name="avatarFile"
										style="margin-left: 5px; margin-top: 30px; border-radius: 20px" />
									<input type="hidden" name="avatar" value="${user.avatar}" />

								</div>
							</div>
						</div>
					</div>
				</form>


				<form action="change-password" method="post">
					<hr style="margin-top: 40px">
					<h3 class="title">
						ĐỔI <strong> MẬT KHẨU</strong>
					</h3>
					<span style="color: red; font-weight: bold; font-size: 18px;">${message}</span>
					<div class="row">
						<!-- div class="col-lg-6">
							<div class="checkout__input">
								<p>
									Mật Khẩu Hiện Tại <span>*</span>
								</p>
								<input type="password" placeholder="Vui Lòng nhập mật khẩu hiện Tại ..." class="input namefild" name="oldpassword"
									required="required">
							</div>
						</div> -->
						<div class="col-lg-6">
							<div class="checkout__input">
								<p>
									Nhập Mật Khẩu Mới <span>*</span>
								</p>
								<input type="password" class="form-control"
									placeholder="Your password..." name="password">
							</div>
						</div>
						<div class="col-lg-6">
							<div class="checkout__input">
								<p>
									Nhập Lại Mật Khẩu Mới <span>*</span>
								</p>
								<input type="password" class="form-control"
									placeholder="Re-password..." name="repassword">
							</div>
						</div>
						<div class="col-lg-6">
							<div class="checkout__input">
								<p>
									ID Người Dùng<span>*</span>
								</p>
								<input type="text" class="input namefild" name="userId"
									required="required" readonly="readonly" value="${user.userId}" />
							</div>
						</div>
						<div class="col-lg-6">
							<div class="checkout__input">
								<p>
									Email Người Dùng<span>*</span>
								</p>
								<input type="text" class="input namefild" name="address"
									required="required" readonly="readonly"
									value="${sessionScope.user.email}">
							</div>
							<button class="btn btn-outline-danger" type="submit">Đổi
								Mật Khẩu</button>
						</div>
					</div>
				</form>
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