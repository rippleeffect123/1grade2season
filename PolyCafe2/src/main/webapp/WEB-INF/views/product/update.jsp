<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<jsp:include page="../head.jsp"></jsp:include>
<script type="text/javascript" src="/resources/js/jquery-3.7.1.min.js"></script>
<link rel="stylesheet" href="/resources/summernote-bs5.min.css">
<script type="text/javascript" src="/resources/summernote-bs5.min.js"></script>
<script src="/resources/lang/summernote-ko-KR.js"></script>
<script src="/resources/js/product/update.js"></script>
<script src="/resources/js/product/add.js"></script>
</head>
<body>
	<div class="container">
		<nav>
			<jsp:include page="../nav.jsp"></jsp:include>
		</nav>
		<div>
			<h3>제품 정보 변경</h3>
		</div>

		<div>
			<form method="post" enctype="multipart/form-data">
				<div class="row mb-2">
					<div class="col">
						<label>제품번호: ${item.id}</label>
					</div>
				</div>
				<div class="row mb-2">
					<div class="col">
						<label>제품명:</label>
					</div>
					<div>
						<input type="text" name="name" value="${item.name}">
					</div>
				</div>

				<div class="row mb-2">
					<div class="col">
						<label>가격:</label>
					</div>
					<div>
						<input type="number" name="price" value="${item.price}">
					</div>
				</div>

				<div class="row mb-2">
					<div>
						<label>등급:</label>
					</div>
					<div>
						<input type="text" name="grade" value="${item.grade}">
					</div>
				</div>
				
				<div class="mb-2">
					<div><label>상세정보</label></div>
					<div><textarea id="info" name="info" class="form-control">${item.info}</textarea></div>
				</div>
				
				<div class="mb-2">
					<div class="row">
						<label>제품 이미지:</label>
					</div>
						<div class="col">
						<button type="button" id="add_photo">추가</button>
						</div>
					<div class="col mt-5">
					<ul id="list_photo">
						<li>
							<div>
								<input type="file" name="uploadFile">
							</div>
						</li>
					</ul>
					</div>

					<c:if test="${item.photo == null || item.photo.size() < 1}">
						<div>제품이미지가 없습니다</div>
					</c:if>

					<c:forEach var="photo" items="${item.photo}">
						<div class="photo">
							<div>
								<button type="button" class="delete_photo btn btn-sm btn-danger"
									data-photo="${photo.id}">삭제 ${photo.id}</button>
							</div>
							<div>
								<img alt="제품 이미지" width="150" height="150"
									src="${pageContext.request.contextPath}/upload/${photo.uuid}_${photo.filename}">
							</div>
						</div>
					</c:forEach>
				</div>

				<div class="row">
					<div class="col">
						<button class="btn btn-sm btn-primary d-grid">변경</button>
					</div>
					<div class="col">
						<a href="../list"><button type="button" class="btn btn-sm btn-danger d-grid">취소</button></a>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div id="temp_photo" style="display: none">
		<div>
			<input type="file" name="uploadFile">
			<button type="button" class="btn btn-sm btn-danger">삭제</button>
		</div>
	</div>
	<script type="text/javascript">
		$(() => {
			$("#info").summernote({
				lang: 'ko-KR',
			});
		})
	</script>
</body>
</html>