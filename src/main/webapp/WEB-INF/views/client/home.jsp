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

<body id="home">
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<div class="wrapper">
		<%-- <%@include file="common/headerTop.jsp"%> --%>
		<%@include file="common/header.jsp"%>


		<div>
			<div class="container">
				<jsp:include page="common/conten.jsp"></jsp:include>
				<jsp:include page="common/category.jsp"></jsp:include>
				<jsp:include page="common/slider.jsp"></jsp:include>
				<jsp:include page="common/hot.jsp"></jsp:include>
				<jsp:include page="common/featured.jsp"></jsp:include>
				<jsp:include page="common/FromTheBlog.jsp"></jsp:include>
			</div>
		</div>

		<%@include file="common/footer.jsp"%>

		<!-- Js Plugins -->
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