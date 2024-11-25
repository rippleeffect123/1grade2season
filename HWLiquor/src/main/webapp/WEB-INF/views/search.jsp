<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWLiquour/검색결과</title>
<link rel="stylesheet" href="/resources/css/category.css">
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/pager.css">
</head>
<body>

 <div class="container">
 		<jsp:include page="header.jsp"></jsp:include>
        <h2 class="c-title">검색결과</h2>
        <div class="top-img">
            <img src="/resources/images/searchtop_img.png" alt="검색결과이미지">
        </div>
			<c:if test="${search == null || search.size() < 1}">
					<li>검색 된 상품이 없습니다.</li>
				</c:if>
		<div class="search-list">
		<c:forEach items="${search}" var="item">
			<div class="items-box">
				<div class="photo-box"><img src="${pageContext.request.contextPath}/upload/${item.photo[0].uuid}_${item.photo[0].filename}" class="photo" /></div>
                        <div class="info-box"><a href="product/item/${item.id}">
                        <div class="product-name">${item.nameEng}</div>
                        <p class="product-price"><fmt:formatNumber value="${item.price}" pattern="#,###"></fmt:formatNumber>원</p></a></div>
			</div>
		</c:forEach>
		</div>
        <div class="page">
            <span><button class="p_rev"><a href="?page=1${pager.query}"><img src="/resources/images/doublerev-gray.png" alt="끝으로"></a></button></span>
            <span><button class="p_rev"><a href="?page=${pager.prev}${pager.query}"><img src="/resources/images/rev-gray.png" alt="뒤로가기"></a></button></span>
            
            <c:forEach var="page" items="${pager.list}">
            <span><button class="p_btn" onclick="location.href = ?page='${page}${pager.query}'">${page}</button></span>
            </c:forEach>
            
            <span><button class="p_next"><a href="?page=${pager.next}${pager.query}"><img src="/resources/images/next-gray.png" alt="다음"></a></button></span>
            <span><button class="p_next"><a href="?page=${pager.last}${pager.query}"><img src="/resources/images/nextpage-gray.png" alt="마지막"></a></button></span>
        </div>
    </div>
</body>
</html>