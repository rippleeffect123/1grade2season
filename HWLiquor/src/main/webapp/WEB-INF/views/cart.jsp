<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWLiquor/장바구니</title>
    <link rel="stylesheet" href="/resources/css/header.css">
    <link rel="stylesheet" href="/resources/css/font.css">
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="/resources/css/cart.css">
    <script src="/resources/script/cart.js"></script>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    
    <div class="main-cart">
        <h3>장바구니</h3>
        <div class="line"></div>

        <table class="cart-table">
            <thead>
                <tr>
                    <th><input type="checkbox" id="select-all" <c:if test="${list.size() == 0}">disabled</c:if>></th>
                    <th>상품/옵션 정보</th>
                    <th>수량</th>
                    <th>상품금액</th>
                    <th>할인/적립</th>
                    <th>합계금액</th>
                </tr>
            </thead>
            <tbody>
                <c:if test="${list.size() < 1}">
                    <tr>
                        <td colspan="6">장바구니에 등록 된 제품이 없습니다</td>
                    </tr>
                </c:if>
                
                <c:set var="totalPrice" value="0"/>
                <c:set var="totalReward" value="0"/>

                <c:forEach var="item" items="${list}">
                <tr>
                    <td><input type="checkbox" class="product-checkbox" data-id="${item.id}" checked></td>
                    <td>
                        <div class="product-info">
                            <c:set var="amount" value="${cart.cart.get(item.id)}"></c:set>
                            <img src="/upload/${item.photo[0].uuid }_${item.photo[0].filename }" alt="상품 이미지">
                            <div>
                                <span>${item.name}</span>
                            </div>
                        </div>
                    </td>
                    <td class="quantity-wrapper">
                        <button class="decrease">-</button>
                        <input type="text" class="quantity" value="${amount}" maxlength="3">
                        <button class="increase">+</button>
                    </td>
                    <td class="price"><fmt:formatNumber value="${item.price}" pattern="#,###"></fmt:formatNumber>원</td>
                    
                    <!-- 적립 포인트 계산 -->
                    <c:set var="reward" value="${(item.price * (1/1000)) * amount}"/>
                    <td><span class="reward">적립 <fmt:formatNumber value="${reward}" pattern="#"/> 포인트</span></td>
                    
                    <!-- 상품 합계 금액 계산 -->
                    <c:set var="itemTotal" value="${item.price * amount}"/> <!-- 1은 수량 값으로 변경 가능 -->
                    <td class="total-price"><fmt:formatNumber value="${itemTotal}" pattern="#,###"></fmt:formatNumber>원</td>

                    <!-- 총 상품 금액 및 적립 포인트 누적 -->
                    <c:set var="totalPrice" value="${totalPrice + itemTotal}" />
                    <c:set var="totalReward" value="${totalReward + reward}" />
                </tr>
                </c:forEach>
            </tbody>
        </table>

         <div class="cart-summary">
            <p>총 상품 금액: <span id="total-price"><fmt:formatNumber value="${totalPrice}" pattern="#,###"></fmt:formatNumber>원</span></p>
            <p>적립 마일리지: <span id="total-reward"><fmt:formatNumber value="${totalReward}" pattern="#,###"></fmt:formatNumber>포인트</span></p> <!-- 적립 포인트는 JavaScript로 계산 -->
            <p>합계: <span id="final-total"><fmt:formatNumber value="${totalPrice}" pattern="#,###"></fmt:formatNumber>원</span></p>
        </div>

        <!-- 모든 버튼을 같은 행에 배치 -->
        <div class="cart-actions">
            <a href=".." class="action-btn">쇼핑 계속하기</a>
            <button id="delete-selected" class="action-btn delete">선택 상품 삭제</button>
            <a href="/orders"><button class="action-btn">선택 상품 주문</button></a>
            <a href="/orders"><button class="action-btn primary">전체 상품 주문</button></a>
        </div>
    </div>
</body>
</html>
