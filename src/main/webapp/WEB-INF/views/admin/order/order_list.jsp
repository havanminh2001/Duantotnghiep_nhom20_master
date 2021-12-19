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

</head>
<body id="page-top">

	<jsp:include page="../common/Header.jsp"></jsp:include>

	<div class="container-fluid" id="container-wrapper">
		<div class="d-sm-flex align-items-center justify-content-between mb-4">
			<h1 class="h3 mb-0 text-gray-800">Tất Cả Đơn Đặt Hàng</h1>
		</div>

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<div class="container-fluid" id="container-wrapper">
					<!-- Row -->
					<div class="row">
						<!-- Datatables -->
						<div class="col-lg-12">
							<div class="card mb-4">
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<label>Search:<input type="search"
										class="form-control form-control-sm" placeholder=""
										aria-controls="dataTable"></label>

									<h6 class="m-0 font-weight-bold text-primary">Danh Sách Đơn Hàng</h6>
								</div>
								<div class="row">
									<div class="col-lg-12 mb-4">
										<!-- Simple Tables -->
										<div class="card">
											<div
												class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
												<h6 class="m-0 font-weight-bold text-primary">Đơn Hàng</h6>
											</div>
											<div class="table-responsive">
												<table style="font-size: 13px"
													class="table align-items-center table-flush">
													<thead class="thead-light">
														<tr>
															<th><input type="checkbox" name="all" id="checkAll"
																style="cursor: pointer;" /></th>
															<th>ID</th>
															<th style="width: 20%;'">Tên</th>
															<th>Tổng</th>
															<th>Ngày Mua</th>
															<th>Trạng Thái</th>
															<th>Chi Tiết</th>
														</tr>
													</thead>
													<tbody>

														<c:forEach items="${orders}" var="order" varStatus="loop">
															<tr>
																<td style="vertical-align: middle;"><input
																	class="checkbox" type="checkbox" name="orderId"
																	value="${order.orderId}" id="${loop.count}"
																	style="cursor: pointer;" /></td>
																<td style="vertical-align: middle;">
																	${order.orderId}</td>
																<td>${order.userDTO.email.split("@")[0]}</td>
																<td>${order.priceTotal} VND</td>
																<td>${order.buyDate}</td>
																<c:if test="${order.status eq 'PENDING'}">
																	<td><a
																		href="order-update?orderId=${order.orderId}&pageIndex=${pageIndex}">
																			<span class="badge badge-warning">PENDING</span>
																	</a></td>
																</c:if>
																<c:if test="${order.status eq 'SUCCESS'}">
																	<td><span class="badge badge-success">SUCCESS</span></td>
																</c:if>
																<td><a class="btn btn-sm btn-primary"
																	href="order-details?orderId=${order.orderId}">Chi Tiết</a></td>
															</tr>
														</c:forEach>
													</tbody>
												</table>

											</div>
											<div class="card-footer"></div>
										</div>
									</div>
								</div>

							</div>

						</div>

					</div>
					<nav aria-label="Page navigation example"
						style="margin-top: -30px;">
						<ul class="pagination">
							<c:forEach begin="0" end="${totalPage - 1}" var="i">
								<li class="page-item"><a class="page-link"
									<c:if test="${i == pageIndex}">
															style="background-color:  #99FF66; color: white;"
														</c:if>
									href="order-list?pageIndex=${i}">${i + 1}</a></li>
							</c:forEach>
						</ul>
					</nav>
				</div>
			</div>

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