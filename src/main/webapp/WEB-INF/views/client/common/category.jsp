<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resource/client/css/flexslider2.css"
	type="text/css" media="screen" property="" />
<script type="text/javascript"
	src="../resource/client/js/jquery-1.11.1.min.js"></script>
<link href="../resource/client/css/bootstrap.css" rel="stylesheet">
</head>
<body id="home">
	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div style="margin-top: 10px" class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>Danh Mục</span>
						</div>
						<ul
							style="border-bottom-left-radius: 20px; border-bottom-right-radius: 20px; padding-right: 40px">
							<c:forEach items="${categories}" var="category">
								<li><a class="froma"
									href="product-grid?categoryId=${category.categoryId}">${category.categoryName}</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div style="margin-top: 10px" class="hero__search">
						<div class="hero__search__form">
							<form action="search" method="get">
								<div class="hero__search__categories">
									Tìm kiếm <span class="arrow_carrot-down"></span>
								</div>
								<div id="search" class="search">
									<input type="text" class="search" value="" name="text"
										placeholder="Bạn muốn tìm gì ..?">
									<button type="submit" class="site-btn">Tìm Kiếm</button>

								</div>
							</form>
						</div>
						<div class="hero__search__phone">
							<div class="hero__search__phone__icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="hero__search__phone__text">
								<h5>(+84) 378713332</h5>
								<span>Hỗ trợ 24/7 </span>
							</div>
						</div>
					</div>

					<section style="width: 100%; border-radius: 20px" class="slider">
						<div class="flexslider">
							<ul class="slides">

								<li>
									<div class="w3l_banner_nav_right_banner">
										<h3>
											<img style="width: 100%; border-radius: 20px"
												src="../download?image=bgr1.jpg" alt="Product Name">
										</h3>
									</div>
								</li>
								<li>
									<div class="w3l_banner_nav_right_banner">
										<h3>
											<img style="width: 100%; border-radius: 20px"
												src="../download?image=bgr2.jpg" alt="Product Name">
										</h3>
									</div>
								</li>
								<li>
									<div class="w3l_banner_nav_right_banner">
										<h3>
											<img style="width: 100%; border-radius: 20px"
												src="../download?image=bgr3.png" alt="Product Name">
										</h3>
									</div>
								</li>
								<li>
									<div class="w3l_banner_nav_right_banner">
										<h3>
											<img style="width: 100%; border-radius: 20px"
												src="../download?image=bgr4.png" alt="Product Name">
										</h3>
									</div>
								</li>
								<li>
									<div class="w3l_banner_nav_right_banner">
										<h3>
											<img style="width: 100%; border-radius: 20px"
												src="../download?image=bgr5.png" alt="Product Name">
										</h3>
									</div>
								</li>

							</ul>
						</div>
					</section>
					<script defer src="../resource/client/js/jquery.flexslider2.js"></script>
					<script type="text/javascript">
						$(window).load(function() {
							$('.flexslider').flexslider({
								animation : "slide",
								start : function(slider) {
									$('body').removeClass('loading');
								}
							});
						});
					</script>

				</div>
			</div>
		</div>
	</section>
</body>
</html>