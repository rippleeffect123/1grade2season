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
        <h2 class="c-title">보드카/리큐르/테킬라</h2>
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
         <jsp:include page="../pager.jsp"></jsp:include>
    </div>
</body>
</html>