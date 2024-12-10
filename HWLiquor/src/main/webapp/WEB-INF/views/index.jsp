<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWLiquor/메인페이지</title>
<link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
	<div>
		<jsp:include page="header.jsp"></jsp:include>
		<div class="main-img">
			<img src="/resources/images/main-img.png">
		</div>
		<div class="liquor">
			<div class="main-cimg">
				<img src="/resources/images/cimg.png"> <a href="goods/wine"
					style="font-family: 'Noto Sans', sans-serif;">더보기 +</a>
			</div>
			<div class="wine-content">
				<div class="category-img">
					<img src="/resources/images/Rectangle 6.png">
				</div>
				<ul class="items">
				<c:if test="${wine == null || wine.size() < 1}">
					<li>등록 된 상품이 없습니다.</li>
				</c:if>
				
				<c:forEach var="item" items="${wine}" end="9">
				 <li class="goods-box">
                        <div class="photo-box"><img src="${pageContext.request.contextPath}/upload/${item.photo[0].uuid}_${item.photo[0].filename}" class="photo" /></div>
                        <div class="info-box"><a href="product/item/${item.id}">
                        <div class="product-name">${item.nameEng}</div>
                        <p class="product-price"><fmt:formatNumber value="${item.price}" pattern="#,###"></fmt:formatNumber>원</p></a></div>
                    </li>
				</c:forEach>
				</ul>
			</div>
		</div>

		<div class="liquor">
			<div class="main-cimg">
				<img src="resources/images/cimg2.png"> <a href="goods/whisky"
					style="font-family: 'Noto Sans', sans-serif;">더보기 +</a>
			</div>
			<div class="wine-content">
				<div class="category-img">
					<img src="resources/images/whiskey.png">
				</div>
				<ul class="items">
					<c:if test="${whiskey == null || whiskey.size() < 1}">
					<li>등록 된 상품이 없습니다.</li>
				</c:if>
				
				<c:forEach var="item" items="${whiskey}" end="9">
				 <li class="goods-box">
                        <div class="photo-box"><img src="${pageContext.request.contextPath}/upload/${item.photo[0].uuid}_${item.photo[0].filename}" class="photo" /></div>
                        <div class="info-box"><a href="product/item/${item.id}">${item.nameEng}<p><fmt:formatNumber value="${item.price}" pattern="#,###"></fmt:formatNumber>원</p></a></div>
                    </li>
				</c:forEach>
				</ul>
			</div>
		</div>

		<div class="liquor">
			<div class="main-cimg">
				<img src="resources/images/cimg3.png"> <a href="goods/brandy"
					style="font-family: 'Noto Sans', sans-serif;">더보기 +</a>
			</div>
			<div class="wine-content">
				<div class="category-img">
					<img src="resources/images/brandy.png">
				</div>
				<ul class="items">
					<c:if test="${brandy == null || brandy.size() < 1}">
					<li>등록 된 상품이 없습니다.</li>
				</c:if>
				
				<c:forEach var="item" items="${brandy}" end="9">
				 <li class="goods-box">
                        <div class="photo-box"><img src="${pageContext.request.contextPath}/upload/${item.photo[0].uuid}_${item.photo[0].filename}" class="photo" /></div>
                        <div class="info-box"><a href="product/item/${item.id}">${item.nameEng}<p><fmt:formatNumber value="${item.price}" pattern="#,###"></fmt:formatNumber>원</p></a></div>
                    </li>
				</c:forEach>
				</ul>
			</div>
		</div>

		<div class="liquor">
			<div class="main-cimg">
				<img src="resources/images/cimg4.png"> <a href="goods/vodka"
					style="font-family: 'Noto Sans', sans-serif;">더보기 +</a>
			</div>
			<div class="wine-content">
				<div class="category-img">
					<img src="resources/images/vodka.png">
				</div>
				<ul class="items">
					<c:if test="${liquor == null || liquor.size() < 1}">
					<li>등록 된 상품이 없습니다.</li>
				</c:if>
				
				<c:forEach var="item" items="${liquor}" end="9">
				 <li class="goods-box">
                        <div class="photo-box"><img src="${pageContext.request.contextPath}/upload/${item.photo[0].uuid}_${item.photo[0].filename}" class="photo" /></div>
                        <div class="info-box"><a href="product/item/${item.id}">${item.nameEng}<p><fmt:formatNumber value="${item.price}" pattern="#,###"></fmt:formatNumber>원</p></a></div>
                    </li>
				</c:forEach>
				</ul>
			</div>
		</div>

		<div class="liquor">
			<div class="main-cimg">
				<img src="resources/images/cimg5.png"> <a href="goods/gin"
					style="font-family: 'Noto Sans', sans-serif;">더보기 +</a>
			</div>
			<div class="wine-content">
				<div class="category-img">
					<img src="resources/images/gin.png">
				</div>
				<ul class="items">
					<c:if test="${gin == null || gin.size() < 1}">
					<li>등록 된 상품이 없습니다.</li>
				</c:if>
				
				<c:forEach var="item" items="${gin}" end="9">
				 <li class="goods-box">
                        <div class="photo-box"><img src="${pageContext.request.contextPath}/upload/${item.photo[0].uuid}_${item.photo[0].filename}" class="photo" /></div>
                        <div class="info-box"><a href="product/item/${item.id}">${item.nameEng}<p><fmt:formatNumber value="${item.price}" pattern="#,###"></fmt:formatNumber>원</p></a></div>
                    </li>
				</c:forEach>
				</ul>
			</div>
		</div>

	</div>

</body>
</html>