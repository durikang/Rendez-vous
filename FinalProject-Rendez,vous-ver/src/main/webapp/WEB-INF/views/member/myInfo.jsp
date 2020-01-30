<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- <script>
$(function(){
	if(${msg ne null}){
		alert('${msg}');
	});
	
	if($("#pwForm").submit(function(){
		if($("#pw").val() !== $("#pw2").val()){
			alert("비밀번호가 다릅니다.");
			$("#pw").val("").focus();
			$("#pw2").val("");
			return false;
		}else if ($("#pw").val().length < 8) {
			alert("비밀번호는 8자 이상으로 설정해야 합니다.");
			$("#pw").val("").focus();
			return false;
		}else if($.trim($("#pw").val()) !== $("#pw").val()){
			alert("공백은 입력이 불가능합니다.");
			return false;
		}
	}));
	
	if($("myForm").submit(function(){
		if($("#user_name").val().length < 6){
			alert("이름은 6자 이하로 설정해야 합니다.");
			$("#user_name").val("").focus();
			return false;
		}else if($("#user_name").val()) !== $("#user_name").val()){
			alert("공백은 입력이 불가능합니다.");
			return false;
		}
	}));
		
	if($("myForm").submit(function(){
		if($("#phone").val()) !== $("#phone").val()){
			alert("공백은 입력이 불가능합니다.");
			return false;
		}
	};
	
	if($("myForm").submit(function(){
		if($("#address").val()) !== $("#address").val()){
			alert("공백은 입력이 불가능합니다.");
			return false;
		}
	});
</script> -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
   <script> 
      $(function() { 
         $("#postcodify_search_button").postcodifyPopUp(); 
      }); 
   </script>
<title>Insert title here</title>
</head>
<style>

</style>
<body>
		<c:if test="${ !empty msg }">
		<script>
        	alert("회원 탈퇴 완료");
        	opener.parent.location.replace("logout.do");
        	self.close();
		</script>
		</c:if>
		
		<c:if test="${ !empty msg2 }">
		<script>
        	alert("회원 수정 완료");
        	opener.parent.location.replace("mypage.do");
        	self.close();
		</script>
		</c:if>

	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h3>내 정보</h3>
				<br>
			</div>
			<div>
				<form id="myForm" action="mupdate.do" method="post">
					<p>
						EMAIL 
						<input class="w3-input" type="text" id="user_id" name="user_id" readonly value="${ loginUser.user_id }"> 
					</p>
					<p>
						New Password 
						<input class="w3-input" id="pw" name="pw" placeholder="변경할 패스워드를 입력하세요." type="password" required >
					</p>
					<p>
						Confirm
						<input class="w3-input" id="pw2" name="pw2" placeholder="변경할 패스워드 확인을 위해 동일하게 입력해주세요." type="password" required >
					</p>
					<p>
						NAME 
						<input class="w3-input" type="text" id="user_name" name="user_name" value="${ loginUser.user_name }" required> 
					</p>
					<p>
						GENDER 
						<br>
					<c:if test="${ loginUser.gender eq 'M' }">
						<td>
							<input type="radio" name="gender" value="M" mimchecked>남
							<input type="radio" name="gender" value="F">여
						</td>
					</c:if>
					<c:if test="${ loginUser.gender eq 'F' }">
						<td>
							<input type="radio" name="gender" value="M">남
							<input type="radio" name="gender" value="F" checked>여
						</td>
					</c:if>		
					</p>
					<p>
						AGE 
						<input class="w3-input" type="number" min="20" max="100" id="age" name="age" value="${ loginUser.age }" required> 
					</p>
					<p>
						PHONE
						<input class="w3-input" type="text" id="phone" name="phone" value="${ loginUser.phone }" required> 
					</p>
					<p>
						ADDRESS
						<br>
		            <c:forTokens var="addr" items="${ loginUser.address }" delims="," varStatus="status">
					<c:if test="${ status.index eq 0 }">
						<tr>
							<td>우편번호</td>
							<td>
								<input type="text" name="post" class="postcodify_postcode5" id="postcodify_postcode5" value="${ addr }" size="6" />
								<button type="button" id="postcodify_search_button">검색</button>
							</td>
						</tr>
					</c:if>
					<c:if test="${ status.index eq 1 }">
						<tr>
						<br>
							<td>도로명 주소</td>
							<td>
								<input type="text" name="address1" class="postcodify_address" id="postcodify_address" value="${ addr }" />		
							</td>
						</tr>
					</c:if>
					<c:if test="${ status.index eq 2 }">
						<tr>
						<br>
							<td>상세 주소</td>
							<td>
								<input type="text" name="address2" class="postcodify_extra_info" id="postcodify_extra_info" value="${ addr }" />
							</td>
						</tr>
					</c:if>
				</c:forTokens>
				</p>

					<p class="w3-center">
						<button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round" id="btnCng">회원정보 변경</button>
					</p>
	<div class="text-center">
		<c:url var="mdelete" value="mdelete.do">
			<c:param name="user_id" value="${ loginUser.user_id }"/>
		</c:url>
		<button type="button" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round" onclick="location.href='${ mdelete }'">탈퇴하기</button>
		<br>
    </div>
	</form>
	</div>
	</div>
</div>

<script>
   /** 회원수정 폼 유효성 체크**/
  $("#btnCng").click(function() {

   if($("#pw").val()=="") {
    alert("비밀번호를 입력해주세요");
    $("#pw").focus();
    return false;
   }
   else if(!/^[a-zA-Z0-9!,@,#,$,%,^,&,*,?,_,~]{8,15}$/.test($("#user_pwd").val())){            
       alert('숫자+영문자+특수문자 조합으로 8자리 이상 15이하로 사용해야 합니다. (사용 가능 특수문자는 !,@,#,$,%,^,&,*,?,_,~ 입니다.)');
       $('#pw').focus();
       return false;
   }
   else if($("#pw2").val()=="") {
    alert("비밀번호확인를 입력해주세요");
    $("#pw2").focus();
    return false;
   }  
   else if($("#user_name").val()==""){
    alert("이름을 입력해주세요");
    $("#user_name").focus();
    return false;
   }
   else if($("#phone-number-check").val()==""){
	    alert("전화번호를 입력해주세요");
	    $("#phone-number-check").focus();
	    return false;
	}
   else if($("#age").val()==""){
	    alert("나이를 입력해주세요");
	    return false;
	}
   else if($("#postcodify_postcode5").val()==""){
	    alert("우편번호를 입력해주세요");
	    return false;
	}
   else if($("#postcodify_address").val()==""){
	    alert("주소를 입력해주세요");
	    return false;
	}
   else if($("#postcodify_extra_info").val()==""){
	    alert("상세주소를 입력해주세요");
	    return false;
	}
   else if($("#pw").val() != $("#pw2").val()) {
    alert("비밀번호가 일치하지 않습니다.");
    $("#pw2").val("");
    $("#pw2").focus();
    return false;
   }
   else {
	   return true;
   }
   
  });
   </script>


</body>
</html>