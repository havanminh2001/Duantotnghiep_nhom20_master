<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Manager Account | Shop Mobiphone</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
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
<body>
	<!-- WRAPPER -->
	<div id="wrapper">

		<jsp:include page="../common/header.jsp" />

		<jsp:include page="../common/category.jsp" />

		<!-- MAIN -->
		<!-- MAIN CONTENT -->
		<div class="main">
			<div class="main-content">
				<div class="container-fluid">
					<!-- OVERVIEW -->
					<div class="panel panel-headline">
						<div class="panel-body">
							<form action="user-delete" method="get">
								<div class="row">
									<div class="col-md-12">
										<div class="panel">
											<div class="panel-heading">
												<h3 class="panel-title">USER LIST</h3>
												<div class="right">
													<a href="user-create"><span class="label label-success"
														style="font-size: 30px; border-radius: 30px">+</span></a>
												</div>
											</div>
											<div class="panel-body no-padding">
												<table class="table table-striped" style="margin: auto;">
													<thead>
														<tr>
															<th><input type="checkbox" name="all" id="checkAll"
																style="cursor: pointer;" /></th>
															<th>ID</th>
															<th style="width: 5%;">Images</th>
															<th style="padding-left: 15px;">Email</th>
															<th>Full Name</th>
															<th>Phone</th>
															<th style="width:10%;">Address</th>
															<th>Gender</th>
															<th style="width: 5%;">Role</th>
															<th  style="width:20%;">Edit</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${users}" var="user" varStatus="loop">
															<tr>
																<td style="vertical-align: middle;"><input
																	class="checkbox" type="checkbox" name="userId"
																	value="${user.userId}" id="${loop.count}"
																	style="cursor: pointer;" /></td>
																<td style="vertical-align: middle;">${user.userId}</td>
																<td style="vertical-align: middle;"><img
																	src="../download?image=${user.avatar}" alt="Avatar"
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
																		class="label label-success" style="font-size: 15px;">Update</span>
																</a>

																	<button type="submit">
																		<span class="label label-danger"
																			style="font-size: 15px;">Delete</span>
																	</button></td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
										<nav aria-label="Page navigation example"
											style="margin-top: -30px;">
											<ul  class="pagination">
												<c:forEach begin="0" end="${totalPage - 1}" var="i">
													<li class="page-item"><a class="page-link"  
														<c:if test="${i == pageIndex}">
															style="background-color: #99FF66; color: white;"
														</c:if>
														href="user-list?pageIndex=${i}">${i + 1}</a></li>
												</c:forEach>

											</ul>
										</nav>
									</div>
									<div id="headline-chart" class="ct-chart"></div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- END OVERVIEW -->
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">
					&copy; 2021 <a href="https://www.themeineed.com" target="_blank">Group
						20 - group of 20 - graduation project</a>. All Rights Reserved.
				</p>
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
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
</body>
</body>
</html>