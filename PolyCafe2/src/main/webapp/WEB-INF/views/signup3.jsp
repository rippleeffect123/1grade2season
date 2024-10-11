<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="resources/js/jquery-3.7.1.min.js"></script>
<script>
	let id_check = false;
</script>
<script>
	$(window).on("load", () => {
		$("#signup_button").on("click", () => {
			if(!$("input[name='id']").val()) {
				alert("아이디를 입력해 주시기 바랍니다");
		        return;
			}
		    
		    if($("input[name='id']").val().length < 4) {
		        alert("아이디는 최소 4자리이상 입력하여야 합니다");
		        return;
		    }
		    
		    if(!$("input[name='passwd']").val() || !$("input[name='passwd_check']").val()) {
		        alert("비밀번호와 비밀번호 확인을 입력해 주시기 바랍니다");
		        return;
		    }
		    
		    if($("input[name='passwd']").val() != $("input[name='passwd_check']").val()) {
		        alert("비밀번호와 비밀번호 확인이 일치하도록 입력해 주시기 바랍니다");
		        return;
		    }
		    
		    if(!$("input[name='name']").val()) {
		        alert("성명을 입력해 주시기 바랍니다");
		        return;
		    }
		    
		    if(!$("input[name='tel']").val()) {
		        alert("전화번호를 입력해 주시기 바랍니다");
		        return;
		    }
			
			$("#signup").submit();
		})		
	});
</script>
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
					<div><button type="button" id="signup_button">확인</button></div>
					<div><a href="."><button type="button">취소</button></a></div>
				</div>
			</form>
		</div>
		
	</div>
</body>
</html>