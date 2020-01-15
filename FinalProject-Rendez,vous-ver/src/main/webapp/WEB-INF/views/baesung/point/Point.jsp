<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="resources/baesung/js/jquery-1.11.3.min.js"></script> 
<script type="text/javascript" src="resources/baesung/js/jQueryRotateCompressed.js"></script>

  <script src="https://kit.fontawesome.com/8af8965544.js" crossorigin="anonymous"></script>
    <script src="https://fonts.googleapis.com/css?family=Montserrat&display=swap"></script>
    
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">

<style>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}
.search-box {
    margin: 0;
    padding: 0;
    background:#c9c0b1;
    height: 60px;
    border-radius: 40px;
    padding: 10px;
}
.search-box:hover > .search-text {
    width:300px;
    padding: 0 6px 0 15px;
    font-weight: bold;
}
.search-box:hover > .search-btn {
    background-color: white;
    text-decoration: none;
    color:#c9c0b1;
}
.search-btn {
    color: #c9c0b1;;
    float: right;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background: black;
    display: flex;
    justify-content: center;
    text-decoration: none;
    align-items: center;
    transition: 0.4s;
}

.search-btn i {
	color:#c9c0b1;
}
.search-text {
    border: none;
    background: none;
    outline: none;
    float: left;
    padding: 0;
    color: black;
    font-size: 16px;
    transition: 0.4s;
    line-height: 40px;
    width: 0px;
}
.header {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    padding: 0 10%;
}
.logo {
    width: 100px;
    height: 100px;
    cursor: pointer;
    margin-right: auto;
}
.nav_links {
	margin: 0 10px;
    list-style: none;
}
.nav_links li {
    display: inline-block;
    padding: 0px 20px;
}
.nav_links li a {
    transition: all 0.3s ease 0s;
    color: black;
    font-weight: bold;
    text-decoration:none;
}
.nav_links li {
    font-weight: 500;
    font-size: 16px;
    color: black;
}
.nav_links li a:hover {
    color: #c9c0b1;
}
.button {
    margin-left: 20px;
    padding: 9px 25px;
    background-color: #c9c0b1;
    border: none;
    border-radius: 50px;
    cursor: pointer;
    transition: all 0.3s ease 0s;
    color: black;
    font-weight: bold;
}
.button:hover {
    background-color: #ddd8cf;
}
.search-btn:hover{
	cursor: pointer;
}

#image{
  margin:50px 50px;z-index:10;
}
#n_id{position:absolute;left:657px;z-index:20;}
#n_start{position: absolute;left:609px; top: 380px; width: 150px; height: 150px;}
.roulette_wrap{
	background-image: url(resources/baesung/images/bg_event_main.png);
	width: 60%;
	margin: 50px auto;
}
</style>

</head>
<body>
	
	<header class="header">

    <c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
<img class="logo" src="resources/common/img/logo1.png" alt="logo">

        <div class="search-box">
            <input class="search-text" type="text" id="search" placeholder="검색어를 입력하세요">
            <a class="search-btn" style="font-size: 16px;">
                <i class="fas fa-search" onclick="search2()"></i>
            </a>
        </div>        
         <a class="cta" href="hynnmenubar.do"><button class="button">튜터 등록</button></a>
        <nav>
            <ul class="nav_links">
                <li>|</li>

                <c:if test="${ empty sessionScope.loginUser }">
                	<li><a href="loginPage.do" style="font-size: 16px;">로그인</a></li>
                </c:if>

                <c:if test="${ !empty sessionScope.loginUser and loginUser.user_type != 'A' }">
					<li><a href="mypage.do" style="font-size: 16px;"><c:out value="${ loginUser.user_name }님 "/>마이페이지</a></li>
				</c:if>
				
				<c:if test="${ !empty sessionScope.loginUser and loginUser.user_type == 'A' }">
					<a href="managerHome.do" style="font-size: 16px;">관리자 페이지</a>
				</c:if>
				
				<c:if test="${ !empty sessionScope.loginUser }">
					<li>|</li>
                	<li><a href="logout.do" style="font-size: 16px;">로그아웃</a></li>
				</c:if>
            </ul>
        </nav>
    </header>
    <script>
    	$(".logo").on("click", function(){
    		location.href='home.do';
    	});
    	
        function search2(){
           var sValue = $("#search").val();
           if(sValue ==""){
              alert("검색어를 입력해주세요 !");
              return;
           }
           
           location.href = "search.do?sValue=" + sValue;
        }
    </script>
    
 
	<div class="roulette_wrap">
<div id="point_left" style="display: inline-block;">
<img src="resources/baesung/images/소망룰렛.png"id="image">
<img src="resources/baesung/images/roulette_pin.png" id="n_id">
<img src="resources/baesung/images/roulette_button.png" id=n_start>
</div>
<div id="point_right" style="display: inline-block; position: absolute; top: left:609px; top: 380px;
color: white; font-size: 40px;">
<div>현재 나의 포인트 ${point}p <br> 나의 쿠폰 : <a onclick="couponPop()" href="#">${CouponList.size()}개</a></div> 
<div id="result_id3"></div>
<div id="result_id"></div>

</div>
</div>



<script>
window.onload = function(){
	
	var pArr = ["10","20","coupon","30","coupon","50","100","coupon"];

	$('#n_start').click(function(){
		
		//alert('${repetition}');
		if('${repetition}' == 'true'){
			alert("오늘은 이미 참여하였습니다.");
			return;
		}
		
		rotation();
		
		
	});

	function rotation(){
		$("#image").rotate({
		  angle:0, 
		  animateTo:360 * 5 + randomize(0, 360),
		  center: ["50%", "50%"],
		  easing: $.easing.easeInOutElastic,
		  callback: function(){ 
						var n = $(this).getRotateAngle();
						endAnimate(n);
					},
		  duration:1000
	   });
	}

	function endAnimate($n){
		var n = $n;
		$('#result_id').html("<p>움직인각도:" + n + "</p>");
		var real_angle = n%360;
		
		if(real_angle > 45){
			real_angle += 1;
		}else if(real_angle > 180){
			real_angle += 1.5;
		}
		
		var part = Math.floor((360-real_angle)/45);
	
		$('#result_id2').html("<p>상품범위:" + part + "</p>");

		if(part == 8){
			$('#result_id3').html("<p>당첨내역:" + pArr[0] + "</p>");
			insertPointOrCoupon(pArr[0]);
		}else{
			$('#result_id3').html("<p>당첨내역:" + pArr[part] + "</p>");
			insertPointOrCoupon(pArr[part]);
		}

		
	}

	function randomize($min, $max){
		return Math.floor(Math.random() * ($max - $min + 1)) + $min;
	}
	
	function insertPointOrCoupon(val){
		
		location.href = "inserPointOrCoupon.do?value="+val;
	}
	
	
	
};

function couponPop()
{
	popupWindow = window.open('coupon.do', '_blank', 'height=800,width=450,scrollbars=no,status=no');
}
</script>
</body>
</html>