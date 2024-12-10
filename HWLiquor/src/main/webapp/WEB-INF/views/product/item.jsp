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
  <script src="/resources/js/product/item.js"></script>
</head>
<body>
<div id="header"><jsp:include page="../header.jsp"></jsp:include></div>
<div class="container">
        <div class="item_photo">
   
            <div class="photo_big">
                <img src="${pageContext.request.contextPath}/upload/${item.photo[0].uuid}_${item.photo[0].filename}" alt="상품이미지메인">
                <c:if test="${item.photo.size() > 1 }">
                <div class="photo_small">
                    <div class="sm-1"><img src="${pageContext.request.contextPath}/upload/${item.photo[1].uuid}_${item.photo[1].filename}" alt="상품이미지1"></div>
                    <div class="sm-2"><img src="${pageContext.request.contextPath}/upload/${item.photo[2].uuid}_${item.photo[2].filename}" alt="상품이미지2"></div>
                    <div class="sm-3"><img src="${pageContext.request.contextPath}/upload/${item.photo[3].uuid}_${item.photo[3].filename}" alt="상품이미지3"></div>
                </div>
                </c:if>
            </div>
      
            <div class="details">
                <h3>${item.name}</h3>
                <div class="line"></div>
                <div>
                    <div class="price">
                        <p class="p-1">판매가</p>
                        <p class="p-2"><fmt:formatNumber value="${item.price}" pattern="#,###"></fmt:formatNumber>원</p>
                    </div>

                    <div class="boon">
                        <p class="b-1">구매혜택</p>
                        <p class="b-2">적립마일리지</p>
                        <c:set var="result" value="${item.price * (1/1000)}"/>
                        <p class="b-3"><fmt:formatNumber value="${result}" pattern="#"/> 포인트</p>

                    </div>

                    <div class="brand">
                        <p class="br-1">브랜드</p>
                        <p class="br-2">${item.brand}</p>
                    </div>

                    <div class="origin">
                        <p class="o-1">생산국가</p>
                        <p class="o-2">${item.originName}</p>
                    </div>

                    <div class="information">
                        <p class="info-title">상세 정보</p>
                        <div id="info">
                   	     ${item.info}
                        </div>
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
                    	<c:if test="${sessionScope.member == null}">
						      <a href=../../login class="none"><button class="none">로그인 후 구매하기</button></a>
						</c:if>
						
						<c:if test="${sessionScope.member != null }">
                        <button id="cart" data-type="cart" data-login="${sessionScope.member != null}" data-id="${item.id}"  class="action cart-btn2"><img src="/resources/images/icons8-카트-48.png" alt="장바구니">
                            <p>장바구니</p>
                        </button>
                        <button id="buy" data-type="buy" data-login="${sessionScope.member != null}" data-id="${item.id}" class="action pay">구매하기</button>
						</c:if>
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