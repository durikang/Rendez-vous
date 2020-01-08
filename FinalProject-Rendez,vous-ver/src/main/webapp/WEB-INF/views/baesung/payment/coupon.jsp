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

.used.able {
    background: blue;
    border-radius: 10px;
   
}

.used {
    width: 100%;
    background: blue;
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
    box-sizing: border-box;
    margin-top: 15px;
    color: #fff;
    padding: 2% 5%;
}
@media only screen and (min-width: 450px)
.used .date, .used .md .due {
    font-size: 14px;
}
.used .date {
    font-size: 12px;
}
.used .md {
    overflow: hidden;
    margin-top: 1%;
}
@media only screen and (min-width: 450px)
.used .md .price {
    font-size: 25px;
}
.used .md .price {
    font-size: 25px;
    margin-top: 1%;
    width: 25%;
}
.used .md div {
    float: left;
    display: inline-block;
}
@media only screen and (min-width: 450px)
.used .md .name {
    font-size: 15px;
}
.used .md .name {
    font-size: 14px;
    padding: 0 12%;
    margin: 1% auto;
    width: 30%;
    text-align: center;
}
@media only screen and (min-width: 450px)
.used .date, .used .md .due {
    font-size: 14px;
}
.used .md .due {
    font-size: 12px;
    margin-top: 3%;
    padding-left: 5%;
}
.used .due2 {
    font-size: 12px;
    text-align: center;
    overflow: hidden;
    margin-top: 1%;
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
	</div><!--  -->
	<div class="cont">
		<div>쿠폰등록</div>
		<div class="cpn">
		
			<input type="text" placeholder="프로모션 혹은 쿠폰 코드 입력" name="code" id="code"><button onclick="couponRegister()">쿠폰등록</button>
		
		</div>			
		
				<a onclick="couponUse(27366, '친구초대 쿠폰', 3000)">
				<div class="used able" >
			<div class="date">2020-01-08</div>
			<div class="md">
				<div class="price">3,000</div><div class="name">친구초대 쿠폰</div><div class="due">사용가능</div>
			</div>
			<div class="due2">
				유효기간 | </span>2020-02-07</span>
			</div>
		</div>
		</a>
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