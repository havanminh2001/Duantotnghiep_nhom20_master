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

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
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

	<%@include file="common/header.jsp"%>
	<%@include file="common/category2.jsp"%>



	<section class="product-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="product__details__pic">
						<div class="product__details__pic__item">
							<img class="product__details__pic__item--large"
								src="../download?image=${product.image}" alt="">
						</div>
						<div class="product__details__pic__slider owl-carousel">
							<img data-imgbigurl="img/product/details/product-details-2.jpg"
								src="../download?image=${product.image}" alt="">
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="product__details__text">
						<h3>${product.productName}</h3>
						<div class="product__details__rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-half-o"></i> <span>(18 reviews)</span>
						</div>
						<div class="product__details__price">${product.price}VND</div>
						<p>${product.description}</p>
						<div class="product__details__quantity">
							<div class="quantity">
								<div class="pro-qty">
									<input type="text" value="1">
								</div>
							</div>
						</div>
						<a href="#" class="primary-btn">Thêm Vào Giỏ Hàng</a> <a href="#"
							class="heart-icon"><span class="icon_heart_alt"></span></a>
						<ul>
							<li><b>Availability</b> <span>In Stock</span></li>
							<li><b>Shipping</b> <span>01 day shipping. <samp>Free
										pickup today</samp></span></li>
							<li><b>Share on</b>
								<div class="share">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a> <a href="#"><i
										class="fa fa-instagram"></i></a> <a href="#"><i
										class="fa fa-pinterest"></i></a>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">Mô
									Tả</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab" aria-selected="false">Thông Tin</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-3" role="tab" aria-selected="false">Đánh Giá <span>(1)</span></a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>Thông tin sản phẩm</h6>
									<p>BỘ VI XỬ LÝ: HUAWEI Kirin 990 5G CPU: Octa-core 2 x
										Cortex-A76 2.86 GHz + 2 x Cortex-A76 2.36 GHz + 4 x Cortex-A55
										1.95 GHz GPU: Mali-G76 NPU: NPUs Hai lõi lớn + lõi nhỏ (bộ xử
										lý mạng thần kinh) HỆ ĐIỀU HÀNH: EMUI 10.1 (Dựa trên Android
										10) BỘ NHỚ: 8 GB RAM + 512 GB ROM</p>
									<p>*thiết bị của bạn đã được kiểm tra trong điều kiện môi
										trước được kiểm soát và được chứng nhận chống giọt bắn, nước
										và bụi trong các trường hợp nhất định (Đáp ứng đủ các yêu cầu
										phân loại IP68 như đã mô tả bởi tiêu chuẩn quốc tế IEC 60529).

										Thiết bị không thế chống nước và bụi vĩnh viễn và khả năng này
										sẽ suy giảm theo thời gian. Không sạc điện thoại khi đang bị
										ướt hoặc trong môi trường ẩm.</p>
									<p>Tham khảo sách hướng dẫn để biết cách vệ sinh và làm khô
										thiết bị. Các thiết bị gặp trục trặc do bị rơi vào chất lỏng
										sẽ không được bảo hành. *Chứng nhận IP68 có nghĩa là dựa trên
										các điều kiện kiểm tra cho trước, thiết bị được bảo vệ khi bị
										ngấm nước ở độ cao 1.5 mét trong khoảng 30 phút, trong khi đó
										nhiệt độ chênh lệch giữa nước và thiết bị không lớn hơn 5K..</p>
								</div>
							</div>
							<div class="tab-pane" id="tabs-2" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>Thông Tin Phụ Kiện</h6>
									<p>Điện thoại (bao gồm cả pin) x 1 Bộ sạc x 1 Cáp USB
										Type-C x 1 Tai nghe USB Type-C x 1 Ốp bảo vệ x 1 (không có sẵn
										ở Tây Âu và Đông Bắc Âu) Hướng dẫn nhanh x 1 Que chọc SIM x 1
										Thẻ bảo hành x 1 Tặng kèm cổng chuyển đầu sạc 3 chấu sang 2
										chấu x1 *Có thể khác nhau ở từng thị trường. Liên hệ kênh bán
										hàng địa phương để được xem danh sách chi tiết hơn.</p>
									<p>Đối với điện thoại thông minh, máy tính bảng, laptop,
										đồng hồ, vòng đeo thông minh, tai nghe freebuds, SoundX: Bảo
										hành 12 tháng Đổi máy trong 30 ngày đầu Hỗ trợ vận chuyển miễn
										phí hai chiều đối với sản phẩm đủ điều kiện bảo hành Địa điểm
										trung tâm bảo hành, vui lòng truy cập trang web của Huawei
										hoặc ứng dụng Hỗ Trợ (Support) trên điện thoại Mọi</p>
								</div>
							</div>
							<div class="tab-pane" id="tabs-3" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>Camera Điện Thoại</h6>
									<p>CAMERA: Camera sau: 50MP Ultra Vision Camera (Góc rộng,
										khẩu độ f/1.9, OIS) + 40MP Cine Camera (Góc siêu rộng, khẩu độ
										f/1.8) + 8MP SuperZoom Camera (Zoom quang học 10X, khẩu độ
										f/4.4, OIS) + 8MP Telephoto Camera (Zoom quang học 3X, khẩu độ
										f/2.4, OIS) + 3D Depth Sensing Camera Chế độ tự lấy nét: Tự
										động lấy nét Ổn định hình ảnh: OIS + AIS Chế độ Zoom: Zoom kỹ
										thuật số, Zoom quang học, Hybrid Zoom Quay Video: Hỗ trợ quay
										video 4K (3840 x 2160 pixel) 60fps Độ phân giải hình ảnh: Hỗ
										trợ đến 8192 x 6144 pixel Độ phân giải video: Hỗ trợ đến 3840
										x 2160 pixel</p>
									<p>PIN: 4200 mAh (Giá trị điển hình) *Dung lượng định mức
										của pin là 4100 mAh. **Giá trị điển hình. Dung lượng thực tế
										có thể khác nhau một chút. Đây là dung lượng pin trên danh
										nghĩa. Dung lượng pin thật sử của từng chiếc điện thoại có thể
										cao hoặc thấp hơn một chút so với dung lượng pin trên danh
										nghĩa. ***Pin không thể tháo rời. Tháo pin có thể gây hỏng
										thiết bị. Để thay thế hoặc sửa pin, vui lòng ghé qua một Trung
										tâm bảo hành ủy quyền của HUAWEI.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="related-product">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title related__product__title">
						<h2>Sản phẩm liên quan</h2>
					</div>
				</div>
			</div>
			<div class="row">


				<div class="product__discount__slider owl-carousel">
					<c:forEach items="${hotTwo}" var="product">

						<div class="col-lg-6">
							<div class="product__discount__item">
								<div class="product__discount__item__pic set-bg"
									data-setbg="../download?image=${product.image}">
									<div style="margin-left: 20px; margin-bottom: 5px;"
										class="product__discount__percent">-${product.saleDTO.salePercent}%</div>
									<ul class="product__item__pic__hover">
										<li><a href="add-to-cart?productId=${product.productId}"><i
												class="fa fa-heart"></i></a></li>
										<li><a href="#"><i class="fa fa-retweet"></i></a></li>
										<li><a href="add-to-cart?productId=${product.productId}"><i
												class="fa fa-shopping-cart"></i></a></li>
										<li><a
											href="product-details?productId=${product.productId}"
											style="text-decoration: none;"><i class=" ">-${product.saleDTO.salePercent}%</i></a>
										</li>
									</ul>
								</div>
								<div class="product__discount__item__text">

									<h5>
										<a href="product-details?productId=${product.productId}">${product.productName}</a>
									</h5>
									<div class="product__item__price">
										${product.price - (product.price
													* product.saleDTO.salePercent / 100)}
										VND<span>${product.price} VND</span>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	<%@include file="common/footer.jsp"%>

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