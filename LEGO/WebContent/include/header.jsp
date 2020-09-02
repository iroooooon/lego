<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<div class="header">
		<!-- header-title -->
		<div class="header-title">
			<!-- 로고 -->
			<div class="logo">
				<a href="./Main.me"><img class="logoImg" src="img/logo2.png"></a>
			</div>
			<!-- 검색창 -->
			<div class="search">
				<form action="" method="get">
					<input type="text" class="search_bar">
					<button type="button" class="searchImg"><img src="img/search.png"></button>
				</form>
			</div>
			<!-- 탑 메뉴 -->
			<nav class="top-menu">
				<ul>
					<li><a href="./BasketList.ba"><img src="img/basket.png" height="20" width="20"><span>장바구니</span></a></li>
					<li><a href="./MemberMypage.me"><img src="img/mypage.png" height="20" width="20"><span>마이페이지</span></a></li>
				 
			<%
			String id = (String)session.getAttribute("id");
			if(id == null){
			%>
				<li><a href="./UserLogin.us"><img src="img/login.png" height="20" width="20"><span>로그인</span></a></li>
			<%
			}else{
				if(id.equals("admin")){
			%>
				<li><span><b><a href="./Adminpage.me" style="color:red">관리자</a></b>님</span></li>
				<% }else{%>
				<li><span><b><%=id %></b>님</span></li>
				<%} %>
				<li><a href="./UserLogout.us"><img src="img/logout.png">로그아웃</a></li>
			<%
			} 
			%>
				</ul>
			</nav>
		</div>
		<!-- header-menu -->
		<div class="header-menu">
			<!-- header-menu-ul -->
			<ul class="header-menu-ul">
				<!-- header-menu-li -->
				<li><a href="./Main.us"><span>홈</span></a></li>
				<li><a href="./Goods.go"><span>제품</span></a></li>
				<li><a href="#"><span>이벤트</span></a></li>
				<li><a href="#"><span>스토어</span></a></li>
				<li><a href="#"><span>고객센터</span></a></li>
			</ul>
		</div>
		<div class="free-delivery">
			<a href="#" ><img src="img/free.png"><p><span>6만원 이상 주문 시 무료 배송! <a href="#">자세히 보기</a></span></p></a>

		</div>
	</div>
</body>
</html>