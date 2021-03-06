<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<link
	href="../resource/admin/assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="../resource/admin/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="../resource/admin/assets/css/ruang-admin.min.css"
	rel="stylesheet">




<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<link href="../resource/client/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="../client/css/flexslider.css"
	type="text/css" media="screen" />
<link href="../resource/client/css/sequence-looptheme.css"
	rel="stylesheet" media="all" />
<link href="../resource/client/css/style.css" rel="stylesheet">
</head>

<body id="home">


	<div id="wrapper">
		<!-- Sidebar -->
		<ul class="navbar-nav sidebar sidebar-light accordion"
			id="accordionSidebar">
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="home">
				<div class="sidebar-brand-icon">
					<img src="../resource/admin/assets/img/logo/logo.png">
				</div>

			</a>
			<hr class="sidebar-divider my-0">
			<li class="nav-item active"><a class="nav-link" href="home">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>Home Admin</span>
			</a></li>
			<hr class="sidebar-divider">
			<div class="sidebar-heading">Features</div>
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseBootstrap"
				aria-expanded="true" aria-controls="collapseBootstrap"> <i
					class="far fa-fw fa-window-maximize"></i> <span>Shop - Mobi</span>
			</a>
				<div id="collapseBootstrap" class="collapse"
					aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Shop - Mobi</h6>
						<a class="collapse-item" href="shop-phone">SHOP PHONE</a>
					</div>
				</div></li>
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseForm"
				aria-expanded="true" aria-controls="collapseForm"> <i
					class="fab fa-fw fa-wpforms"></i> <span>Manager Product</span>
			</a>
				<div id="collapseForm" class="collapse"
					aria-labelledby="headingForm" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Product</h6>
						<a class="collapse-item" href="product-list">Product</a> <a
							class="collapse-item" href="category-list">Category</a>
					</div>
				</div></li>
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTable"
				aria-expanded="true" aria-controls="collapseTable"> <i
					class="fas fa-fw fa-table"></i> <span>Manager Account</span>
			</a>
				<div id="collapseTable" class="collapse"
					aria-labelledby="headingTable" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Account</h6>

						<a class="collapse-item" href="user-list">Account - ALL</a>
					</div>
				</div></li>


			<hr class="sidebar-divider">
			<div class="sidebar-heading">Examples</div>
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePage"
				aria-expanded="true" aria-controls="collapsePage"> <i
					class="fas fa-fw fa-columns"></i> <span>Manager Oder</span>
			</a>
				<div id="collapsePage" class="collapse"
					aria-labelledby="headingPage" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Oder</h6>
						<a class="collapse-item" href="order-list">Odered List</a>
					</div>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="charts.html">
					<i class="fas fa-fw fa-chart-area"></i> <span>Chat</span>
			</a></li>
			<hr class="sidebar-divider">
			<div class="version" id="version-ruangadmin"></div>
		</ul>


		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<!-- TopBar -->
				<nav
					class="navbar navbar-expand navbar-light bg-navbar topbar mb-4 static-top">
					<button id="sidebarToggleTop"
						class="btn btn-link rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>
					<ul class="navbar-nav ml-auto">
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-1 small"
											placeholder="What do you want to look for?"
											aria-label="Search" aria-describedby="basic-addon2"
											style="border-color: #3f51b5;">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <span
								class="badge badge-danger badge-counter">3+</span>
						</a>
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 12, 2019</div>
										<span class="font-weight-bold">A new monthly report is
											ready to download!</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 7, 2019</div>
										$290.29 has been deposited into your account!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>x`x`
									<div>
										<div class="small text-gray-500">December 2, 2019</div>
										Spending Alert: We've noticed unusually high spending for your
										account.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Show All Alerts</a>
							</div></li>
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>
								<span class="badge badge-warning badge-counter">2</span>
						</a>
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="messagesDropdown">
								<h6 class="dropdown-header">Message Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/man.png"
											style="max-width: 60px" alt="">
										<div class="status-indicator bg-success"></div>
									</div>
									<div class="font-weight-bold">
										<div class="text-truncate">Hi there! I am wondering if
											you can help me with a problem I've been having.</div>
										<div class="small text-gray-500">Udin Cilok ?? 58m</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/girl.png"
											style="max-width: 60px" alt="">
										<div class="status-indicator bg-default"></div>
									</div>
									<div>
										<div class="text-truncate">Am I a good boy? The reason I
											ask is because someone told me that people say this to all
											dogs, even if they aren't good...</div>
										<div class="small text-gray-500">Jaenab ?? 2w</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Read More Messages</a>
							</div></li>
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-tasks fa-fw"></i> <span
								class="badge badge-success badge-counter">3</span>
						</a>
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="messagesDropdown">
								<h6 class="dropdown-header">Task</h6>
								<a class="dropdown-item align-items-center" href="#">
									<div class="mb-3">
										<div class="small text-gray-500">
											Design Button
											<div class="small float-right">
												<b>50%</b>
											</div>
										</div>
										<div class="progress" style="height: 12px;">
											<div class="progress-bar bg-success" role="progressbar"
												style="width: 50%" aria-valuenow="50" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
								</a> <a class="dropdown-item align-items-center" href="#">
									<div class="mb-3">
										<div class="small text-gray-500">
											Make Beautiful Transitions
											<div class="small float-right">
												<b>30%</b>
											</div>
										</div>
										<div class="progress" style="height: 12px;">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: 30%" aria-valuenow="30" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
								</a> <a class="dropdown-item align-items-center" href="#">
									<div class="mb-3">
										<div class="small text-gray-500">
											Create Pie Chart
											<div class="small float-right">
												<b>75%</b>
											</div>
										</div>
										<div class="progress" style="height: 12px;">
											<div class="progress-bar bg-danger" role="progressbar"
												style="width: 75%" aria-valuenow="75" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">View All Taks</a>
							</div></li>
						<div class="topbar-divider d-none d-sm-block"></div>
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <img
								class="img-profile rounded-circle"
								src="../downloadUser?image=${sessionScope.user.avatar}"
								style="max-width: 60px"> <span
								class="ml-2 d-none d-lg-inline text-white small">${sessionScope.username}</span>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:void(0);"
									data-toggle="modal" data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>
					</ul>
				</nav>

				<div>

					<div class="hot-products">
						<h3 class="title">
							<strong>Hot</strong> Products
						</h3>
						<div class="control">
							<a id="prev_hot" class="prev" href="#">&lt;</a><a id="next_hot"
								class="next" href="#">&gt;</a>
						</div>
						<ul id="hot">
							<li>
								<div class="row">
									<c:forEach items="${hotOne}" var="product">
										<div class="col-md-3 col-sm-6">
											<div class="products">
												<div
													style="border-radius: 40px 40px 40px 40px; margin-left: 4px; margin-top: 4px;"
													class="btn btn-warning">-${product.saleDTO.salePercent}%</div>
												<div class="thumbnail">
													<a href="product-details?productId=${product.productId}"><img
														style="width: 90%;"
														src="../download?image=${product.image}"
														alt="Product Name"></a>
												</div>
												<div class="productname">${product.productName}</div>

												<c:if test="${product.saleDTO.salePercent == 0}">
													<span class="price"
														style="font-size: 15px; color: black; text-decoration: line-through; margin-bottom: 0px; margin-top: -5px;">.</span>
													<span style="color: #FFCC33" class="price">${product.price - (product.price *
										product.saleDTO.salePercent / 100)}
														VND</span>
												</c:if>

												<c:if test="${product.saleDTO.salePercent != 0}">
													<span class="price"
														style="font-size: 15px; color: black; text-decoration: line-through; margin-bottom: 0px; margin-top: -5px;">${product.price}
														VND</span>
													<span style="color: #FFCC33" class="price">${product.price - (product.price *
										product.saleDTO.salePercent / 100)}
														VND</span>
												</c:if>
												<div class="button_group">
													<a class="button add-cart" type="button"
														href="add-to-cart?productId=${product.productId}">Add
														Cart</a>

													<button class="button compare" type="button">
														<i class="fa fa-exchange"></i>
													</button>
													<!-- <button class="button wishlist" type="button">
										<i class="fa fa-heart-o"></i>
									</button> -->
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</li>
							<li>
								<div class="row">
									<c:forEach items="${hotTwo}" var="product">
										<div class="col-md-3 col-sm-6">
											<div class="products">
												<div
													style="border-radius: 40px 40px 40px 40px; margin-left: 4px; margin-top: 4px;"
													class="btn btn-warning" class="offer">-${product.saleDTO.salePercent}%</div>
												<div class="thumbnail">
													<a href="product-details?productId=${product.productId}"><img
														style="width: 90%;"
														src="../download?image=${product.image}"
														alt="Product Name"></a>
												</div>
												<div class="productname">${product.productName}</div>

												<c:if test="${product.saleDTO.salePercent == 0}">
													<span class="price"
														style="font-size: 15px; color: black; text-decoration: line-through; margin-bottom: 0px; margin-top: -5px;">.</span>
													<span style="color: #FFCC33" class="price">${product.price - (product.price *
										product.saleDTO.salePercent / 100)}
														VND</span>
												</c:if>

												<c:if test="${product.saleDTO.salePercent != 0}">
													<span style="color: #FFCC33" class="price"
														style="font-size: 15px; color: black; text-decoration: line-through; margin-bottom: 0px; margin-top: -5px;">${product.price}
														VND</span>
													<span style="color: #FFCC33" class="price">${product.price - (product.price *
										product.saleDTO.salePercent / 100)}
														VND</span>
												</c:if>

												<div class="button_group">
													<a class="button add-cart" type="button"
														href="add-to-cart?productId=${product.productId}">Add
														To Cart</a>

													<button class="button compare" type="button">
														<i class="fa fa-exchange"></i>
													</button>
													<!-- <button class="button wishlist" type="button">
										<i class="fa fa-heart-o"></i>
									</button> -->
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</li>
						</ul>
					</div>




				</div>
				<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
					aria-labelledby="exampleModalLabelLogout" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabelLogout">Ohh
									No!</h5>
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

				<script type="text/javascript"
					src="../resource/client/js/jquery-1.10.2.min.js"></script>
				<script type="text/javascript"
					src="../resource/client/js/jquery.easing.1.3.js"></script>
				<script type="text/javascript"
					src="../resource/client/js/bootstrap.min.js"></script>
				<script type="text/javascript"
					src="../resource/client/js/jquery.sequence-min.js"></script>
				<script type="text/javascript"
					src="../resource/client/js/jquery.carouFredSel-6.2.1-packed.js"></script>
				<script defer src="../resource/client/js/jquery.flexslider.js"></script>
				<script type="text/javascript"
					src="../resource/client/js/script.min.js"></script>

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
										$("#sidebarToggle, #sidebarToggleTop")
												.on(
														"click",
														(function(e) {
																	$("body")
																			.toggleClass(
																					"sidebar-toggled"),
																	$(
																			".sidebar")
																			.toggleClass(
																					"toggled"),
																	$(
																			".sidebar")
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
															if ($(window)
																	.width() > 768) {
																var e0 = e.originalEvent, delta = e0.wheelDelta
																		|| -e0.detail;
																		this.scrollTop += 30 * (delta < 0 ? 1
																				: -1),
																		e
																				.preventDefault()
															}
														})),
										$(document)
												.on(
														"scroll",
														(function() {
															var scrollDistance;
															$(this).scrollTop() > 100 ? $(
																	".scroll-to-top")
																	.fadeIn()
																	: $(
																			".scroll-to-top")
																			.fadeOut()
														})),
										$(document)
												.on(
														"click",
														"a.scroll-to-top",
														(function(e) {
															var $anchor = $(this);
																	$(
																			"html, body")
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
			</div>
		</div>
	</div>
</body>

</html>