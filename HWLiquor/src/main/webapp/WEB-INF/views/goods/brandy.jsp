<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWLiquor/브랜디</title>
<link rel="stylesheet" href="/resources/css/brandy.css">
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/pager.css">
<script type="text/javascript" src="/resources/script/brandy.js"></script>
</head>
<body>
<div class="container">
 		<jsp:include page="../header.jsp"></jsp:include>
        <h2 class="c-title">브랜드/코냑/아르마냑</h2>
        <div class="category">
            <div class="Clist">
                <div><button data-categoryid="0" class="cbtn">ALL</button></div>
                <div><button data-categoryid="3" class="cbtn">Brandy</button></div>
                <div><button data-categoryid="4" class="cbtn">Cognac</button></div>
                <div><button data-categoryid="5" class="cbtn">Armagnac</button></div>
               
            </div>
        </div>
        <div class="top-img">
            <img src="/resources/images/brandytop_img.png" alt="브랜디이미지">
        </div>
			<div class="item-box" id="list">
       			<jsp:include page="brandylist.jsp"></jsp:include>
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