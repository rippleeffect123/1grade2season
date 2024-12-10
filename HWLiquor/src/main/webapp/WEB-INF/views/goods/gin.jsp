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
        <jsp:include page="../pager.jsp"></jsp:include>
    </div>
</body>
</html>