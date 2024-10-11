<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<jsp:include page="head.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<div>
			<h3>PolyCafe</h3>
		</div>
		
		<nav>
			<jsp:include page="nav.jsp"></jsp:include>
		</nav>
		
		
		<div>
			<ul>
				<li><a href="member/list">회원관리</a></li>
				<li><a href="product/list">제품관리</a></li>
			</ul>
		</div>
		
		<div>
			<ul>
				<c:if test="${products == null || products.size() < 1}">
				<li>등록 된 상품이 없습니다.</li>
				</c:if>
				
				<c:forEach var="item" items="${products}">
				<li><a href="product/item/${item.id}">${item.name}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>