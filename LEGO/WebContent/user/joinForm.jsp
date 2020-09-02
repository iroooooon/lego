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
		<div class="join">
			<h3>회원정보 입력</h3>
			<hr>
			<div class="join_form">
				<form action="./UserJoinAction.us" method="post" >
					<!-- 아이디 입력란 -->
					<div class="input_sec">
						<span>아이디</span><br>
						<input type="text" name="user_id" id="iptid" class="join_input" required>
						<div id="err_id" class="err_div"></div>
					</div>
					
					<!-- 비밀번호 입력란 -->
					<div class="input_sec">
						<span>비밀번호</span><br>
						<input type="password" name="user_password" id="iptpw" class="join_input" required><br>
						<div id="err_pw" class="err_div"></div>
					</div>
					<div class="input_sec">	
						<span>비밀번호 확인</span><br>
						<input type="password" name="user_password_chk" id="iptpwchk" class="join_input" required>
						<div id="err_pw2" class="err_div"></div>
					</div>
					
					<!-- 이름 입력란 -->
					<div class="input_sec">
						<span>이름</span><br>
						<input type="text" name="user_name" id="iptnm" class="join_input" required>
						<div id="err_name" class="err_div"></div>
					</div>
					
					<!-- 이메일 입력란 -->
					<div class="input_sec">
						<span>이메일</span><br>
						<input type="text" name="user_email" id="iptem" class="join_input" required>
						<div id="err_email" class="err_div"></div>
					</div>
					
					<!-- 생년월일 입력란 -->
					<div class="input_sec">
						<span>생년월일</span><br>
						<input type="date" name="user_birth" id="iptbd" class="join_input" required>
					</div>
					
					<!-- 휴대폰 번호 입력란 -->
					<div class="input_sec">
						<span>휴대폰 번호</span><br>
						<input type="text" name="user_phone_number" id="iptph" class="join_input" required>
						<div class="err_div" id="err_phone"></div>
					</div>
					
					<!-- 주소 입력란 -->
					<div class="input_sec">
						 <span>주소</span><br>
						 <div class="addr_area">
							<input class="join_input" id="postcode" type="text" name="postcode" placeholder="우편번호">
							<input class="addr_search" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
						 </div>
						 <input class="join_input" id="roadAddress" type="text" name="road_name_addr" placeholder="도로명주소">
						 <input class="join_input" id="jibunAddress" type="text" name="a_lot_number_addr" placeholder="지번주소">
						 <span id="guide" style="color:#999;display:none"></span><br>
						 <input class="join_input" id="detailAddress" type="text" name="detail_addr" placeholder="상세주소">
						 <input class="join_input" id="etcAddress" type="text" name="etc_addr" placeholder="참고항목">
						 <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					</div>
					
					<div class="btn_sec">
						<!-- 버튼 - 가입하기 -->
						<input type="submit" value="가입하기">
						<!-- 버튼 - 뒤로가기 -->
						<input type="button" value="뒤로가기">
					</div>
				</form>
			</div><!-- div join_form end -->
		</div><!-- div join end -->
	</div><!-- div main end -->
	<!-- main -->
	<!-- footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- footer -->
</body>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
	
	
	/* 정규식  */
	var userIdChk = RegExp(/^[a-zA-Z0-9]{6,13}$/);
	var userNameChk = RegExp(/^[가-힣]{2,5}$/);
	var userPwChk = RegExp(/^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/);
	var userEmailChk = RegExp(/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i);
	var userPhoneChk = RegExp(/^01([0|1|6|7|8|9]?)-([0-9]{3,4})-([0-9]{4})$/);
	/* ID 체크 */
	$('#iptid').keyup(function(){
		
		if(!userIdChk.test($('#iptid').val())){
			//alert('아이디 형식에 맞게 입력하세요!');	
			$('#err_id').show();
			$('#err_id').html('영어 대소문자, 숫자만 입력가능 & 6자이상 16자 이하로 적어주세요!');
		}
		/* else if(($('#iptid').val()).indexOf('admin')!= -1){
			//alert('부적합한 아이디입니다!');			
			$('#err_id').show();
			$('#err_id').html('부적합한 아이디입니다!');
		} */
		else{
			$('#err_id').hide();
		}
	});
	/* 비밀번호 체크 */
	$('#iptpw').keyup(function(){
		var pw = $('#iptpw').val();
		if(userPwChk.test(pw)===false){
			$('#err_pw').show();
			$('#err_pw').html('비밀번호는 8자 이상이어야 하며, 숫자/영어/특수문자를 모두 포함해야합니다!');
		}else{
			$('#err_pw').hide();
		}
	});
	/* 비밀번호 확인 체크 */
	$('#iptpwchk').keyup(function(){
			//alert('비밀번호가 일치하지 않아요!');
			var pw1 = $('#iptpw').val();
			var pw2 = $('#iptpwchk').val();
			
			if(pw1 != pw2){
				$('#err_pw2').show();
				$('#err_pw2').html('비밀번호가 일치하지 않아요!');
			}else{
				$('#err_pw2').hide();
			}
	});
	/* 이름 체크 */
	$('#iptnm').keyup(function(){
		var name = $('#iptnm').val();
	
		if(false === userNameChk.test(name)){
			$('#err_name').show();
			$('#err_name').html('이름은 한글만 입력가능하며, 2자리에서 5자리까지 입력가능합니다!');
		}else{
			$('#err_name').hide();
		}
	});
	/* 이메일 체크 */
	$('#iptem').keyup(function(){
		var email = $('#iptem').val();
		if(false === userEmailChk.test(email)){
			$('#err_email').show();
			$('#err_email').html('이메일 형식에 맞게 입력해주세요!');
		}else{
			$('#err_email').hide();
		}
	});
	/* 휴대폰 번호 체크*/
	$('#iptph').keyup(function(){
		var phone = $('#iptph').val();
		if(false === userPhoneChk.test(phone)){
			$('#err_phone').show();
			$('#err_phone').html('휴대폰 번호 형식에 맞춰 입력해주세요!(- 포함)');
		}else{
			$('#err_phone').hide();
		}
	});
});	



//Daum Map API
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("roadAddress").value = roadAddr;
            document.getElementById("jibunAddress").value = data.jibunAddress;
            
            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("etcAddress").value = extraRoadAddr;
            } else {
                document.getElementById("etcAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open();
}
</script>
</html>