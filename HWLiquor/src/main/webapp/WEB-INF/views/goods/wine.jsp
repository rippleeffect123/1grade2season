<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWLiquour/와인</title>
<link rel="stylesheet" href="/resources/css/category.css">
<link rel="stylesheet" href="/resources/css/font.css">
<link rel="stylesheet" href="/resources/css/pager.css">
</head>
<script type="text/javascript" src="/resources/script/category.js"></script>
<body>

 <div class="container">
 		<jsp:include page="../header.jsp"></jsp:include>
        <h2 class="c-title">와인</h2>
        <div class="category">
            <div class="Clist">
                <div><button data-originid="0" class="cbtn">ALL</button></div>
                <div><button data-originid="1" class="cbtn">France</button>
                </div>
                <div><button data-originId="2" class="cbtn">Australia</button></div>
                <div><button data-originId="3" class="cbtn">Chile</button></div>
                <div><button data-originId="4" class="cbtn">Italia</button></div>
                <div><button data-originId="5" class="cbtn">Spain</button></div>
                <div><button data-originId="6" class="cbtn">America</button></div>
                <div><button data-originId="7" class="cbtn">Germany</button></div>
                <div><button data-originId="8" class="cbtn">South Africa</button></div>
                <div><button data-originId="9" class="cbtn">Hungary</button></div>
                <div><button data-originId="10" class="cbtn">Canada</button></div>
                <div><button data-originId="11" class="cbtn">Portugese</button></div>
                <div><button data-originId="12" class="cbtn">Argentina</button></a></div>
                <div><button data-originId="13" class="cbtn">ETC</button></div>
            </div>
        </div>
        <div class="top-img">
            <img src="/resources/images/top_img.png" alt="와인이미지">
        </div>
			<div class="item-box" id="list">
       			<jsp:include page="list.jsp"></jsp:include>
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