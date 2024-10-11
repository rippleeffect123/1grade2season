<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
			<h3>상품 상세정보</h3>
		</div>
		
		<div>
			<div>
				<div><label>상품번호:</label>${item.id}</div>				
			</div>
			
			<div>
				<div><label>상품명:</label>${item.name}</div>
			</div>
			
			<div>
				<div><label>가격:</label>${item.price}</div>
			</div>
			
			<div>
				<div><label>등급:</label>${item.grade}</div>
			</div>
			
			<div>
				<div><label>등록자:</label>${item.regId}</div>
			</div>
			
				<div>
				<div><label>등록일시:</label><fmt:formatDate value="${item.regDate}" pattern="yyyy년mm월dd일  hh:mm:ss"/></div>
			</div>
			
			<div>
				<div><label>변경자:</label>${item.updateId}</div>
			</div>
			
			<div>
				<div><label>변경일시:</label><fmt:formatDate value="${item.updateDate}" pattern="yyyy년mm월dd일  hh:mm:ss"/></div>
			</div>
			
			<div>
				<div><label>상세정보:</label></div>
				<div>${item.info}</div>
			</div>
			
			<div>
				<div><label>제품 이미지:</label></div>
				<c:if test="${item.photo == null || item.photo.size() < 1}">
					<div>제품이미지가 없습니다</div>
				</c:if>
								
				<c:forEach var="photo" items="${item.photo}">
					<div><img alt="제품 이미지" width="150" height="150" src="${pageContext.request.contextPath}/upload/${photo.uuid}_${photo.filename}"></div>
				</c:forEach>
			</div>
			
			<div>
				<div><a href="../list"><button>목록</button></a></div>
			</div>
		</div>
	</div>
</body>
</html>