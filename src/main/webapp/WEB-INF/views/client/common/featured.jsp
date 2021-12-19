<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="latest-product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<h4>Sản Phẩm Hot</h4>
						<div class="latest-product__slider owl-carousel">
							<div class="latest-prdouct__slider__item">
								<c:forEach items="${hotTwo}" var="product">
									<a href="product-grid2" class="latest-product__item">
										<div class="latest-product__item__pic">
											<img src="../download?image=${product.image}" alt="">
										</div>
										<div class="latest-product__item__text">
											<h6>${product.productName}</h6>
											<span>${product.price} VND</span>
										</div>
									</a>
								</c:forEach>

							</div>
							<div class="latest-prdouct__slider__item">
								<c:forEach items="${hotOne}" var="product">
									<a href="product-grid2" class="latest-product__item">
										<div class="latest-product__item__pic">
											<img src="../download?image=${product.image}" alt="">
										</div>
										<div class="latest-product__item__text">
											<h6>${product.productName}</h6>
											<span>${product.price} VND</span>
										</div>
									</a>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<h4>Xếp Hạng Cao Nhất</h4>
						<div class="latest-product__slider owl-carousel">
							<div class="latest-prdouct__slider__item">
								<c:forEach items="${featuredOne}" var="product">
									<a href="product-grid2" class="latest-product__item">
										<div class="latest-product__item__pic">
											<img src="../download?image=${product.image}" alt="">
										</div>
										<div class="latest-product__item__text">
											<h6>${product.productName}</h6>
											<span>${product.price} VND</span>
										</div>
									</a>
								</c:forEach>

							</div>
							<div class="latest-prdouct__slider__item">
								<c:forEach items="${hotTwo}" var="product">
									<a href="product-grid2" class="latest-product__item">
										<div class="latest-product__item__pic">
											<img src="../download?image=${product.image}" alt="">
										</div>
										<div class="latest-product__item__text">
											<h6>${product.productName}</h6>
											<span>${product.price} VND</span>
										</div>
									</a>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<h4>Bán Chạy Nhất</h4>
						<div class="latest-product__slider owl-carousel">

							<div class="latest-prdouct__slider__item">
								<c:forEach items="${hotTwo}" var="product">
									<a href="product-grid2" class="latest-product__item">
										<div class="latest-product__item__pic">
											<img src="../download?image=${product.image}" alt="">
										</div>
										<div class="latest-product__item__text">
											<h6>${product.productName}</h6>
											<span>${product.price} VND</span>
										</div>
									</a>
								</c:forEach>

							</div>
							<div class="latest-prdouct__slider__item">
								<c:forEach items="${featuredOne}" var="product">
									<a href="product-grid2" class="latest-product__item">
										<div class="latest-product__item__pic">
											<img src="../download?image=${product.image}" alt="">
										</div>
										<div class="latest-product__item__text">
											<h6>${product.productName}</h6>
											<span>${product.price} VND</span>
										</div>
									</a>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>