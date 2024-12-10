<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWLiquor/마이페이지</title>
<link rel="stylesheet" href="/resources/css/mypage/mypage.css">
</head>
<body>
    <div class="container">
    <jsp:include page="../header.jsp"></jsp:include>
        <main>
            <aside class="sidebar">
                <h4>마이페이지</h4>
                <ul>
                    <li>주문정보</li>
                    <li>해택관리</li>
                    <li>고객센터</li>
                    <li>회원정보</li>
                </ul>
            </aside>

            <section class="user-info">
                <div class="info-box">
                    <h3>회원 등급: 일반 구매자</h3>
                    <p>포인트: 0점</p>
                    <p>총 구매액: 0원</p>
                </div>
            </section>
        </main>
    </div>
</body>
</html>