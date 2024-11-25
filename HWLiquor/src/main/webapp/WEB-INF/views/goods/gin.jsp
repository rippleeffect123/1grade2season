<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWLiquor/진</title>
<link rel="stylesheet" href="/resources/css/gin.css">
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/pager.css">
<script type="text/javascript" src="/resources/script/gin.js"></script>
</head>
<body>
<div class="container">
 		<jsp:include page="../header.jsp"></jsp:include>
        <h2 class="c-title">진/럼</h2>
        <div class="category">
            <div class="Clist">
                <div><button data-categoryid="0" class="cbtn">ALL</button></div>
                <div><button data-categoryid="9" class="cbtn">Gin</button></div>
                <div><button data-categoryid="10" class="cbtn">Rum</button></div>
                <div><button data-categoryid="11" class="cbtn">Drink</button></div>
                <div><button data-categoryid="12" class="cbtn">Syrup</button></div>
               
            </div>
        </div>
        <div class="top-img">
            <img src="/resources/images/gintop_img.png" alt="진이미지">
        </div>
			<div class="item-box" id="list">
       			<jsp:include page="ginlist.jsp"></jsp:include>
			</div>
        <div class="page">
            <span><button class="p_rev"><a href="?page=1${pager.query}"><img src="/resources/images/doublerev-gray.png" alt="끝으로"></a></button></span>
            <span><button class="p_rev"><a href="?page=${pager.prev}${pager.query}"><img src="/resources/images/rev-gray.png" alt="뒤로가기"></a></button></span>
            
            <c:forEach var="page" items="${pager.list}">
            <span><button class="p_btn" onclick="location.href = ?page='${page}${pager.query}'">${page}</button></span>
            </c:forEach>
            
            <span><button class="p_next"><a href="?page=${pager.next}${pager.query}"><img src="/resources/images/next-gray.png" alt="다음"></a></button></span>
            <span><button class="p_next"><a href="?page=${pager.last}${pager.query}"><img src="/resources/images/nextpage-gray.png" alt="마지막"></a></button></span>
        </div>
    </div>
</body>
</html>