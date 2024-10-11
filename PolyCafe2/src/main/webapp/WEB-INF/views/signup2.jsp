<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script>
	let id_check = false;
</script>
<script src="resources/js/signup.js"></script>
<script src="resources/js/signup2.js"></script>
</head>
<body>
	<div>
		<div>
			<div><h3>회원 가입</h3></div>
		</div>
		
		<div>
			<form id="signup" method="post" action="signup">
				<div>
					<div><label>아이디:</label></div>
					<div><input type="text" name="id"></div>
					<div><button type="button" id="id_check">중복 확인 (동기)</button></div>
					<div><button type="button" id="id_check_async">중복 확인 (비동기)</button></div>
					<div><button type="button" id="id_check_fetch">중복 확인 (fetch)</button></div>
				</div>
				
				<div class="passwd">
					<div><label>비밀번호:</label></div>
					<div><input type="password" name="passwd"> <button type="button" class="view">00</button></div>					
				</div>
				
				<div class="passwd">
					<div><label>비밀번호 확인:</label></div>
					<div><input type="password" name="passwd_check"> <button type="button" class="view">00</button></div>				
				</div>
				
				<div>
					<div><label>성명:</label></div>
					<div><input type="text" name="name"></div>
				</div>
				
				<div>
					<div><label>전화번호:</label></div>
					<div><input type="text" name="tel"></div>
				</div>
				
				<div>
					<div><button type="button" id="signup_button">확인</button></div>
					<div><a href="."><button type="button">취소</button></a></div>
				</div>
			</form>
		</div>
		
	</div>
</body>
</html>