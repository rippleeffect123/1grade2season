<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script
	src="${pageContext.request.contextPath}/resources/js/product/add.js"></script>
</head>
<body>
	<div class="container">
		<nav>
			<jsp:include page="../nav.jsp"></jsp:include>
		</nav>
		<div>
			<h3>제품 등록</h3>
		</div>

		<div>
			<form method="post" enctype="multipart/form-data" class="form-group">
				<div class="row mb-2">
					<div class="col-1">
						<label>제품명:</label>
					</div>
					<div class="col">
						<input type="text" name="name" class="form-control form-control-sm">
					</div>
				</div>

				<div class="row mb-2">
					<div class="col-1">
						<label>가격:</label>
					</div>
					<div class="col">
						<input type="number" name="price" class="form-control form-control-sm">
					</div>
				</div>

				<div class="row mb-2">
					<div class="col-1">
						<label>등급:</label>
					</div>
					<div class="col">
						<input type="text" name="grade" class="form-control form-control-sm">
					</div>
				</div>
					
				<div class="mb-2">
					<div><label>상세정보</label></div>
					<div><textarea id="info" name="info" class="form-control"></textarea></div>
				</div>
					
				<div class="row mb-2">
					<div class="row mb-2" >
						<div class="col-2"><label>제품 이미지:</label></div>
						<div class="col-2 d-grid"><button type="button" id="add_photo" class="btn btn-sm btn-primary">추가</button></div>
						<div class="col"></div>
					</div>

					<ul id="list_photo">
						<li>
							<div class="mb-2">
								<input type="file" name="uploadFile" class="form-control">
							</div>
						</li>
					</ul>
				</div>

				<div class="row mb-2">
					<div class="col-2">
						<div class="col d-grid"><button class="btn btn-sm btn-secondary">등록</button></div>
					</div>
					<div class="col-2">
						<a href="list" class="d-grid"><button type="button" class="btn btn-sm btn-danger">취소</button></a>
						<div class="col-6"></div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div id="temp_photo" style="display: none">
		<div class="row mb-2">
			<div class="col"><input type="file" name="uploadFile" class="form-control"></div>
			<div class="col-1"><button type="button" class="btn btn-sm btn-danger">삭제</button></div>
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