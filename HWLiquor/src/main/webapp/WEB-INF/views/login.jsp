<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/font.css">
    <link rel="stylesheet" href="resources/css/login.css">
</head>
<body>
 <div class="container">
        <div class="logo">
            <h1><img src="resources/images/HW.png" alt="HWLiquor"></h1>
        </div>

        <div class="main-form">
            <h3>LOGIN</h3>
            <form method="post">
                <div class="input-id">
                    <div>
                        <p>아이디</p>
                    </div>
                    <div>
                        <input type="text" name="id" placeholder="아이디">
                    </div>

                    <div>
                        <p>비밀번호</p>
                    </div>
                    <div class="passwd-input">
                        <input type="password" name="passwd" placeholder="비밀번호">
                    </div>

                    <div class="login-btn">
                        <button>
                            로그인
                        </button>
                    </div>
                </div>
            </form>
        </div>

    </div>
</body>
</html>