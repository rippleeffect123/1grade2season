<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWLiquor/제품관리</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pager.css">
 <link rel="stylesheet" href="/resources/css/plist.css">
 <script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/page.js"></script>
</head>
<body>
<div>
	<div>
		<jsp:include page="../header.jsp"></jsp:include> 
	</div>

	<div class="container">
		<div class="board_title">
			<h3>제품관리</h3>
		</div>
		<table border="1" class="t1">
			<thead>
				<tr>
					<th>제품명</th>
					<th>제품영명</th>
					<th>생산지</th>
					<th>가격</th>
					<th>브랜드</th>
					<th>용량</th>
					<th>도수</th>
				<tr>
			</thead>
			
			<tbody>
				<c:if test="${list.size() < 1}">
					<tr>
						<td colspan="9">검색 된 제품이 없습니다</td>
					<tr>
				</c:if>
				
				<c:forEach var="item" items="${list}">
					<tr>
						<td><a href="view/${item.id}">${item.name}</a></td>
						<td>${item.nameEng}</td>
						<td>${item.originName}</td>
						<td>${item.price}원</td>
						<td>${item.brand}</td>
						<td>${item.vol}ml</td>
						<td>${item.abv}%</td>
						<td class="btn-b">
						<div class="alt">
						<a href="update/${item.id}">변경</a>
						</div>
						<div class="del">
						<a href="delete/${item.id}">삭제</a>
						</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
			</tfoot>
		</table>
		
		<div class="btn_wrap">
			<div class="btn-a">
				<a href="add">등록</a>
			</div>
			<div class="danger">
				<a href="..">이전</a>
			</div>
		</div>
		
		<div class="page">
            <span><button class="p_rev"><a href="?page=1${pager.query}"><img src="${pageContext.request.contextPath}/resources/images/doublerev-gray.png" alt="처음으로"></a></button></span>
            <span><button class="p_rev"><a href="?page=${pager.prev}${pager.query}"><img src="${pageContext.request.contextPath}/resources/images/rev-gray.png" alt="뒤로가기"></a></button></span>
            
            <c:forEach var="page" items="${pager.list}">
            <span><button class="p_btn" onclick="location.href = ?page='${page}${pager.query}'">${page}</button></span>
            </c:forEach>
           
            <span><button class="p_next"><a href="?page=${pager.next}${pager.query}"><img src="${pageContext.request.contextPath}/resources/images/next-gray.png" alt="다음"></a></button></span>
            <span><button class="p_next"><a href="?page=${pager.last}${pager.query}"><img src="${pageContext.request.contextPath}/resources/images/nextpage-gray.png" alt="마지막"></a></button></span>
        	</div>
	</div>
	</div>

</body>
</html>