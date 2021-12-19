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
	<div id="">


		<jsp:include page="../common/Header.jsp"></jsp:include>
		<div class="d-sm-flex align-items-center justify-content-between mb-4">
			<h1 class="h3 mb-0 text-gray-800">Danh Sách Sản Phẩm</h1>
		</div>
		<form action="product-delete" method="get">
			<div class="container-fluid" id="container-wrapper">
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
											<label>Tìm Kiếm:<input type="search"
												class="form-control form-control-sm" placeholder=""
												aria-controls="dataTable"></label> <a href="product-create"><span
												class="btn btn-outline-primary"
												style="font-size: 30px; border-radius: 30px">+</span></a>
										</div>
										<p class="demo-button">
											<a style="margin-left: 18px" class="btn btn-success"
												href="product-list">Tất Cả SP</a> <a class="btn btn-light"
												href="product-list-by-category?categoryId=1">IPHONE </a> <a
												class="btn btn-light"
												href="product-list-by-category?categoryId=2">OPPO</a> <a
												class="btn btn-light"
												href="product-list-by-category?categoryId=3">REALME</a> <a
												class="btn btn-light"
												href="product-list-by-category?categoryId=4">SAMSUNG</a> <a
												class="btn btn-light"
												href="product-list-by-category?categoryId=5">NOKIA</a> <a
												class="btn btn-light"
												href="product-list-by-category?categoryId=6"> HUAWEI</a> <a
												class="btn btn-light"
												href="product-list-by-category?categoryId=7">PHỤ KIỆN</a> <a
												class="btn btn-light"
												href="product-list-by-category?categoryId=8"> BỘ SẠC</a> <a
												class="btn btn-light"
												href="product-list-by-category?categoryId=9"> TAI NGHE</a>

										</p>
										<div class="table-responsive p-3">
											<div
												class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
												<h6 class="m-0 font-weight-bold text-primary">Danh Sách Sản Phẩm</h6>
											</div>
											<table style="font-size: 13px"
												class="table align-items-center table-flush" id="dataT able">

												<thead class="thead-light">
													<tr>
														<th><input type="checkbox" name="all" id="checkAll"
															style="cursor: pointer;" /></th>
														<th>ID</th>
														<th>Tên Sản Phẩm</th>
														<th style="width: 23%;">Giá Tiền</th>
														<th style="width: 1%;">Số Lượng</th>
														<th>Giảm Giá</th>
														<th>Hình Ảnh</th>
														<th style="width: 25%;">Mô Tả Chi Tiết</th>

														<th style="width: 22%;">Tùy Chọn</th>
													</tr>
												</thead>
												<tbody>

													<c:forEach items="${products}" varStatus="loop"
														var="product">

														<tr>
															<td style="vertical-align: middle;"><input
																class="checkbox" type="checkbox" name="productId"
																value="${product.productId}" id="${loop.count}"
																style="cursor: pointer;" /></td>
															<td>${product.productId}</td>
															<td>${product.productName}</td>
															<td><span style="color: #AAAAAA; font-weight: bold;">${product.price
																			- (product.price * (product.saleDTO.salePercent /
																			100))}VND
															</span> <br /> <c:if test="${product.saleDTO.salePercent != 0}">
																	<span style="text-decoration: line-through;'">${product.price}
																		VND</span>
																</c:if></td>
															<td>${product.quantity}</td>
															<td>-${product.saleDTO.salePercent}%</td>
															<td><img class="img-profile rounded-circle"
																style="width: 150%;"
																src="../download?image=${product.image}"></td>
															<td>${product.description}</td>

															<td><a
																href="product-update?productId=${product.productId}">
																	<span style="font-size: 12px"
																	class=" btn btn-outline-warning">Cập Nhật</span>
															</a> <c:if test="${productId == null}">
																	<button style="font-size: 12px" type="submit"
																		class="btn btn-outline-danger">Xóa</button>
																</c:if></td>


														</tr>

													</c:forEach>
												</tbody>
											</table>

										</div>

									</div>

								</div>
							</div>



							<nav aria-label="Page navigation example"
								style="margin-top: -30px;">
								<ul class="pagination">
									<c:forEach begin="0" end="${totalPage-1}" var="i">
										<li class="page-item"><a class="page-link"
											href="product-list?pageIndex=${i}"
											<c:if test="${pageIndex == i}">
														style="background-color: #00B2EE; color: white;"
														</c:if>>${i+1}</a></li>
									</c:forEach>
								</ul>
							</nav>


						</div>




						<!-- Modal Logout -->


					</div>
					<!---Container Fluid-->
				</div>



				<!-- Footer -->
				<jsp:include page="../common/footer.jsp"></jsp:include>
			</div>
		</form>
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

	<!-- Page level plugins -->

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