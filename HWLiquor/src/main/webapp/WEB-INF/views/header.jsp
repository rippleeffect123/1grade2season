<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100..900;1,100..900&display=swap');
    </style>
    <link rel="icon" href="resources/images/favicon.ico">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=person" />
</head>
<body>
<div class="header">
            <div class="logo-main">
                <a href="${pageContext.request.contextPath}/">
                    <img src="${pageContext.request.contextPath}/resources/images/HW.png">
                </a>
            </div>
            <nav>
                <ul class="nav-bar" style="font-family: 'Noto Sans', sans-serif; font-weight: 570;">
                    <li><a href="/goods/wine/0">와인</a></li>
                    <li><a href="/goods/whisky">위스키</a></li>
                    <li><a href="/goods/brandy">브랜디/코냑</a></li>
                    <li><a href="/goods/vodka">리큐르/보드카</a></li>
                    <li><a href="/goods/gin">진/럼</a></li>
                    <li><a href="/community">커뮤니티</a></li>
                </ul>
            </nav>

            <div class="btn-all">
                    <form>
                		<div class="search-bar">
                    		<input type="text" name="keyword" id="keyword">
                        	<button class="search-icon">
                        		<img src="${pageContext.request.contextPath}/resources/images/search_24dp_000000_FILL0_wght400_GRAD0_opsz24.png" alt="검색하기">
                        	</button>
               		 </div>
                    </form>
                   
                   <c:if test="${sessionScope.member == null}">
                <div class="mypage">
                    <a href="${pageContext.request.contextPath}/login">
                        <img src="${pageContext.request.contextPath}/resources/images/person_39dp_000000_FILL0_wght400_GRAD0_opsz40.svg" alt="마이페이지">
                    </a>
                </div>
                </c:if>
               
                <c:if test="${sessionScope.member.role == 1}">
                <div class="mypage">
                    <a href="${pageContext.request.contextPath}/mypage">
                        <img src="${pageContext.request.contextPath}/resources/images/person_39dp_000000_FILL0_wght400_GRAD0_opsz40.svg" alt="마이페이지">
                    </a>
                </div>
                </c:if>
                
                   <c:if test="${sessionScope.member.role == 99}">
                <div class="mypage">
                    <a href="${pageContext.request.contextPath}/admin">
                        <img src="${pageContext.request.contextPath}/resources/images/person_39dp_000000_FILL0_wght400_GRAD0_opsz40.svg" alt="마이페이지">
                    </a>
                </div>
                </c:if>
                
                <div class="cart">
                    <a href="${pageContext.request.contextPath}/cart">
                        <img src="${pageContext.request.contextPath}/resources/images/shopping_cart_37dp_000000_FILL0_wght400_GRAD0_opsz40.svg" alt="장바구니">
                    </a>
                </div>
                
                <c:if test="${sessionScope.member == null}">
                <div class="signupbtn">
                    <a href="${pageContext.request.contextPath}/signup">JOIN</a>
                </div>
                </c:if>
                
                <c:if test="${sessionScope.member != null}">
                <div class="state-login">
                    <a href="${pageContext.request.contextPath}/logout">LOGOUT</a>
                </div>
                </c:if>
            </div>
        </div>

</body>
</html>