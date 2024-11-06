<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<jsp:include page="../head.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<nav>
			<jsp:include page="../nav.jsp"></jsp:include>
		</nav>
		<div>
			<h3>제품 목록 (${pager.total.intValue()})</h3>
		</div>


		<div class="mb-2">
			<form class="row">
				<div class="col-6"></div>
				<div class="col-2">
					<select name="search" class="form-select form-select-sm">
						<option value="1">제품번호</option>
						<option value="2">제품명</option>
						<option value="3">브랜드</option>
					</select>
				</div>
				<div class="col-3">
					<input type="text" name="keyword" class="form-control form-control-sm d-grid">
				</div>
				<div class="col">
					<button class="btn btn-sm btn-info">검색</button>
				</div>
			</form>
		</div>

		<div>
			<table border="1" class="table table-sm table-striped">
				<thead class="table-dark">
					<tr>
						<th>제품번호</th>
						<th>제품명</th>
						<th>제품영명</th>
						<th>가격</th>
						<th>브랜드</th>
						<th>용량</th>
						<th>도수</th>
					</tr>
				</thead>

				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="7">검색 된 제품이 없습니다</td>
						</tr>
					</c:if>

					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.id}</td>
							<td><a href="view/${item.id}">${item.name}</a></td>
							<td>${item.nameEng}</td>
							<td>${item.price}</td>
							<td>${item.brand}</td>												
							<td>${item.vol}</td>												
							<td>${item.abv}</td>												
							<td><a href="update/${item.id}" class="btn btn-sm btn-info">변경</a> <a
								href="delete/${item.id}" class="btn btn-sm btn-danger">삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>

				<tfoot>
					<tr>
						<td colspan="9">
							<div class="pagination pagination-sm justify-content-center">
								<div class="page-item">
									<a href="?page=1${pager.query}" class="page-link" >처음</a>
								</div>
								<div class="page-item">
									<a href="?page=${pager.prev}${pager.query}" class="page-link">이전</a>
								</div>

								<c:forEach var="page" items="${pager.list}">
									<div class="page-item">
										<a href="?page=${page}${pager.query}" class="page-link${pager.page == page ? 'active' : '' }" >${page}</a>
									</div>
								</c:forEach>

								<div class="page-item">
									<a href="?page=${pager.next}${pager.query}" class="page-link">다음</a>
								</div>
								<div class="page-item">
									<a href="?page=${pager.last}${pager.query}" class="page-link">마지막</a>
								</div>
							</div>
						</td>
					</tr>
				</tfoot>
			</table>
		</div>

		<div class="row">
			<div class="col-6"></div>
			<div class="col">
				<a href="add" class="btn btn-sm btn-primary d-grid">등록</a>
			</div>
			<div class="col">
				<a href="dummy" class="btn btn-sm btn-secondary d-grid" >대량등록</a>
			</div>
			<div class="col">
				<a href="init" class="btn btn-sm btn-danger d-grid">초기화</a>
			</div >
			<div class="col">
				<a href=".." class="btn btn-sm btn-info d-grid">이전</a>
			</div> 
		</div>
	</div>
</body>
</html>