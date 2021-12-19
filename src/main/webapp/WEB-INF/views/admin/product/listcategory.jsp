<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>ore"%>
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

								<h6 class="m-0 font-weight-bold text-primary">Danh Mục Sản Phẩm</h6>

								<button style="border-radius: 60px 60px 60px 60px" type="button"
									class="btn btn-outline-primary">
									<h3>+</h3>
								</button>
							</div>
							<div class="table-responsive p-3">



								<table class="table align-items-center table-flush"
									id="dataTable">
									<thead class="thead-light">
										<tr> 
											<th><input type="checkbox" name="all" id="checkAll" 
												style="cursor: pointer;" />
											<th>ID</th>
											<th>Danh Mục</th>
											<th>Tùy Chọn</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${sessionScope.categories}" var="category" varStatus="loop"> 
											<tr>
												<td style="vertical-align: middle;"><input
													class="checkbox" type="checkbox" name="categoryId"
													value="${category.categoryId}" id="${loop.count}"
													style="cursor: pointer;" /></td>
												<td>${category.categoryId}</td>
												<td>${category.categoryName}</td>

												<td><a
													href="#">
														<span style="font-size: 12px"
														class=" btn btn-outline-warning">Update</span>
												</a>

													<button style="font-size: 12px" type="submit"
														class="btn btn-outline-danger">Delete</button></td>
											</tr>





										</c:forEach>
					 
									</tbody>

								</table>

							</div>

						</div>

					</div>

					<!-- DataTable with Hover -->



					<!-- Documentation Link -->
					<div class="row">


						<!-- Modal Logout -->
						<div class="modal fade" id="logoutModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLabelLogout"
							aria-hidden="true">
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
										<a href="login.html" class="btn btn-primary">Logout</a>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!---Container Fluid-->
				</div>

			</div>
		</div>

		<!-- Footer -->
		<jsp:include page="../common/footer.jsp"></jsp:include>
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