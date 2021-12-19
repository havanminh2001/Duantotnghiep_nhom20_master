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

	<div class="container-fluid" id="container-wrapper">
		<div class="d-sm-flex align-items-center justify-content-between mb-4">
			<h1 class="h3 mb-0 text-gray-800">Danh Sách Tài Khoản</h1>

		</div>

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<!-- TopBar -->

				<!-- Topbar -->
				<!-- Container Fluid-->
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

									<h6 class="m-0 font-weight-bold text-primary">Danh Sách Tài Khoản</h6>
									<a href="user-create"><span class="btn btn-outline-primary"
										style="font-size: 30px; border-radius: 30px">+</span></a>
									</button>
								</div>
								<form action="user-delete" method="get">
									<div class="table-responsive p-3">

										<table style="font-size: 13px"
											class="table align-items-center table-flush" id="dataTable">

											<thead class="thead-light">
												<tr>
													<th><input type="checkbox" name="all" id="checkAll"
														style="cursor: pointer;" /></th>
													<th>ID</th>
													<th>Hình Ảnh</th>
													<th>Email</th>
													<th style="width: 20%">Họ Tên</th>
													<th>Số Điện Thoại</th>
													<th>Địa Chỉ</th>
													<th>Giới Tính</th>
													<th>Role</th>
													<th style="width: 30%">Tùy Chọn</th>
												</tr>
											</thead>
											<tbody>

												<c:forEach items="${users}" var="user" varStatus="loop">
													<c:if test="${user.roleDTO.roleName eq 'ROLE_ADMIN'}">
														<tr>
															<td style="vertical-align: middle;"><input
																class="checkbox" type="checkbox" name="userId"
																value="${user.userId}" id="${loop.count}"
																style="cursor: pointer;" /></td>
															<td style="vertical-align: middle;">${user.userId}</td>
															<td style="vertical-align: middle;"><img
																class="img-profile rounded-circle"
																src="../downloadUser?image=${user.avatar}" alt="Avatar"
																class="avatar img-circle" style="width: 100%;"></td>
															<td style="vertical-align: middle; padding-left: 25px;">${user.email}</td>
															<td style="vertical-align: middle;">${user.fullname}</td>
															<td style="vertical-align: middle;">${user.phone}</td>
															<td style="vertical-align: middle;">${user.address}</td>
															<td style="vertical-align: middle;""><c:choose>
																	<c:when test="${user.gender}">Male</c:when>
																	<c:otherwise>Female</c:otherwise>
																</c:choose></td>
															<td style="vertical-align: middle;">${user.roleDTO.roleName}</td>
															<td style="vertical-align: middle;"><a
																href="user-update?userId=${user.userId}"> <span
																	style="font-size: 12px"
																	class=" btn btn-outline-warning">Cập Nhật</span>
															</a>
																<button style="font-size: 12px" type="submit"
																	class="btn btn-outline-danger">Xóa</button></td>
														</tr>
													</c:if>
												</c:forEach>
											</tbody>
										</table>

									</div>
								</form>
							</div>
							<nav aria-label="Page navigation example"
								style="margin-top: 10px;">
								<ul class="pagination">
									<c:forEach begin="0" end="${totalPage - 1}" var="i">
										<li class="page-item"><a class="page-link"
											<c:if test="${i == pageIndex}">
															style="background-color: #00B2EE; color: white;"
														</c:if>
											href="user-admin?pageIndex=${i}">${i + 1}</a></li>
									</c:forEach>

								</ul>
							</nav>
						</div>



					</div>
					<!---Container Fluid-->
				</div>



				<!-- Footer -->
				<jsp:include page="../common/footer.jsp"></jsp:include>
			</div>
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
									$("#sidebarToggle, #sidebarToggleTop")
											.on(
													"click",
													(function(e) {
																$("body")
																		.toggleClass(
																				"sidebar-toggled"),
																$(".sidebar")
																		.toggleClass(
																				"toggled"),
																$(".sidebar")
																		.hasClass(
																				"toggled")
																		&& $(
																				".sidebar .collapse")
																				.collapse(
																						"hide")
													})),
									$(window)
											.resize(
													(function() {
														$(window).width() < 768
																&& $(
																		".sidebar .collapse")
																		.collapse(
																				"hide")
													})),
									$("body.fixed-nav .sidebar")
											.on(
													"mousewheel DOMMouseScroll wheel",
													(function(e) {
														if ($(window).width() > 768) {
															var e0 = e.originalEvent, delta = e0.wheelDelta
																	|| -e0.detail;
																	this.scrollTop += 30 * (delta < 0 ? 1
																			: -1),
																	e
																			.preventDefault()
														}
													})),
									$(document).on(
											"scroll",
											(function() {
												var scrollDistance;
												$(this).scrollTop() > 100 ? $(
														".scroll-to-top")
														.fadeIn() : $(
														".scroll-to-top")
														.fadeOut()
											})),
									$(document)
											.on(
													"click",
													"a.scroll-to-top",
													(function(e) {
														var $anchor = $(this);
																$("html, body")
																		.stop()
																		.animate(
																				{
																					scrollTop : $(
																							$anchor
																									.attr("href"))
																							.offset().top
																				},
																				1e3,
																				"easeInOutExpo"),
																e
																		.preventDefault()
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