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
	<div class="filter__item">
		<div class="row">
			<div class="col-lg-4 col-md-5">
				<div class="filter__sort">
					<form action="search" method="get">
						<div class="sort-by">
							Sắp Xếp Giá : <select name="sort" onchange="this.form.submit()">
								<option
									<c:if test="${sort eq 'default'}">
						selected="selected"
						</c:if>
									value="default">Mặc Định</option>
								<option
									<c:if test="${sort eq 'ASC'}">
						selected="selected"
						</c:if>
									value="ASC">Tăng Dần</option>
								<option
									<c:if test="${sort eq 'DESC'}">
						selected="selected"
						</c:if>
									value="DESC">Giảm Dần</option>
							</select> <input type="hidden" value="${categoryId}" name="categoryId" />
							<input type="hidden" value="${pricing}" name="pricing" /> <input
								type="hidden" value="${text}" name="text" /> <input
								type="hidden" name="pageIndex" value="${pageIndex}" />
						</div>
					</form>
				</div>
			</div>
			<div style="margin-bottom: 50px" class="limiter">
				<form action="search" method="get">
					<select name="pageSize" onchange="this.form.submit()">
						<option
							<c:if test="${pageSize == 6}">
						selected="selected"
						</c:if>
							value="3">Hiển Thị</option>
						<option
							<c:if test="${pageSize == 3}">
						selected="selected"
						</c:if>
							value="3">Hiển Thị : 3</option>
						<option
							<c:if test="${pageSize == 6}">
						selected="selected"
						</c:if>
							value="6">Hiển Thị : 6</option>
						<option
							<c:if test="${pageSize == 9}">
						selected="selected"
						</c:if>
							value="9">Hiển Thị : 9</option>
					</select> <input type="hidden" value="${categoryId}" name="categoryId" /> <input
						type="hidden" value="${pricing}" name="pricing" /> <input
						type="hidden" value="${text}" name="text" />
				</form>
			</div>
			<div class="limiter">
				<form class="pricing" action="search" method="get">
					<select name="pricing" onchange='this.form.submit()'>
						<option
							<c:if test="${pricing eq 'default'}">
										selected="selected"
										</c:if>
							value="default">Find by price</option>
						<option
							<c:if test="${pricing eq 'under50'}">
										selected="selected"
										</c:if>
							value="under50">0$ - 50$</option>
						<option
							<c:if test="${pricing eq '50to70'}">
										selected="selected"
										</c:if>
							value="50to70">50$ - 70$</option>
						<option
							<c:if test="${pricing eq 'greaterthan70'}">
										selected="selected"
										</c:if>
							value="greaterthan70">70$ --></option>
						<input type="hidden" name="categoryId" value="${categoryId}" />
						<input type="hidden" name="text" value="${text}" />
					</select>
				</form>
			</div>
			<div class="col-lg-4 col-md-3">
				<div class="filter__option">
					<span class="icon_grid-2x2"></span> <span class="icon_ul"></span>
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>