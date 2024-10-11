<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<jsp:include page="head.jsp"></jsp:include>
</head>
<body>
<div>
	<div>
		<h3>장바구니</h3>
	</div>
	<table class="table table-sm">
		<thead class="table-dark">
			<tr>
				<th>제품번호</th>
				<th>제품명</th>
				<th>수량</th>
				<th>단가</th>
				<th>주문금액</th>
				<th>관리</th>
			</tr>
		</thead>
		
		<tbody>
			<c:if test="${cart.cart.size() < 1}">
				<tr>
					<td colspan="5">장바구니에 등록 된 제품이 없습니다</td>
				</tr>	
			</c:if>
			
			<c:forEach var="item" items="${list}">
				<tr>
					<td>${item.id}</td>
					<td>${item.name}</td>
					<td>${cart.cart.get(item.id)}</td>
					<td>${item.price}</td>
					<td>${item.price * cart.cart.get(item.id)}</td>
					<td></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<div>
		<div><a href=".">처음으로</a></div>
	</div>
	</div>

</body>
</html>