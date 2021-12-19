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
	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>Sản Phẩm HOT Nhất Trong Năm</h2>
					</div>
				</div>
			</div>

			<c:forEach items="${hotTwo}" var="product">
				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
					<div class="featured__item">
						<div
							style="border-radius: 40px 40px 40px 40px; margin-left: 20px; margin-bottom: 5px;"
							class="btn btn-warning">-${product.saleDTO.salePercent}%</div>


						<div class="featured__item__pic set-bg"
							data-setbg="../download?image=${product.image}">
							<ul class="featured__item__pic__hover">
								<li><a href="add-to-cart?productId=${product.productId}"><i
										class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="add-to-cart?productId=${product.productId}"><i
										class="fa fa-shopping-cart"></i></a></li>
								<li><a
									href="product-details?productId=${product.productId}"
									style="text-decoration: none;"><i class=" ">-${product.saleDTO.salePercent}%</i></a></li>
							</ul>
						</div>
						<div class="featured__item__text">
							<h6>
								<a href="product-details?productId=${product.productId}">${product.productName}</a>
							</h6>
							<c:if test="${product.saleDTO.salePercent == 0}">
								<h5>${product.price - (product.price *
									product.saleDTO.salePercent / 100)}
									VND</h5>
							</c:if>

							<c:if test="${product.saleDTO.salePercent != 0}">
								<h5>${product.price - (product.price * product.saleDTO.salePercent/100)}
									VND</h5>
							</c:if>
						</div>
					</div>
				</div>
			</c:forEach>



			<c:forEach items="${hotOne}" var="product">
				<div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
					<div class="featured__item">
						<div
							style="border-radius: 40px 40px 40px 40px; margin-left: 20px; margin-bottom: 5px;"
							class="btn btn-warning">-${product.saleDTO.salePercent}%</div>
						<div class="featured__item__pic set-bg"
							data-setbg="../download?image=${product.image}">
							<ul class="featured__item__pic__hover">
								<li><a href="add-to-cart?productId=${product.productId}"><i
										class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="add-to-cart?productId=${product.productId}"><i
										class="fa fa-shopping-cart"></i></a></li>
								<li><a
									href="product-details?productId=${product.productId}"
									style="text-decoration: none;"><i>-${product.saleDTO.salePercent}%</i></a></li>
							</ul>
						</div>
						<div class="featured__item__text">
							<h6>
								<a href="product-details?productId=${product.productId}">${product.productName}</a>
							</h6>
							<c:if test="${product.saleDTO.salePercent == 0}">
								<h5>${product.price - (product.price *
									product.saleDTO.salePercent / 100)}</h5>
							</c:if>


							<c:if test="${product.saleDTO.salePercent != 0}">
								<h6 style="text-decoration: line-through">${product.price}</h6>
								<h5>${product.price - (product.price * product.saleDTO.salePercent / 100)}
								</h5>
							</c:if>

						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</section>
</body>
</html>