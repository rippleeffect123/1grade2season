<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWLiquor/제품 등록</title>

 <link rel="stylesheet" href="/resources/css/font.css">
    <link rel="stylesheet" href="/resources/css/add.css">
<link rel="stylesheet" href="/resources/summernote-bs5.min.css">

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.js"></script>
	<script src="/resources/lang/summernote-ko-KR.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/product/add.js">
</script>
</head>
<body>
<div class="container">
        <div class="logo">
            <h1><img src="${pageContext.request.contextPath}/resources/images/HW.png" alt="HWLiquor"></h1>
        </div>

        <div class="main-form">
            <h3>제품 등록</h3>
            <form method="post" enctype="multipart/form-data">
                <div class="input-box">
                	<div>
                        <p>카테고리 번호</p>
                    </div>
                    <div class="input-value">
                        <input type="number" name="categoryId">
                    </div>
                    
                    <div>
                        <p>국가 번호</p>
                    </div>
                    <div class="input-value">
                        <input type="number" name="originId">
                    </div>
                    
                    <div>
                        <p>생산 국가</p>
                    </div>
                    <div class="input-value">
                        <input type="text" name="originName">
                    </div>
                
                    <div>
                        <p>제품명</p>
                    </div>
                    <div class="input-value">
                        <input type="text" name="name">
                    </div>

                    <div>
                        <p>제품영명</p>
                    </div>
                    <div class="input-value">
                        <input type="text" name="nameEng">
                    </div>
					
                    <div>
                        <p>가격</p>
                    </div>
                    <div class="input-value">
                        <input type="number" name="price">
                    </div>

                    <div>
                        <p>브랜드</p>
                    </div>
                    <div class="input-value">
                        <input type="text" name="brand">
                    </div>

                    <div>
                        <p>용량</p>
                    </div>
                    <div class="input-value">
                        <input type="number" name="vol">
                    </div>

                    <div>
                        <p>도수</p>
                    </div>
                    <div class="input-value">
                        <input type="number" name="abv">
                    </div>

                    <div>
                        <p>상세정보</p>
                    </div>
                    <div class="input-value">
                        <textarea id="info" name="info"></textarea>
                    </div>

					<div>
					<div>
						<p>제품 이미지</p>
					</div>
					<div>
						<button type="button" id="add_photo">추가</button>
					</div>
					<ul id="list_photo">
						<li>
							<div class="input-value">
								<input type="file" name="uploadFile"">
							</div>
						</li>
					</ul>
					</div>
					
                    <div class="add-btn">
                        <button>
                            등록하기
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div id="temp_photo" style="display: none">
    	<div>
    		<input type="file" name="uploadFile" class="form-control">
    	</div>
    	<div><button type="button">삭제</button></div>
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