<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LEGO Technic</title>
<link href="css/main.css" rel="stylesheet">
</head>
<body>
	<!-- header -->	
	<jsp:include page="../include/header.jsp" />
	<!-- header -->
	<!-- main -->
	<div class="main">
		<div class="login">
		
			<h2>레고 테크닉은 여기에서!</h2>
			<h2>멋진 레고 GET 하러 로그인!</h2>
			
			<form action="./UserLoginAction.us" method="post">
				
				<input type="text" class="input_id" name="user_id" placeholder="아이디 입력"><br>
				<input type="password" class="input_pw" name="user_password" placeholder="패스워드 입력"><br>
				<input type="submit" class="login_submit" value="로그인">
				<input type="button" class="join_button" value="회원가입" onclick="location.href='./UserJoin.us';">
			</form>
			<a href="#">아이디 찾기</a> <span>|</span> <a href="#">비밀번호 찾기</a>
			<hr>
			<h4>간편 로그인 / 가입</h4>
		</div>
	</div>
	<!-- main -->
	<!-- footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- footer -->
</body>
</html>