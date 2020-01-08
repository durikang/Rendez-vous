<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
    body {
    margin: 0;
    font-style: "나눔바른고딕","NanumBarunGothic","맑은 고딕","Malgun Gothic","Apple Gothic","돋움",Dotum,"Helvetica Neue",Helvetica,Arial,sans-serif !important;
}
user agent stylesheet
body {
    display: block;
    margin: 8px;
}
.title {
    padding: 10px 20px;
    text-align: center;
    font-size: 18px;
    font-weight: bold;
    border-bottom: 1px solid #e0e0e0;
}
.title .clse {
    position: absolute;
    left: 10px;
    width: 20px;
    margin-top: 3px;
    cursor: pointer;
}
.title .rmv {
    display: inlineblock;
    position: absolute;
    right: 10px;
    font-size: 16px;
    font-weight: 500;
    cursor: pointer;
}
.cont {
    padding: 30px;
}
.cpn {
    margin: 30px 0;
    overflow: hidden;
}
.cpn input {
    border: none;
    border-bottom: 1px solid #e0e0e0;
    padding: 7px;
    float: left;
    width: 72%;
    box-sizing: border-box;
    font-size: 14px;
}
.cpn button {
    background: #e0e0e0;
    color: back;
    font-size: 14px;
    text-align: center;
    padding: 5px;
    float: left;
    margin-left: 2%;
    width: 26%;
    border-radius: 2px;
    box-sizing: border-box;
    border: none;
}

    </style>
</head>
<body>
    <div class="title">
		<img class="clse"src="resources/baesung/images/btn-clse.png" onclick="javascript:self.close();">
		<div class="rmv">
			<a onclick="couponUse(0, '', 0)">해제</a>
		</div>
		쿠폰선택
	</div>
	<div class="cont">
		<div>쿠폰등록</div>
		<div class="cpn">
		
			<input type="text" placeholder="프로모션 혹은 쿠폰 코드 입력" name="code" id="code"><button onclick="couponRegister()">쿠폰등록</button>
		
		</div>			
				<script>
			function couponRegister()
			{
				if($('#code').val() == '' ){ alert('쿠폰 코드를 입력하세요');$('#code').focus();return false;}

				$.ajax({
					type: 'POST',
					url: '/Talent/couponRegister.php',				
					data: "code="+$('#code').val(),
					processData: false,
					success: function (response) {
						if(response=="0000")
						{
							alert("쿠폰 등록이 완료되었습니다");
							location.reload();
						}
						else
						{
							alert(response);
						}
					},
					error: function(response) {
						alert(response);
					}
				});
				return false;
			}
			function couponUse(val, name, price)
			{
				//opener.couponUse(val, name, price);
				self.close();
			}

			$(document).ready(function(){
				var wth= $(window).width();
				wth-=60;
				var hth = wth*97/332;
				$('.used').css('height',hth);
			});
			$( window ).resize(function() {
				var wth= $(window).width();
				wth-=60;
				var hth = wth*97/332;
				$('.used').css('height',hth);
			});
		</script>
	</div>

</body>
</html>