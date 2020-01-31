<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/8af8965544.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<style>
    
    body {
        margin: 0;
        padding: 0;
        background-color: white;
        background-size: cover;
        font:600 16px/18px 'Open Sans',sans-serif;
    }

#wrapper {
		margin-top:5%;
    	width:100%;
    	height:85vh;
    }

*,:after,:before{box-sizing:border-box}
.clearfix:after,.clearfix:before{content:'';display:table}
.clearfix:after{clear:both;display:block}
a{color:inherit;text-decoration:none}

.login-wrap{
	width:100%;
	margin-left:31%;
	margin-top:-2%;
	max-width:525px;
	min-height:670px;
	position:relative;
	
}
.login-html{
	width:150%;
	height:110%;
	position:absolute;
	padding:90px 70px 50px 70px;
	background:white;
	box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
}

.login-html .sign-in-htm,
.login-html .sign-up-htm{
	top:0;
	left:0;
	right:0;
	bottom:0;
	position:absolute;
	transform:rotateY(180deg);
	backface-visibility:hidden;
	transition:all .4s linear;
	
}
.login-html .sign-in,
.login-html .sign-up,
.login-form .group .check{
	display:none;
}
.login-html .tab,
.login-form .group .label,
.login-form .group .button{
	text-transform:uppercase;
}
.login-html .tab{
	font-size:22px;
	margin-right:15px;
	padding-bottom:5px;
	margin:0 15px 10px 0;
	display:inline-block;
	border-bottom:2px solid transparent;
	color:lightgray;/*클릭 전 글씨 색*/
	cursor:pointer;
	
}
.login-html .sign-in:checked + .tab,
.login-html .sign-up:checked + .tab{
	color:gray; /* 클릭 시 글씨 색 */
	border-color:gray; /* 밑줄 색 */
}
.login-form{
	min-height:345px;
	position:relative;
	perspective:1000px;
	transform-style:preserve-3d;
	
}
.login-form .group{
	margin-bottom:15px;
}

.login-form .group .input{
	margin:0;
	width:100%;
	display:block;
}

.login-form .group .label,
.login-form .group .button{
	margin:0;
	width:100%;
	color:#fff; /*sign in 버튼의 글씨 색*/
	display:block;
}
.login-form .group .input{
	border:none;
	padding:15px 20px;
	border-radius:25px;	
	background:#FAFAFC;/*이메일, 비번 input 칸 색*/

}
.login-form .group .button{
	border:none;
	padding:15px 20px;
	border-radius:25px;
	color:white;
	
}
.login-form .group input[data-type="password"]{
	text-security:circle;
	-webkit-text-security:circle;
}
.login-form .group .label{
	color:#aaa;/*input칸 위에 작은 글씨(이메일, 비번)*/
	font-size:12px;
}
.login-form .group .button{
	background:gray;
}

.login-form .group .check:checked + label .icon:before{
	transform:scale(1) rotate(45deg);
}
.login-form .group .check:checked + label .icon:after{
	transform:scale(1) rotate(-45deg);
}
.login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm{
	transform:rotate(0);
}
.login-html .sign-up:checked + .tab + .login-form .sign-up-htm{
	transform:rotate(0);
}

.hr{
	height:2px;
	margin:60px 0 50px 0;
	background:gray;
}
.foot-lnk{
	text-align:center;
}

.foot-lnk > label{
	cursor: pointer;
}


