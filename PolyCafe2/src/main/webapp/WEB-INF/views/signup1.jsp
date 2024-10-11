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
				</div>
				
				<div>
					<div><label>비밀번호:</label></div>
					<div><input type="password" name="passwd"></div>
				</div>
				
				<div>
					<div><label>비밀번호 확인:</label></div>
					<div><input type="password" name="passwd_check"></div>
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
					<div><button type="button" onclick="signup()">확인</button></div>
					<div><a href="."><button type="button">취소</button></a></div>
				</div>
			</form>
		</div>
		
	</div>
</body>
</html>