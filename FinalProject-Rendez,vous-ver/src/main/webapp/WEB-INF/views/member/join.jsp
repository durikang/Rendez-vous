<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- pom.xml에 jsonView, gson 관련 라이브러리추가하기 -->
<!-- servlet-context에 필요한 빈 두 개 등록하기 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.centerText table {
		margin:auto;
	}
	
	#wrapper {
    	width:100%;
    	height:87.5vh;
    }
	
	 .guide {
		display:none;
		font-size:12px;
		top:12px;
		right:10px;
	}
	
	.ok {
		color:green;
	}
	
	.error {
		color:red;
	} 
</style>
<body>
<c:import url="../common/menubar.jsp"/>
	<div id=wrapper>
	<h1 align="center">회원 가입</h1>
	<br>
	<br>
	<div class="centerText">
		<form action="minsert.do" method="post" id="joinForm" onsubmit="return validate()"> <!-- 유효성검사 하는 것 -->
			<table width="500" cellspacing="5">
				<tr>
					<td width="150">* 아이디</td>
					<td width="450">
						<input type="text" name="user_id" id="user_id">
						<span class="guide ok">이 아이디는 사용 가능합니다.</span>
						<span class="guide error">이 아이디는 사용할 수 없습니다.</span>
						<input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value="0"/>
					</td>
				</tr>
				<tr>
					<td>* 이름</td>
					<td><input type="text" name="user_name"></td>
				</tr>
				<tr>
					<td>* 비밀번호</td>
					<td><input type="password" name="user_pwd"></td>
				</tr>
				<tr>
					<td>* 비밀번호확인</td>
					<td><input type="password" name="user_pwd2"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<input type="radio" name="gender" value="M">남
						<input type="radio" name="gender" value="F">여
					</td>
				</tr>
				<tr>
					<td>나이</td>
					<td>
						<input type="number" min="20" max="100" name="age">
					</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>
						<input type="tel" name="phone">
					</td>
				</tr>				
				<tr>
					<td>우편번호</td>
					<td>
						<input type="text" name="post" class="postcodify_postcode5" value="" size="6" />
						<button type="button" id="postcodify_search_button">검색</button>
					</td>
				</tr>
				<tr>
					<td>도로명 주소</td>
					<td>
						<input type="text" name="address1" class="postcodify_address" value="" />		
					</td>
				</tr>
				<tr>
					<td>상세 주소</td>
					<td>
						<input type="text" name="address2" class="postcodify_extra_info" value="" />
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button>가입하기</button>&nbsp;
						<input type="reset" value="취소하기">
					</td>	
				</tr>
			</table>
		</form>
		<br><br>
		<div align="center">
			<a href="home.do">시작페이지로 이동</a>
		</div>
	</div>
	</div>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script> 
		$(function() { 
			$("#postcodify_search_button").postcodifyPopUp(); 
		}); 
	</script>
	
	<script>
		$(function(){
			$("#user_id").on("keyup", function(){
				var user_id = $(this).val().trim();
				 
				if(user_id.length < 4) {
					$(".guide").hide(); // 나타났던 span 태그 숨기기
					$("#idDuplicateCheck").val(0); // 중복 여부 확인 값 리셋
					
					return;
				}
				
				$.ajax({
					url:"dupid.do",
					data:{user_id:user_id},
					success:function(data) {
						console.log(data);
						if(data.isUsable == true) {
							$(".error").hide();
							$(".ok").show();
							$("#idDuplicateCheck").val(1);
						} else { // 아이디를 사용할 수 없을 때
							$(".error").show();
							$(".ok").hide();
							$("#idDuplicateCheck").val(0);
						}
					},
					error:function(){
						console.log("ajax 통신 실패");
					}					
				});				
			});
		});
		
		function validate(){
			if($("#idDuplicateCheck").val() == 0) {
				alert('사용 가능한 아이디를 입력해주세요.');
				$("#user_id").focus();
				return false;
			}
			return true;
		}
		
	</script>
	<c:import url="../common/footbar.jsp"/>
</body>
</html>