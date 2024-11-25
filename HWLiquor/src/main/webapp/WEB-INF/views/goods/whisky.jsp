<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWLiquor/위스키</title>
<link rel="stylesheet" href="/resources/css/whisky.css">
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/pager.css">
<script type="text/javascript" src="/resources/script/whiskey.js"></script>
</head>
<body>
<div class="container">
 		<jsp:include page="../header.jsp"></jsp:include>
        <h2 class="c-title">위스키</h2>
        <div class="category">
            <div class="Clist">
                <div><button data-originid="0" class="cbtn">ALL</button></div>
                <div><button data-originid="6" class="cbtn">American Whiskey</button>
                </div>
                <div><button data-originid="20" class="cbtn">Scotch whiskey</button></div>
                <div><button data-originid="21" class="cbtn">Irish whiskey</button></div>
                <div><button data-originid="10" class="cbtn">Canada whiskey</button></div>
                <div><button data-originid="22" class="cbtn">Japannes whiskey</button></div>
            </div>
        </div>
        <div class="top-img">
            <img src="/resources/images/whiskeytop_img.png" alt="위스키이미지">
        </div>
			<div class="item-box" id="list">
       			<jsp:include page="whiskeylist.jsp"></jsp:include>
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