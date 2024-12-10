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
         <jsp:include page="../pager.jsp"></jsp:include>
    </div>

</body>
</html>