.guide {
      display:none;
      font-size:10px;
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
		<c:if test="${ !empty msg }">
		<script>
        	opener.parent.location.replace("loginPage.do");
		</script>
		</c:if>
		
		<c:import url="../common/menubar.jsp"/>
		
		<div id="wrapper">
		<!-- 로그인 div -->
		<div class="login-wrap">
			<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
			<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
			<div class="login-form">
				<c:if test="${ empty sessionScope.loginUser }">
    			<form action="login.do" method="post">
				
				<div class="sign-in-htm">
					<div class="group">
					<label for="user" class="label">Email</label>
					<input name="id" id="user" type="text" class="input" >
					</div>
					<div class="group">
						<label for="pass" class="label">Password</label>
						<input name="pwd" id="pass" type="password" class="input">
					</div>
					<div class="group">
						<input type="submit" class="button" value="Sign In" OnClick ="javascript:GoToEnroll()">
					</div>
					<div class="hr"></div>
					<div class="foot-lnk">
					<a href="#forgot">아이디/비밀번호 찾기</a>
					</div>
					</div>
					</form>
					</c:if>
					
					
			<!-- 회원가입 div -->
			<div class="sign-up-htm">
				<div class="centerText">
      			<form action="minsert.do" method="post" id="joinForm" onsubmit="return validate()" enctype="multipart/form-data">
					<div id="pt" style=" display:none;">
	     				<input type='file' id="image_upload" name="uploadFile" />
					</div>
				
				<div style="float:left; width:47.5%;">
					<div class="group">
						<label class="label">Email</label>
						<input type="text" name="user_id" id="user_id" class="input">
						
						<span class="guide ok">이 이메일은 사용 가능합니다.</span>
		                <span class="guide error">이 이메일은 중복되므로 사용할 수 없습니다.</span>
		                <input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value="0"/>
					</div>
					<div class="group">
						<label class="label">Password</label>
						<input type="password" name="user_pwd" class="input" id="user_pwd">
					</div>
					<div class="group">
						<label class="label">Repeat Password</label>
						<input type="password" name="user_pwd2" class="input" id="user_pwd2">
					</div>
					<div class="group">
						<label class="label">Name</label>
						<input type="text" name="user_name" class="input" id="user_name">
					</div>
					<div class="group">
						<label class="label">Phone</label>
						<input type="tel" name="phone" class="input" id="phone-number-check">
					</div>
					</div>
					
					<div style="float:left; width:5%;">
					<br><br>
					</div>
					<div style="float:left; width:47.5%;">
					<div class="group" >
						<label class="label">Gender</label>
						<input type="radio" name="gender" value="M" id="gender">남
                  		<input type="radio" name="gender" value="F" id="gender">여
					</div>
					<div class="group">
						<label class="label">Age</label>
						<input type="number" min="20" max="100" name="age" id="age">
					</div>
					<div class="group"> <!-- 클래스 명 두 개 적용해놓음(띄어쓰기 하고 적으면 두 개 지정 가능) -->
						<label class="label">Address</label>
						<td>우편번호</td><button type="button" id="postcodify_search_button">검색</button>
						<input type="text" name="post" class="input postcodify_postcode5" id="postcodify_postcode5" value="" size="6" />
                  		<td>도로명 주소</td>
                  		<input type="text" name="address1" class="input postcodify_address" id="postcodify_address" value="" />
                  		<td>상세주소</td>
                  		<input type="text" name="address2" class="input postcodify_extra_info" id="postcodify_extra_info" value="" />
					</div>
					</div>
					
					<div class="group">
						<input type="submit" class="button" value="Sign Up" id="btnJoin">
					</div>
					<div class="hr"></div>
					<div class="foot-lnk">
						<label for="tab-1">계정이 이미 존재하십니까?</label>
					</div>
					</form>
				</div>
		</div>
	</div>
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
   $("#user_id").focus();
   /** 회원가입 폼 유효성 체크**/
  $("#btnJoin").click(function() {
	  var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

   if($("#user_id").val() =="") {
    alert("이메일을 입력해주세요");
    $("#user_id").focus();
    return false;
   }
   else if(!regEmail.test($("#user_id").val())) { 
	   alert('올바른 이메일 형식을 입력해주세요.'); 
	   $("#user_id").focus();
	   return false; 
	}
   else if($("#idDuplicateCheck").val() == 0) {
       alert('사용 가능한 이메일을 입력해주세요.');
       $("#user_id").focus();
       return false;
    }
   else if($("#user_pwd").val()=="") {
    alert("비밀번호를 입력해주세요");
    $("#user_pwd").focus();
    return false;
   }
   else if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/.test($("#user_pwd").val())){            
       alert('숫자+영문자+특수문자 조합으로 8자리 이상 15이하로 사용해야 합니다. (사용 가능 특수문자는 !,@,#,$,%,^,&,*,?,_,~ 입니다.)');
       $('#user_pwd').focus();
       return false;
   }
   else if($("#user_pwd2").val()=="") {
    alert("비밀번호확인를 입력해주세요");
    $("#user_pwd2").focus();
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
   var gender = $('#gender');
   if($(':radio[name="gender"]:checked').length < 1){
       alert('성별을 선택해주세요');                        
	    return false;
   }
   else if($("#age").val()==""){
	    alert("나이를 입력해주세요");
	    return false;
	}
   else if($("#postcodify_postcode5").val()==""){
	    alert("주소를 입력해주세요");
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
   else if($("#user_pwd").val() != $("#user_pwd2").val()) {
    alert("비밀번호가 일치하지 않습니다.");
    $("#user_pwd2").val("");
    $("#user_pwd2").focus();
    return false;
   }
   else {
	   return true;
   }
   
  });
   </script>
   
   <script>
      $(function(){
    	  $("#user_id").on("keyup", function(){
         	 var user_id = $(this).val();
              /* console.log(user_id); */
             if(user_id.length < 4) {
                $(".guide").hide(); // 나타났던 span 태그 숨기기

                $("#idDuplicateCheck").val(0); // 중복 여부 확인 값 리셋
                return;
             }
             
             $.ajax({
                url:"dupid.do",
                data:{user_id:user_id},
                success:function(data) {
                   if(data.isUsable == true) {
                      $(".error").hide();
                      $(".ok").show();
                      $("#idDuplicateCheck").val(1);
                   } else { // 이메일을 사용할 수 없을 때
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
      
   </script>
   
   <!--  쌤한테 여쭤보기 이메일형식이 맞아야 가입이 되긴 하는데 여기서 표시되는 건 어떻게 해야할지(올바른 형식이 아니어도 사용 가능하다 뜨는 게 문제) 아래처럼 조건을 추가해봤는 데 통하지 않는 것 같다
      <script>
      $(function(){
    	  $("#user_id").on("keyup", function(){
         	var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
         	 var user_id = $(this).val();
              console.log(user_id);
             if(user_id.length < 7) {
                $(".guide").hide(); // 나타났던 span 태그 숨기기

                $("#idDuplicateCheck").val(0); // 중복 여부 확인 값 리셋
                return;
             }
             
             $.ajax({
                url:"dupid.do",
                data:{user_id:user_id},
                success:function(data) {
                   if(data.isUsable == true && !regEmail.test($("#user_id").val().val()) {
                      $(".error").hide();
                      $(".ok").show();
                      $("#idDuplicateCheck").val(1);
                   } else { // 이메일을 사용할 수 없을 때
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
      
   </script>
   
   
    -->

   
   <!-- 전화번호 유효성검사 -->
   <script>
	   $(function(){
	    $("#phone-number-check").on('keydown', function(e){
	       // 숫자만 입력받기
	        var trans_num = $(this).val().replace(/-/gi,'');
		var k = e.keyCode;
					
		if(trans_num.length >= 11 && ((k >= 48 && k <=126) || (k >= 12592 && k <= 12687 || k==32 || k==229 || (k>=45032 && k<=55203)) ))
		{
	  	    e.preventDefault();
		}
	    }).on('blur', function(){ // 포커스를 잃었을때 실행
	        if($(this).val() == '') return;
	
	        // 기존 번호에서 - 를 삭제
	        var trans_num = $(this).val().replace(/-/gi,'');
	      
	        // 입력값이 있을때만 실행
	        if(trans_num != null && trans_num != '')
	        {
	            // 총 핸드폰 자리수는 11글자이거나, 10자여야 함
	            if(trans_num.length==11 || trans_num.length==10) 
	            {   
	                // 유효성 체크
	                var regExp_ctn = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
	                if(regExp_ctn.test(trans_num))
	                {
	                    // 유효성 체크에 성공하면 하이픈을 넣고 값을 바꿈
	                    trans_num = trans_num.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3");                  
	                    $(this).val(trans_num);
	                }
	                else
	                {
	                    alert("유효하지 않은 전화번호 입니다.");
	                    $(this).val("");
	                    $(this).focus();
	                }
	            }
	            else 
	            {
	                alert("유효하지 않은 전화번호 입니다.");
	                $(this).val("");
	                $(this).focus();
	            }
	      }
	  });  
	});
	   
$(document).ready(function() {
	   $(function() {
           $("#image_upload").on('change', function(){
               readURL(this);
           });
       });

       function readURL(input) {
           if (input.files && input.files[0]) {
           var reader = new FileReader();

           reader.onload = function (e) {
                   $('#profile').attr('src', e.target.result);
               }

             reader.readAsDataURL(input.files[0]);
           }
           else {
               var reader = new FileReader();

               reader.onload = $('#profile').attr('src','../resources/myPage/img/user2.jpg');

           }

       }
});
   </script>

<c:import url="../common/footbar.jsp"/>
</body>
</html>
