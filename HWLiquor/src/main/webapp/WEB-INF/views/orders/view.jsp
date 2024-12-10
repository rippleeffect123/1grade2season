<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/resources/css/orders/orders.css">
</head>
<body>
	<div class="container">
		<div>
			<jsp:include page="../header.jsp"></jsp:include>
		</div>
		
		<div>
			<h3>주문 상세정보</h3>
		</div>
		
		<div>
			<div>
				<div><label>주문번호:</label></div>
				<div>${item.id}</div>
			</div>
			
			<div>
				<div><label>주문자:</label></div>
				<div>${item.memberId}</div>
			</div>
			
			<div>
				<div><label>주문일자:</label></div>
				<div><fmt:formatDate value="${item.orderDate}" pattern="yyyy년 MM월 dd일"/></div>
			</div>
			
			<div>
				<div>
					<table border="1" class="table table-sm">
						<thead class="table-dark">
							<tr>
								<th>상세번호</th>
								<th>주문번호</th>
								<th>제품번호</th>
								<th>주문수량</th>
							</tr>
						</thead>
						
						<tbody>
							<c:if test="${item.details == null || item.details.size() < 1}">
								<tr>
									<td colspan="4">상세내역이 없습니다</td>
								</tr>
							</c:if>
							
							<c:forEach var="detail" items="${item.details}">
								<tr>
									<td>${detail.id}</td>
									<td>${detail.ordersId}</td>
									<td>${detail.productId}</td>
									<td>${detail.amount}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
		<div>
			<div><a href="/" class="btn btn-sm btn-secondary">처음으로</a></div>
		</div>
	</div>
</body>
</html>