<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Montserrat|Noto+Sans|Public+Sans|Sniglet&display=swap" rel="stylesheet">
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

#payCouponArea:hover{
	cursor: pointer;
}


    .wrapper{
        width: 100%;
        height: 180px;
        background: white;
        margin-bottom: 5px;
        
      	box-sizing: border-box;
       
    }
    
    #left{
    	width: 75%;
        height: 100%;
    	
    	margin: 0px;
    	float: left;
    	margin: 0px 0px 10px 0px;
    	border: 1px #dadada solid;
    	box-sizing: border-box;
    	border-top-right-radius: 10px;
    	border-bottom-right-radius: 10px;
    }
    
    #right{
    	width: 25%;
        height: 100%;
        margin: 0px;
       float: left;
       background: rgb(246, 92, 82);
       box-sizing: border-box;
       border-top: 1px #dadada solid;
       border-right: 1px #dadada solid;
       border-bottom: 1px #dadada solid;
       border-left: 1px #dadada dashed;
       border-top-left-radius: 10px;
       border-bottom-left-radius: 10px;
       text-align: center;
       
    }
    
    #mark{
    	font-size: 45px;
    	color: white;
    	font-weight: bold;
    	width: 65%;
    	box-sizing: border-box;
    	  margin: 0px auto;
    	  margin-top: 22px;
    	  background: rgb(247, 146, 139);
    	  border-radius: 50px;
		font-family: 'Noto Sans', sans-serif;	
    }

	#wordCoupon{
		color: rgb(255, 181, 176);
		font-weight: bold;
		margin-top: 35px;
		margin-left: 0px;
		-webkit-transform: rotate(270deg);
                -ms-transform: rotate(270deg);


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
		
		
		<c:if test="${CouponList != null }">
				<c:forEach items="${ CouponList}" var="CouponList">
				<div class="wrapper">
				 <a onclick="couponUse('${CouponList.couponNo }', '${CouponList.couponName } 쿠폰', '${CouponList.discountRate}')" id="payCouponArea"> 
				
			
			
			<div id="left">
            <p style="font-size: 80px; color: rgb(246, 92, 82); margin: 0px; margin-left: 15px; font-weight: bold; float: left;">${CouponList.discountRate}</p>
            <p style="font-size: 60px; color: rgb(246, 92, 82); margin: 7px 0px 0px 0px; font-weight: bold; float: left;">%</p>
            <p style="font-size: 20px; color: rgb(68, 68, 68); margin: 0px; margin-left: 15px; font-weight: bold; clear: both;">${CouponList.couponName }</p>    
            <p style="font-size: 15px; color: rgb(143, 143, 143); margin: 8px 0px 0px 0px; margin-left: 15px; font-weight: bold;">만료일 : ${CouponList.endDate}일까지</p>
            </div>
            <div id="right">
      			<div id="mark">R</div>
            	<div id="wordCoupon">COUPON</div>
            </div>
            
		</a>
		   </div>
			</c:forEach>
		</c:if>
		
		
		
		
				<script>
			function couponRegister()
			{
				if($('#code').val() == '' ){ alert('쿠폰 코드를 입력하세요');$('#code').focus();return false;}

				location.href = 'insertCoupon.do?code='+$('#code').val()
					
			}
			function couponUse(val, name, price)
			{
				
				opener.couponUse(val, name, price);
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