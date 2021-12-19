<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="img/logo/logo.png" rel="icon">
<title>Insert title here</title>

<link
	href="../resource/admin/assets/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link
	href="../resource/admin/assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="../resource/admin/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="../resource/admin/assets/css/ruang-admin.min.css"
	rel="stylesheet">




<link href="../resource/admin/assets/css/style.css" rel="stylesheet">

<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/bootstrap/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/font-awesome/css/font-awesome.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/linearicons/style.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/chartist/css/chartist-custom.css'/>">
<!-- MAIN CSS -->
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/css/main.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/css/demo.css'/>">
<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
	rel="stylesheet">

<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="<c:url value='../resource/admin/assets/img/apple-icon.png'/>">
<link rel="icon" type="image/png" sizes="96x96"
	href="<c:url value='../resource/admin/assets/img/favicon.png'/>">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>
<body id="page-top">

	<jsp:include page="../common/Header.jsp"></jsp:include>

	<div class="main">
		<div class="main-content">
			<div class="container-fluid">
				<!-- OVERVIEW -->
				<div class="panel panel-headline">
					<div class="panel-heading">
						<h3 class="panel-title">Chi Tiêt Đơn Hàng</h3>
						<div class="right">

							<a href="order-list"><span class="btn btn-secondary"
								style="font-size: 15px; margin-left: 1100px;; margin-bottom: 10px">Hủy</span></a>

							<c:if test="${order.status eq 'PENDING'}"> 
								<a href="order-update?orderId=${order.orderId}"><span
									class="btn btn-warning"
									style="font-size: 15px; margin-right: 15px; margin-bottom: 10px">Chấp Nhận</span></a>
							</c:if>
							<c:if test="${order.status eq 'SUCCESS'}">
								<span class="btn btn-success"
									style="font-size: 15px; margin-right: 15px; margin-bottom: 10px">Đã Chấp Nhận</span>
							</c:if>
						</div>
					</div>
					<div class="panel-body no-padding">
						<table class="shop-table"
							style="padding: 30px; border: 1px solid;">
							<thead style="border: 1px solid;">
								<tr style="background-color: #CCFFFF;">
									<th style="border: 1px solid;">Hình Ảnh</th>
									<th style="border: 1px solid;">Chi Tiết</th>
									<th style="border: 1px solid;">Giá</th>
									<th style="border: 1px solid;">Số Lượng</th>
									<th style="border: 1px solid;">Tổng Tiền</th>
									<th style="border: 1px solid;">Đánh Giá</th>
									<!-- <th>Vote</th> -->
								</tr>
							</thead>
							<tbody style="border: 1px solid; text-align: center;">
								<c:forEach items="${items}" var="item">
									<tr style="background-color: #FFFFE0;">
										<td style="border: 1px solid; width: 20%"><img
											style="width: 50%; height: 50%; "
											src="../download?image=${item.productDTO.image}"></td>
										<td style="border: 1px solid;">
											<div class="shop-details">
												<div class="productname">${item.productDTO.productName}</div>
												<p>
													<img alt="" src="../resource/client/images/star.png">
													<a class="review_num" href="#"> 02 Review(s) </a>
												</p>

												<%-- <p>${product.description}</p> --%>
												<p>
													Sale : <strong class="pcode">-${item.productDTO.saleDTO.salePercent}%</strong>
												</p>
												<p>
													Product ID : <strong class="pcode">${item.productDTO.productId}</strong>
												</p>
											</div>
										</td>
										<td style="border: 1px solid;">
											<h5 style="color: #41B314; font-weight: bold;">
												${item.unitPrice}$</h5> <c:if
												test="${item.productDTO.saleDTO.salePercent > 0}">
												<p
													style="font-size: 16px; padding-top: 7px; text-decoration: line-through;">
													${item.productDTO.price} $</p>
											</c:if>
										</td>
										
										<td style="border: 1px solid;"><select name="quantity"
											style="color: red; margin-left: 18px">
												<option value="${item.quantity}">${item.quantity}</option>
										</select></td>
										
										<td style="border: 1px solid;">
											<h5>
												<strong class="red" style="color: red;">
													${item.unitPrice *
														item.quantity} $</strong>
											</h5>
										</td>
										
										<td style="border: 1px solid;"><select style="color: red; margin-left: 15px">
												<c:forEach begin="1" end="5" var="i">
													<option
														<c:if test="${i == 5}">
																selected="selected"
																</c:if>>${i}
														Star</option>
												</c:forEach>
										</select></td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="6"><span class="pull-left">Giảm Giá : <span
											style="color: red;">${order.priceTotal - 5} $</span></span><br />
										</span> <span class="pull-left" style="font-size: 22px;">Tổng Tiền Thanh Toán: <span style="color: red;">${order.priceTotal}
												$</span>
									</span>

										<p class="pull-right" style="float: right; border: none;">
											<i class="title"
												style="font-size: 17px; color: red; font-weight: bold; margin-top: -30px; margin-left: 60px; margin-right: 5px">|
												Name : ${order.userDTO.fullname} ---> address :
												${order.userDTO.address} ---> phone : ${order.userDTO.phone}</i><br />

										</p></td>
								</tr>
							</tfoot>
						</table>
					</div>
					<div id="headline-chart" class="ct-chart"></div>
				</div>
			</div>
			<!-- END OVERVIEW -->
		</div>
		<!-- END MAIN CONTENT -->
	</div>
	<!-- Footer -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	</div>


	<!-- Scroll to top -->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	<!-- Page level custom scripts -->
	<script
		src="../resource/admin/assets/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="../resource/admin/assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>
	<script src="../resource/admin/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="../resource/admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="../resource/admin/assets/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="..resource/admin/assets/js/ruang-admin.min.js"></script>
	<script src="../resource/admin/assets/vendor/chart.js/Chart.min.js"></script>
	<script src="../resource/admin/assets/js/demo/chart-area-demo.js"></script>


	<script>
            let userSelection = document.getElementsByClassName('checkbox');
            let checkAll = document.getElementById('checkAll')


            checkAll.addEventListener('click', () => {
                if (checkAll.checked == true) {
                    for (let i = 1; i <= userSelection.length; i++) {
                        document.getElementById(i).checked = true
                    }
                } else {
                    for (let i = 1; i <= userSelection.length; i++) {
                        document.getElementById(i).checked = false
                    }
                }

            })
   </script>

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