<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="home">
	<section class="hero hero-normal">
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
				</div>
			</div>
		</div>
	</section>

	<section class="breadcrumb-section set-bg"
		data-setbg="../resource/client/img/breadcrumb.jpg">

		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>-</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a> <span>Shop</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>