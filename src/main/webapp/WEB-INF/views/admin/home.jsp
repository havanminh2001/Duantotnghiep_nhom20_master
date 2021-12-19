<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="img/logo/logo.png" rel="icon">
<title>Admin Manager - Dashboard</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>



<link
	href="../resource/admin/assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="../resource/admin/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="../resource/admin/assets/css/ruang-admin.min.css"
	rel="stylesheet">
</head>

<body id="page-top">

	<jsp:include page="common/Header.jsp"></jsp:include>



	<!-- Container Fluid-->
	<div class="container-fluid" id="container-wrapper">
		<div class="d-sm-flex align-items-center justify-content-between mb-4">
			<h1 class="h3 mb-0 text-gray-800">QUẢN LÝ - CỬA HÀNG</h1>
			<ol class="breadcrumb">
				<li class="breadcrumb-item active" aria-current="page">Dashboard
					- admin</li>
			</ol>
		</div>

		<div class="row mb-3">
			<!-- Earnings (Monthly) Card Example -->
			<div class="col-xl-3 col-md-6 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<div class="row align-items-center">
							<div class="col mr-2">
								<div class="text-xs font-weight-bold text-uppercase mb-1">Thu
									nhập (Hàng tháng)</div>
								<div class="h5 mb-0 font-weight-bold text-gray-800">40,000.000 VDN</div>
								<div class="mt-2 mb-0 text-muted text-xs">
									<span class="text-success mr-2"><i
										class="fa fa-arrow-up"></i> 3.48%</span> <span>Kể từ lần cuối
										tháng</span>
								</div>
							</div>
							<div class="col-auto">
								<i class="fas fa-calendar fa-2x text-primary"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Earnings (Annual) Card Example -->
			<div class="col-xl-3 col-md-6 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<div class="row no-gutters align-items-center">
							<div class="col mr-2">
								<div class="text-xs font-weight-bold text-uppercase mb-1">Giảm
									Giá</div>
								<div class="h5 mb-0 font-weight-bold text-gray-800">650</div>
								<div class="mt-2 mb-0 text-muted text-xs">
									<span class="text-success mr-2"><i
										class="fas fa-arrow-up"></i> 12%</span> <span>Kể từ những năm
										trước</span>
								</div>
							</div>
							<div class="col-auto">
								<i class="fas fa-shopping-cart fa-2x text-success"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- New User Card Example -->
			<div class="col-xl-3 col-md-6 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<div class="row no-gutters align-items-center">
							<div class="col mr-2">
								<div class="text-xs font-weight-bold text-uppercase mb-1">Người
									Dùng Mới</div>
								<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">366</div>
								<div class="mt-2 mb-0 text-muted text-xs">
									<span class="text-success mr-2"><i
										class="fas fa-arrow-up"></i> 20.4%</span> <span>Kể từ lần cuối
										tháng</span>
								</div>
							</div>
							<div class="col-auto">
								<i class="fas fa-users fa-2x text-info"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Pending Requests Card Example -->
			<div class="col-xl-3 col-md-6 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<div class="row no-gutters align-items-center">
							<div class="col mr-2">
								<div class="text-xs font-weight-bold text-uppercase mb-1">YÊU
									CẦU CẦN XỬ LÝ</div>
								<div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
								<div class="mt-2 mb-0 text-muted text-xs">
									<span class="text-danger mr-2"><i
										class="fas fa-arrow-down"></i> 1.10%</span> <span>Từ hôm qua</span>
								</div>
							</div>
							<div class="col-auto">
								<i class="fas fa-comments fa-2x text-warning"></i>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Area Chart -->
			<div class="col-xl-8 col-lg-7">
				<div class="card mb-4">
					<div
						class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
						<h6 class="m-0 font-weight-bold text-primary">Monthly Recap
							Report</h6>
						<div class="dropdown no-arrow">
							<a class="dropdown-toggle" href="#" role="button"
								id="dropdownMenuLink" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <i
								class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
							</a>
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
								aria-labelledby="dropdownMenuLink">
								<div class="dropdown-header">Dropdown Header:</div>
								<a class="dropdown-item" href="#">Action</a> <a
									class="dropdown-item" href="#">Another action</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Something else here</a>
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="chart-area">
							<canvas id="myAreaChart"></canvas>
						</div>
					</div>
				</div>
			</div>
			<!-- Pie Chart -->
			<div class="col-xl-4 col-lg-5">
				<div class="card mb-4">
					<div
						class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
						<h6 class="m-0 font-weight-bold text-primary">Products Sold</h6>
						<div class="dropdown no-arrow">
							<a class="dropdown-toggle btn btn-primary btn-sm" href="#"
								role="button" id="dropdownMenuLink" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> Month <i
								class="fas fa-chevron-down"></i>
							</a>
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
								aria-labelledby="dropdownMenuLink">
								<div class="dropdown-header">Select Periode</div>
								<a class="dropdown-item" href="#">Today</a> <a
									class="dropdown-item" href="#">Week</a> <a
									class="dropdown-item active" href="#">Month</a> <a
									class="dropdown-item" href="#">This Year</a>
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="mb-3">
							<div class="small text-gray-500">
								Oblong T-Shirt
								<div class="small float-right">
									<b>600 of 800 Items</b>
								</div>
							</div>
							<div class="progress" style="height: 12px;">
								<div class="progress-bar bg-warning" role="progressbar"
									style="width: 80%" aria-valuenow="80" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
						</div>
						<div class="mb-3">
							<div class="small text-gray-500">
								Gundam 90'Editions
								<div class="small float-right">
									<b>500 of 800 Items</b>
								</div>
							</div>
							<div class="progress" style="height: 12px;">
								<div class="progress-bar bg-success" role="progressbar"
									style="width: 70%" aria-valuenow="70" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
						</div>
						<div class="mb-3">
							<div class="small text-gray-500">
								Rounded Hat
								<div class="small float-right">
									<b>455 of 800 Items</b>
								</div>
							</div>
							<div class="progress" style="height: 12px;">
								<div class="progress-bar bg-danger" role="progressbar"
									style="width: 55%" aria-valuenow="55" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
						</div>
						<div class="mb-3">
							<div class="small text-gray-500">
								Indomie Goreng
								<div class="small float-right">
									<b>400 of 800 Items</b>
								</div>
							</div>
							<div class="progress" style="height: 12px;">
								<div class="progress-bar bg-info" role="progressbar"
									style="width: 50%" aria-valuenow="50" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
						</div>
						<div class="mb-3">
							<div class="small text-gray-500">
								Remote Control Car Racing
								<div class="small float-right">
									<b>200 of 800 Items</b>
								</div>
							</div>
							<div class="progress" style="height: 12px;">
								<div class="progress-bar bg-success" role="progressbar"
									style="width: 30%" aria-valuenow="30" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
						</div>
					</div>
					<div class="card-footer text-center">
						<a class="m-0 small text-primary card-link" href="#">View More
							<i class="fas fa-chevron-right"></i>
						</a>
					</div>
				</div>
			</div>
			<!-- Invoice Example -->
			<div class="col-xl-8 col-lg-7 mb-4">
				<div class="card">
					<div
						class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
						<h6 class="m-0 font-weight-bold text-primary">Invoice</h6>
						<a class="m-0 float-right btn btn-danger btn-sm" href="#">View
							More <i class="fas fa-chevron-right"></i>
						</a>
					</div>

					<div class="panel-body no-padding">
						<table style="font-size: 12px" class="table table-striped">
							<thead>
								<tr>
									<th>Mã Đơn ID</th>
									<th>Tên</th>
									<th>Giá</th>
									<th>Ngày Đặt</th>
									<th>Trạng Thái</th>
									<th>Chi Tiết</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${orders}" var="order">
									<tr>
										<td><a href="#">${order.orderId}</a></td>
										<td>${order.userDTO.email.split("@")[0]}</td>
										<td>${order.priceTotal}$</td>
										<td>${order.buyDate}</td>
										<c:if test="${order.status eq 'PENDING'}">
											<td><a href="order-updateHome?orderId=${order.orderId}"><span
													class="label label-warning">PENDING</span></a></td>
										</c:if>
										<c:if test="${order.status eq 'SUCCESS'}">
											<td><span class="badge badge-success">SUCCESS</span></td>
										</c:if>
										<td><a href="order-details?orderId=${order.orderId}"
											style="text-decoration: underline;"><button
													class="btn btn-sm btn-primary">Detail</button></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>Order ID</th>
                        <th>Customer</th>
                        <th>Item</th>
                        <th>Status</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><a href="#">RA0449</a></td>
                        <td>Udin Wayang</td>
                        <td>Nasi Padang</td>
                        <td><span class="badge badge-success">Delivered</span></td>
                        <td><a href="#" class="btn btn-sm btn-primary">Detail</a></td>
                      </tr>
                      <tr>
                        <td><a href="#">RA5324</a></td>
                        <td>Jaenab Bajigur</td>
                        <td>Gundam 90' Edition</td>
                        <td><span class="badge badge-warning">Shipping</span></td>
                        <td><a href="#" class="btn btn-sm btn-primary">Detail</a></td>
                      </tr>
                      <tr>
                        <td><a href="#">RA8568</a></td>
                        <td>Rivat Mahesa</td>
                        <td>Oblong T-Shirt</td>
                        <td><span class="badge badge-danger">Pending</span></td>
                        <td><a href="#" class="btn btn-sm btn-primary">Detail</a></td>
                      </tr>
                      <tr>
                        <td><a href="#">RA1453</a></td>
                        <td>Indri Junanda</td>
                        <td>Hat Rounded</td>
                        <td><span class="badge badge-info">Processing</span></td>
                        <td><a href="#" class="btn btn-sm btn-primary">Detail</a></td>
                      </tr>
                      <tr>
                        <td><a href="#">RA1998</a></td>
                        <td>Udin Cilok</td>
                        <td>Baby Powder</td>
                        <td><span class="badge badge-success">Delivered</span></td>
                        <td><a href="#" class="btn btn-sm btn-primary">Detail</a></td>
                      </tr>
                    </tbody>
                  </table>
                </div> -->
					<div class="card-footer"></div>
				</div>
			</div>
			<!-- Message From Customer-->
			<div class="col-xl-4 col-lg-5 ">
				<div class="card">
					<div
						class="card-header py-4 bg-primary d-flex flex-row align-items-center justify-content-between">
						<h6 class="m-0 font-weight-bold text-light">Message From
							Customer</h6>
					</div>
					<div>
						<div class="customer-message align-items-center">
							<a class="font-weight-bold" href="#">
								<div class="text-truncate message-title">Hi there! I am
									wondering if you can help me with a problem I've been having.</div>
								<div class="small text-gray-500 message-time font-weight-bold">Udin
									Cilok ÃÂ· 58m</div>
							</a>
						</div>
						<div class="customer-message align-items-center">
							<a href="#">
								<div class="text-truncate message-title">But I must
									explain to you how all this mistaken idea</div>
								<div class="small text-gray-500 message-time">Nana Haminah
									ÃÂ· 58m</div>
							</a>
						</div>
						<div class="customer-message align-items-center">
							<a class="font-weight-bold" href="#">
								<div class="text-truncate message-title">Lorem ipsum dolor
									sit amet, consectetur adipiscing elit</div>
								<div class="small text-gray-500 message-time font-weight-bold">Jajang
									Cincau ÃÂ· 25m</div>
							</a>
						</div>
						<div class="customer-message align-items-center">
							<a class="font-weight-bold" href="#">
								<div class="text-truncate message-title">At vero eos et
									accusamus et iusto odio dignissimos ducimus qui blanditiis</div>
								<div class="small text-gray-500 message-time font-weight-bold">Udin
									Wayang ÃÂ· 54m</div>
							</a>
						</div>
						<div class="card-footer text-center">
							<a class="m-0 small text-primary card-link" href="#">View
								More <i class="fas fa-chevron-right"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--Row-->



		<!-- Modal Logout -->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabelLogout" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabelLogout">Ohh No!</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<p>Are you sure you want to logout?</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-outline-primary"
							data-dismiss="modal">Cancel</button>
						<a href="../logout" class="btn btn-primary">Logout</a>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!---Container Fluid-->
	</div>
	<!-- Footer -->
	<jsp:include page="common/footer.jsp"></jsp:include>
	</div>
	</div>

	<!-- Scroll to top -->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<script src="../resource/admin/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="../resource/admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="../resource/admin/assets/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="..resource/admin/assets/js/ruang-admin.min.js"></script>
	<script src="../resource/admin/assets/vendor/chart.js/Chart.min.js"></script>
	<script src="../resource/admin/assets/js/demo/chart-area-demo.js"></script>
	<script type="text/javascript">
		!function($) {
			"use strict";
			$("#sidebarToggle, #sidebarToggleTop").on(
					"click",
					(function(e) {
						$("body").toggleClass("sidebar-toggled"), $(".sidebar")
								.toggleClass("toggled"), $(".sidebar")
								.hasClass("toggled")
								&& $(".sidebar .collapse").collapse("hide")
					})), $(window).resize(
					(function() {
						$(window).width() < 768
								&& $(".sidebar .collapse").collapse("hide")
					})), $("body.fixed-nav .sidebar").on(
					"mousewheel DOMMouseScroll wheel",
					(function(e) {
						if ($(window).width() > 768) {
							var e0 = e.originalEvent, delta = e0.wheelDelta
									|| -e0.detail;
							this.scrollTop += 30 * (delta < 0 ? 1 : -1), e
									.preventDefault()
						}
					})), $(document).on(
					"scroll",
					(function() {
						var scrollDistance;
						$(this).scrollTop() > 100 ? $(".scroll-to-top")
								.fadeIn() : $(".scroll-to-top").fadeOut()
					})), $(document).on("click", "a.scroll-to-top",
					(function(e) {
						var $anchor = $(this);
						$("html, body").stop().animate({
							scrollTop : $($anchor.attr("href")).offset().top
						}, 1e3, "easeInOutExpo"), e.preventDefault()
					}))
		}(jQuery), $(document).ready((function() {
			$("#myBtn").click((function() {
				$(".modal").modal("show")
			})), $("#modalLong").click((function() {
				$(".modal").modal("show")
			})), $("#modalScroll").click((function() {
				$(".modal").modal("show")
			})), $("#modalCenter").click((function() {
				$(".modal").modal("show")
			}))
		})), $((function() {
			$('[data-toggle="popover"]').popover()
		})), $(".popover-dismiss").popover({
			trigger : "focus"
		});
		var version = document.getElementById("version-ruangadmin");
		version.innerHTML = "Version 1.1";
	</script>
</body>

</html>