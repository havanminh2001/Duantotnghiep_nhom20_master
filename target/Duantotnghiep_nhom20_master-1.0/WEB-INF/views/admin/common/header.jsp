<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="utf-8">
</head>

<body>
	<div th:fragment="header">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<img src="../resource/admin/assets/img/logo-dark.png"
					alt="Klorofil Logo" class="img-responsive logo" width="70px">
			</div>
			<div style="background-color: (255,255,255)" class="container-fluid">
				<div id="navbar-menu">
					<form class="navbar-form navbar-left">
						<div class="input-group">
							<input type="text" value="" class="form-control"
								placeholder="Search "> <span class="input-group-btn"><button
									type="button" class="btn btn-primary">Search</button></span>
						</div>
					</form>

					<ul class="nav navbar-nav navbar-right">
						<!-- <li><a href="home"> <i class="fa fa-home"
								style="font-size: 18px;"></i><span> Home</span>
						</a></li>-->
						<li><a href="home" class=""><i style="color: #00BFFF;"
								class="lnr lnr-home"></i> <span>Home</span></a></li>
						<li><a href="user-list" class=""><i
								style="color: #00BFFF;" class="lnr lnr-users"></i> <span>Account</span></a></li>
						<li><a href="product-list" class=""><i
								style="color: #00BFFF;"  class="lnr lnr-tablet"></i> <span>List
									Product</span></a></li>
						<li><a href="order-list" class=""><i
								style="color: #00BFFF;" class="lnr lnr-chart-bars"> </i> <span>Oder</span></a></li>
						<li><a > <i
								style="color: #00BFFF;" class="lnr lnr-user"></i><img
								src="../download?image=${sessionScope.user.avatar}"
								class="img-circle" alt=""> <span>${sessionScope.username}</span>
						</a></li>
						<li><a href="../logout"> <i class="material-icons"
								style="color: red;">&#xe8ac;</i><span>Logout</span>
						</a></li>
						<li><a href=""> <i class="lnr lnr-cog"
								style="color: red;">&#xe8ac;</i><span>Setting</span>
						</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<!-- END NAVBAR -->
</body>
</html>