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
			<h3>주문내역</h3>
		</div>
		
		<div>
			<table border="1" class="table table-sm">
				<thead class="table-dark">
					<tr>
						<th>주문번호</th>
						<th>고객 아이디</th>
						<th>주문일시</th>
						<th>상세정보</th>
						<th>관리</th>						
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="5">주문내역이 없습니다</td>
						</tr>
					</c:if>
					
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.id}</td>
							<td>${item.memberId}</td>
							<td><fmt:formatDate value="${item.orderDate}" pattern="yyyy년 MM월 dd일"/></td>
							<td><a href="${item.id}">${item.details.size()} 건</a></td>
							<td><a href="delete/${item.id}" class="btn btn-sm btn-danger">삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div>
			<div><a href="/" class="btn btn-sm btn-secondary">처음으로</a></div>
		</div>
	</div>
</body>
</html>