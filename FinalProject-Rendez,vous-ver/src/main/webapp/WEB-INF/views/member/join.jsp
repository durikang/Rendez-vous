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
   
    #wrapper {
    	margin-top :10%;
    	width:100%;
    	height:70vh;
    }
</style>
<body>
<c:import url="../common/menubar.jsp"/>
 <div id="wrapper">
   <h1 align="center">회원 가입</h1>
   <br>
   <div class="centerText">
      <form action="minsert.do" method="post" id="joinForm" onsubmit="return validate()">
         <table width="600" cellspacing="5">
            <tr>
				<td>* 이메일</td>
                <td><input type="text" name="user_id" id="email1"  placeholder="이메일을 입력해주세요">
                      <!--  @<input type="text" name="email2" id="email2"> 
                        <select name="email3" id="email3">
                           <option>직접입력</option>
                           <option>naver.com</option>
                           <option>nate.com</option>
                           <option>gmail.com</option>
                           <option>daum.net</option>
                        </select>
                        <br>-->
                        <span class="guide ok">이 이메일은 사용 가능합니다.</span>
						<span class="guide error">이 이메일은 사용할 수 없습니다.</span>
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
               <td>* 나이</td>
               <td>
                  <input type="number" min="20" max="100" name="age">
               </td>
            </tr>
            <tr>
               <td>* 전화번호</td>
               <td>
                  <input type="tel" name="phone" class="phone-number-check">
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
            <br>
               <td colspan="2" align="center">
                  <button onclick="validate();">가입하기</button>&nbsp;
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
         $("#email1").on("keyup", function(){
            var email1 = $(this).val().trim();
             
            if(email1.length < 4) {
               $(".guide").hide(); // 나타났던 span 태그 숨기기
               $("#idDuplicateCheck").val(0); // 중복 여부 확인 값 리셋
               
               return;
            }
            
            $.ajax({
               url:"dupid.do",
               data:{user_id:email1},
               success:function(data) {
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
            alert('사용 가능한 이메일을 입력해주세요.');
            $("#email1").focus();
            return false;
         }
         return true;
      }
      
   </script>
   
   <!-- <script>
      $(function(){
         $("#email2").on("focusout", function(){
        	var email1 = $("#email1").val().trim();
            var email2 = $("#email2").val().trim();
             
            if(email2 != "") {
               $(".guide").hide(); // 나타났던 span 태그 숨기기
               $("#idDuplicateCheck").val(0); // 중복 여부 확인 값 리셋
               
               return;
            }
            var email = email1 + "@" + email2;
            
            $.ajax({
               url:"dupid.do",
               data:{user_id:email},
               success:function(data) {
                  if(data.isUsable == true) {
                     $(".error").hide();
                     $(".ok").show();
                     $("#idDuplicateCheck").val(1);
                  } else { // 중복일 경우
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
            alert('사용 가능한 이메일을 입력해주세요.');
            $("#email1").focus();
            return false;
         }
         return true;
      }
   </script>
   -->
   
   <script>
   $(document).ready(function() {	
	   $("#email3").change(function() {
	    if($("#email3").val() != "직접입력") {
	     $("#email2").val($("#email3").val());
	    } else {
	     alert("이메일 주소를 선택하여주세요")
	     $("#email2").val("");
	     $("#email3").focus();
	    }
	   });
	  });
   </script>
   
   <!-- 전화번호 유효성검사 -->
   <script>
	   $(function(){
	    $(".phone-number-check").on('keydown', function(e){
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
   </script>
   <c:import url="../common/footbar.jsp"/>
</body>
</html>