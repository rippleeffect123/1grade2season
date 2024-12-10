<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${whiskeyList == null || whiskeyList.size() < 1}">
			<li>등록 된 상품이 없습니다.</li>
	</c:if>
	
	<c:forEach items="${whiskeyList}" var="item">
		<div class="items-box">
			<div class="photo-box"><img src="${pageContext.request.contextPath}/upload/${item.photo[0].uuid}_${item.photo[0].filename}" class="photo" /></div>
                        <div class="info-box"><a href="${pageContext.request.contextPath}/product/item/${item.id}">
                        <div class="product-name">${item.nameEng}</div>
                        <p class="product-price"><fmt:formatNumber value="${item.price}" pattern="#,###"></fmt:formatNumber>원</p></a></div>
		</div>
	</c:forEach>
</body>
</html>