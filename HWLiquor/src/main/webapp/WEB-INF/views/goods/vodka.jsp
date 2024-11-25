<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWLiquor/보드카</title>
<link rel="stylesheet" href="/resources/css/vodka.css">
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/pager.css">
<script type="text/javascript" src="/resources/script/vodka.js"></script>
</head>
<body>
<div class="container">
 		<jsp:include page="../header.jsp"></jsp:include>
        <h2 class="c-title">보드카/리큐르</h2>
        <div class="category">
            <div class="Clist">
                <div><button data-categoryid="0" class="cbtn">ALL</button></div>
                <div><button data-categoryid="6" class="cbtn">Vodka</button></div>
                <div><button data-categoryid="7" class="cbtn">Liquor</button></div>
                <div><button data-categoryid="8" class="cbtn">Tequila</button></div>
               
            </div>
        </div>
        <div class="top-img">
            <img src="/resources/images/vodkatop_img.png" alt="보드카이미지">
        </div>
			<div class="item-box" id="list">
       			<jsp:include page="vodkalist.jsp"></jsp:include>
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