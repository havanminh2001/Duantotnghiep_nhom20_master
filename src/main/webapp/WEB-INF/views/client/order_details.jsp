<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Ogani | Template</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="../resource/client/css/bootstrap.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>



<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="../resource/client/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="../resource/client/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="../resource/client/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="../resource/client/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="../resource/client/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet"
	href="../resource/client/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="../resource/client/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="../resource/client/css/style.css"
	type="text/css">
</head>

<body>
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<jsp:include page="common/header.jsp" />
	<section class="shoping-cart spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__table">

						<table>
							<thead>
								<tr>

									<th style="width: 20%">Ảnh Sản Phẩm</th>
									<th>Chi Tiết Sản Phẩm</th>
									<th>Giá Sản Phẩm</th>
									<th>Số Lượng</th>
									<th>Tổng Tiền</th>
									<th>Đánh Giá</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${items}" var="item">
									<tr>
										<td><a
											href="product-details?productId=${item.productDTO.productId}"><img
												style="max-width: 60%"
												src="../download?image=${item.productDTO.image}" alt=""></a></td>
										<td>
											<div class="shop-details">
												<div class="productname">${item.productDTO.productName}</div>
												<p>
													<img alt="" src="../resource/client/images/star.png">
													<a class="review_num" href="#"> 02 Review(s) </a>
												</p>

												<p>${product.description}</p>
												<p>
													Sale : <strong class="pcode">-${item.productDTO.saleDTO.salePercent}%</strong>
												</p>
												<p>
													Mã Sản Phẩm : <strong class="pcode">${item.productDTO.productId}</strong>
												</p>
											</div>
										</td>
										<td>
											<h5 style="color: #41B314; font-weight: bold;">
												${item.unitPrice} VND</h5> <c:if
												test="${item.productDTO.saleDTO.salePercent > 0}">
												<p
													style="font-size: 16px; padding-top: 7px; text-decoration: line-through;">${item.productDTO.price}
													VND</p>
											</c:if>
										</td>
										<td><select name="quantity">
												<option value="${item.quantity}">${item.quantity}</option>
												<input type="hidden" value="${item.productDTO.productId}"
												name="productId" />
										</select></td>
										<td>
											<h5>
												<strong class="red"> ${item.unitPrice *
															item.quantity}
													VND </strong>
											</h5>
										</td>
										<td>
										<div>
										<select>
												<c:forEach begin="1" end="5" var="i">
													<option 
														<c:if test="${i == 5}">
																selected="selected"
																</c:if>>${i}
														Star</option>
												</c:forEach>
										</select>
									 </td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									
									<td colspan="6">

										<p class="pull-right" style="display: flex; border: none;">
											<i class="material-icons"
												style="margin-top: -5px; color: #00ACC1; margin-right: 1px;">&#xe0c8;</i>
											<i class="title"
												style="font-size: 17px; color: #00ACC1; font-weight: bold;">
												${sessionScope.user.fullname} * ${sessionScope.user.address}
												* ${sessionScope.user.phone}</i>
										</p>
										
									</td>
								</tr>
							</tfoot>
						</table>
						<a href="home" class="btn btn-outline-danger">Tiếp Tục Mua
										Sắm</a>
					</div>
				</div>
			</div>


		</div>


	</section>
	<jsp:include page="common/footer.jsp" />

	<script src="../resource/client/js/jquery-3.3.1.min.js"></script>
	<script src="../resource/client/js/bootstrap.min.js"></script>
	<script src="../resource/client/js/jquery.nice-select.min.js"></script>
	<script src="../resource/client/js/jquery-ui.min.js"></script>
	<script src="../resource/client/js/jquery.slicknav.js"></script>
	<script src="../resource/client/js/mixitup.min.js"></script>
	<script src="../resource/client/js/owl.carousel.min.js"></script>
	<script src="../resource/client/js/main.js"></script>


</body>

</html>