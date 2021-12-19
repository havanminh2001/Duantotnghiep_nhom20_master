<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
									<p>Bạn có chắc chắn Muốn đăng xuất</p>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline-primary"
										data-dismiss="modal">Hủy</button>
									<a href="../logout" class="btn btn-primary">Đăng Xuất</a>
								</div>
							</div>
						</div>
					</div>

	<footer class="sticky-footer bg-white">
		<div class="container my-auto">
			<div class="copyright text-center my-auto">
				<span>copyright &copy; <script>
					document.write(new Date().getFullYear());
				</script>
					- developed by <b><a href="https://indrijunanda.gitlab.io/"
						target="_blank">Group 20 </a></b>
				</span>
			</div>
		</div>
	</footer>
</body>
</html>