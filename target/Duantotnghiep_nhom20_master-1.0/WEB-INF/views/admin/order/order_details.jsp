<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link href="../resource/admin/assets/css/style.css" rel="stylesheet">

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
						<div class="panel-heading">
							<h3 class="panel-title">ORDER DETAILS</h3>
							<div class="right">
								<button type="submit">
									<a href="order-list"><span class="btn btn-secondary"
										style="font-size: 15px; margin-right: 15px;">Cancel</span></a>
								</button>
								<c:if test="${order.status eq 'PENDING'}">
								<a href="order-update?orderId=${order.orderId}"><span class="btn btn-warning" style="font-size: 15px; margin-right: 15px;">Accept</span></a>
								</c:if>
								<c:if test="${order.status eq 'SUCCESS'}">
								<span  class="btn btn-success" style="font-size: 15px; margin-right: 15px;">Success</span>
								</c:if>
							</div>
						</div>
						<div class="panel-body no-padding">
							<table class="shop-table" style="padding: 30px;">
								<thead>
									<tr>
										<th>Image</th>
										<th>Invoice details</th>
										<th>Price</th>
										<th>Quantity</th>
										<th>Total Amount</th>
										<!-- <th>Vote</th> -->
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${items}" var="item">
										<tr>
											<td><a
												href="product-details?productId=${item.productDTO.productId}"><img
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
														Product ID	 : <strong class="pcode">${item.productDTO.productId}</strong>
													</p>
												</div>
											</td>
											<td>
												<h5 style="color: #41B314; font-weight: bold;"> ${item.unitPrice} VND</h5>
												<c:if test="${item.productDTO.saleDTO.salePercent > 0}">
													<p
														style="font-size: 16px; padding-top: 7px; text-decoration: line-through;"> ${item.productDTO.price} VND</p>
												</c:if>
											</td>
											<td><select name="quantity" style="color: red;">
													<option value="${item.quantity}">${item.quantity}</option>
													<input type="hidden" value="${item.productDTO.productId}" name="productId" />
											</select></td>
											<td>
												<h5>
													<strong class="red" style="color: red;"> ${item.unitPrice *
														item.quantity} VND</strong>
												</h5>
											</td>
											<%-- <td><select>
													<c:forEach begin="1" end="5" var="i">
														<option
															<c:if test="${i == 5}">
																selected="selected"
																</c:if>>${i}
															Star</option>
													</c:forEach>
											</select></td> --%>
										</tr>
									</c:forEach>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="6"><span class="pull-left">Sale : <span style="color: red;">${order.priceTotal - 100000} VND</span></span><br />  </span>  <span  
											class="pull-left" style="font-size: 22px;">Total amount: <span style="color: red;">${order.priceTotal} VND</span>
										</span>
											<p class="pull-right" style="display: flex; border: none;">
												<i class="large material-icons"
													style="margin-top: -30px; color: #00FF00	; margin-right: 4px;"></i>
												<i class="title"
													style="font-size: 17px; color: #AA0000; font-weight: bold; margin-top: -30px;">Name :
													${order.userDTO.fullname}  --->   address : ${order.userDTO.address}   --->  phone :
													${order.userDTO.phone}</i><br/>
													 
											</p>
											</td>
									</tr>
								</tfoot>
							</table>
						</div>
						<div id="headline-chart" class="ct-chart"></div>
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