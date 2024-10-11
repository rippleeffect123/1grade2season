<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<div>
			<h3>회원 등록</h3>
		</div>
		
		<div>
			<form method="post">
				<div>
					<div><label>아이디:</label></div>
					<div><input type="text" name="id"></div>
				</div>
				
				<div>
					<div><label>비밀번호:</label></div>
					<div><input type="text" name="passwd"></div>
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
					<div><label>역할:</label></div>
					<div><input type="number" name="role" value="1"></div>
				</div>
				
				<div>
					<div><label>포인트:</label></div>
					<div><input type="number" name="points" value="0"></div>
				</div>
				
				<div>
					<div><button>등록</button></div>
					<div><a href="list"><button type="button">취소</button></a></div>
				</div>		
			</form>
		</div>
	</div>
</body>
</html>