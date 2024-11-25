<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWLiquor/상품페이지</title>
  <link rel="stylesheet" href="/resources/css/font.css">
  <link rel="stylesheet" href="/resources/css/view.css">
  <link rel="stylesheet" href="/resources/css/header.css">
  <script src="/resources/script/plusminus.js"></script>
</head>
<body>
<div><jsp:include page="../header.jsp"></jsp:include></div>
<div class="container">
        <div class="item_photo">
        	<c:forEach var="photo" items="${item.photo}" >
            <div class="photo_big">
                <img src="${pageContext.request.contextPath}/upload/${photo.uuid}_${photo.filename}" alt="상품이미지">
                <div class="photo_small">
                    <div class="sm-1"><img src="${pageContext.request.contextPath}/upload/${photo.uuid}_${photo.filename}" alt="상품이미지"></div>
                    <div class="sm-2"><img src="${pageContext.request.contextPath}/upload/${photo.uuid}_${photo.filename}" alt="상품이미지"></div>
                    <div class="sm-3"><img src="${pageContext.request.contextPath}/upload/${photo.uuid}_${photo.filename}" alt="상품이미지"></div>
                </div>
            </div>
        	</c:forEach>

            <div class="details">
                <h3>${item.name}</h3>
                <div class="line"></div>
                <div>
                    <div class="price">
                        <p class="p-1">판매가</p>
                        <p class="p-2">${item.price}원</p>
                    </div>

                    <div class="boon">
                        <p class="b-1">구매혜택</p>
                        <p class="b-2">적립마일리지</p>
                        <c:set var="result" value="${item.price * (1/1000)}"/>
                        <p class="b-3"><fmt:formatNumber value="${result}" pattern="#"/> 포인트</p>

                    </div>

                    <div class="brand">
                        <p class="br-1">브랜드</p>
                        <p class="br-2">잭다니엘(Jackdaniel's)</p>
                    </div>

                    <div class="origin">
                        <p class="o-1">생산국가</p>
                        <p class="o-2">미국</p>
                    </div>

                    <div class="information">
                        <p>상세 정보</p>
                        <textarea name="info" id="info">
                        </textarea>
                    </div>

                    <div class="amount">
                        <p class="product-amount">상품수량</p>
                        <button class="minus"><img src="/resources/images/icons8-마이너스-48.png" alt="마이너스"
                                class="minus-img"></button>
                        <div class="amt-box">
                            <input id="amt" value="1">
                        </div>
                        <button class="plus"><img src="/resources/images/icons8-더하다-48.png" alt="플러스" class="plus-img"></button>
                        <p class="total-price">총 합계금액</p>
                        <span class="saleprice"></span>
                    </div>

                    <div class="paybtn">
                        <button class="cart-btn2"><img src="/resources/images/icons8-카트-48.png" alt="장바구니">
                            <p>장바구니</p>
                        </button>
                        <button class="pay">구매하기</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
    
    <script>
    	let price = ${item.price};
    </script>
</body>
</html>