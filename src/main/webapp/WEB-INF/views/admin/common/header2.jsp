<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>admin -
						manage</span>
			</a></li>
			<hr class="sidebar-divider">
			<div class="sidebar-heading">Features</div>
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseBootstrap"
				aria-expanded="true" aria-controls="collapseBootstrap"> <i
					class="far fa-fw fa-window-maximize"></i> <span>Store</span>
			</a>
				<div id="collapseBootstrap" class="collapse"
					aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Store</h6>
						<a class="collapse-item" href="shop-phone">Minhstore</a>
					</div>
				</div></li>
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseForm"
				aria-expanded="true" aria-controls="collapseForm"> <i
					class="fab fa-fw fa-wpforms"></i> <span>Product Management</span>
			</a>
				<div id="collapseForm" class="collapse"
					aria-labelledby="headingForm" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Products & Accessories</h6>
						<a class="collapse-item" href="product-list">Product Minhstore</a>
						<a class="collapse-item" href="category-list">Product
							Directory Products</a>
					</div>
				</div></li>
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTable"
				aria-expanded="true" aria-controls="collapseTable"> <i
					class="fas fa-fw fa-table"></i> <span>Account Management</span>
			</a>
				<div id="collapseTable" class="collapse"
					aria-labelledby="headingTable" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Account</h6>
						<a class="collapse-item" href="user-admin">Admin Account</a> <a
							class="collapse-item" href="user-custumer">Person Account Use</a>
						<a class="collapse-item" href="user-list">All Talents Item</a>
					</div>
				</div></li>


			<hr class="sidebar-divider">
			<div class="sidebar-heading">Examples</div>
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePage"
				aria-expanded="true" aria-controls="collapsePage"> <i
					class="fas fa-fw fa-columns"></i> <span>Manage Orders</span>
			</a>
				<div id="collapsePage" class="collapse"
					aria-labelledby="headingPage" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Order</h6>
						<a class="collapse-item" href="order-list">All Orders</a> <a
							class="collapse-item" href="order-pending">Application Not
							Confirmed</a> <a class="collapse-item" href="order-success">Application
							Confirmed</a> <a class="collapse-item" href="order-list">Orders
							On Delivery</a> <a class="collapse-item" href="order-list">Order
							Delivered</a>

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
										<div class="small text-gray-500">Udin Cilok ???? 58m</div>
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
										<div class="small text-gray-500">Jaenab ???? 2w</div>
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
									href="#">All pages</a>
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
								<a href="user-update?userId=${user.userId}"
									class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>information
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Setting
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:void(0);"
									data-toggle="modal" data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Log out
								</a>
							</div></li>
					</ul>
				</nav>
				<!-- Topbar -->
</body>
</html>