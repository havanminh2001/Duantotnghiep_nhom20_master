<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<!-- ICONS -->

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<link rel="stylesheet" type="text/css"
	href="<c:url value='../resource/css/style.css'/>">
</head>
<body id="page-top">



	<jsp:include page="../common/header2.jsp"></jsp:include>
	<div id="wrapper" style="max-width: 1250px; margin: auto;">
		<jsp:include page="../common/category.jsp" />
		<!-- MAIN -->
		<!-- MAIN CONTENT -->
		<div class="main">
			<div class="main-content">
				<div class="container-fluid">
					<!-- OVERVIEW -->
					<div class="panel panel-headline">
						<div class="panel-heading"
							style="display: flex; justify-content: space-between;">
							<h3 class="panel-title">CREATE NEW PRODUCT</h3>
							<a class="btn btn-warning" href="product-list"
								style="background-color: #BBBBBB; padding: 8px 10px; text-decoration: none; border: none; margin-right: -300px; height: 40px;">cancel</a>
						</div>
						<form action="product-create" method="post"
							enctype="multipart/form-data">
							<div class="row"
								style="display: flex; justify-content: space-between;">
								<table style="margin: auto; margin-left: 60px;" class="col-md-6">
									<tr>
										<th>Category:</th>
										<td><select name="categoryId">
												<c:forEach items="${categories}" var="category">
													<option value="${category.categoryId}">${category.categoryName}</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>Product name:</th>
										<td><input type="text" class="form-control"
											required="required" style="height: 30px;"
											placeholder="Enter product name..." name="productName" /></td>
									</tr>
									<tr>
										<th>Description:</th>
										<td><textarea required="required" class="form-control"
												placeholder="Enter product description..." rows="4"
												name="description"></textarea></td>
									</tr>
									<tr>
										<th></th>
										<td></td>
									</tr>
									<tr>
										<th></th>
										<td></td>
									</tr>
								</table>
								<table
									style="margin: auto; margin-left: 50px; margin-right: -200px;"
									class="col-md-6">
									<tr>
										<th>Price:</th>
										<td><input type="text" class="form-control"
											required="required" style="height: 30px; width: 230px;"
											placeholder="0.00 $" name="price" /></td>
									</tr>
									<tr>
										<th>Quantity:</th>
										<td><input type="text" class="form-control"
											required="required" style="height: 30px; width: 230px;"
											placeholder="0" name="quantity" /></td>
									</tr>
									<tr>
										<th>Image:</th>
										<td><input type="file" required="required"
											name="imageFile" /></td>
									</tr>
									<tr>
										<th>Sale code:</th>
										<td><select name="saleId">
												<c:forEach items="${sales}" var="sale">
													<option value="${sale.saleId}">${sale.salePercent}%</option>
												</c:forEach>
										</select> <a style="margin-left: 10px;" href="">More sale code</a></td>
									</tr>
									<tr>
										<th></th>
										<td>
											<button type="submit" class="btn btn-success"
												style="font-weight: bold;">CREATE NEW PRODUCT</button>
										</td>
									</tr>
									<tr>
										<th></th>
										<td></td>
									</tr>
								</table>
							</div>
						</form>
					</div>

				</div>
				<div id="headline-chart" class="ct-chart"></div>
			</div>

			<!-- END OVERVIEW -->
		</div>
		<!-- END MAIN CONTENT -->
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>


	<!-- Scroll to top -->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
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