<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWLiquor/회원가입</title>
<script>
	let id_check = true;
</script>
<link rel="stylesheet" href="resources/css/signup.css">
    <script src="resources/script/email.js"></script>
    <script src="resources/script/moment-with-locales.js"></script>
    <script src="resources/script/jquery-3.7.1.min.js"></script>
    <script src="resources/script/signup.js"></script>
    <script src="resources/script/sign.js"></script>
</head>
<body>
<div class="container">
        <div class="logo">
            <img src="resources/images/HW.png">
        </div>

        <div class="main-form">
            <div>
                <div class="title">
                    <h3>SIGN UP</h3>
                </div>
                <form id="signup" method="post" action="signup">
                <div class="input-id">
                    <p>아이디</p>
                    <div class="id1">
                        <input type="text" name="id" placeholder="아이디 입력 (6~20자)">
                        <button type="button" id="id_check">중복 확인</button>
                    </div>
                </div>
                
                <div class="input-name">
                    <p>이름</p>
                    <input type="text" name="name" placeholder="이름 입력">
                </div>

                
                
                <div class="input-passwd">
                    <p>비밀번호</p>
                    <input type="password" name="passwd" placeholder="비밀번호 입력 (문자열 길이 8~20자 확인)">
                </div>

                <div class="input-passwd">
                    <p>비밀번호 확인</p>
                    <input type="password" name="passwd_check" placeholder="비밀번호 재입력">
                </div>

                <div class="input-email">
                    <p>E-mail</p>
                    <div class="email2">
                        <input type="text" name="mail" placeholder="이메일 주소">
                        <span id="att">@</span>
                        <select name="address" id="address" style="color: #ADADAD;">
                            <optgroup>
                                <option id="addressNull" value="null">이메일을 입력해주세요</option>
                                <option value="naver.com">naver.com</option>
                                <option value="hanmail.com">hanmail.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="nate.com">nate.com</option>
                            </optgroup>
                        </select>
                    </div>
                </div>
                <div class="birth">
                    <p>생년월일</p>
                    <div class="birth-sel">
                        <script src="resources/script/birth.js"></script>
                        <select name="year" id="year"></select>
                        <select name="month" id="month"></select>
                        <select name="day" id="day"></select>
                    </div>
                </div>

                <div class="phone1">
                    <p>휴대폰 번호</p>
                    <input type="text" name="phone" id="phone" placeholder="휴대폰 번호 입력(‘-’ 제외 11자리 입력)">
                </div>

                <div class="signup-btn">
                    <button type="button" id="join">가입하기</button>
                </div>
                </form>

                <span class="go-login">이미 계정이 있으신가요? <a href="login">로그인</a></span>

            </div>
        </div>
    </div>
</body>
</html>