<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
     <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
    background: #c9c0b1;
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
.nav_links li{
    font-weight: 500;
    font-size: 16px;
    color: black;
}
.menu_body a {
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
    font-size: 16px;
}
.button:hover {
    background-color: #ddd8cf;
}
.search-box:hover{
	cursor: pointer;
}

#image{
  margin:50px 50px;z-index:10;
  border: 15px solid rgb(53,99,218);
  border-radius: 400px;
  
}
#n_id{position:absolute;left:674.5px;z-index:20;box-sizing: border-box;}
#n_start{position: absolute;left:625.5px; top: 400px; width: 150px; height: 150px;box-sizing: border-box;}
#n_start:hover{
	cursor: pointer;
}
.roulette_wrap{
	background-image: url(resources/baesung/images/bg_event_main.png);
	width: 60%;
	margin: 50px auto;
	
	border-style: solid;
    border-image: linear-gradient(to right, #3886FF 0%, rgb(53,99,218) 100%);
  border-image-slice: 1;
  border-image-width: 20px;
   box-sizing: border-box;
}

#checkcheck{
	 position: absolute;
	 top: -150px;
	 left: 20px;
	 box-sizing: border-box;
}
#point_area{
	border-style: solid;
    border-image: linear-gradient(to right, #3886FF 0%, rgb(53,99,218) 100%);
  border-image-slice: 1;
  border-image-width: 5px;
  
	width: 330px;
	height: 250px;
	position: absolute;
	 top: -70px;
	 left: 40px;
	 text-align: center;
	 box-sizing: border-box;
}

#point_title{
	background: linear-gradient(#3886FF, rgb(53,99,218));
	width: 100%;
	height: 25%;
	box-sizing: border-box;
}

#point_point{
	background: white;
	width: 100%;
	height: 75%;
	color: rgb(69,126,233);
	padding-top: 45px;
	box-sizing: border-box;
	font-size: 55px;
}

#coupon_area{
border-style: solid;
    border-image: linear-gradient(to right, #3886FF 0%, rgb(53,99,218) 100%);
  border-image-slice: 1;
  border-image-width: 5px;
  
  width: 330px;
	height: 70px;
	position: absolute;
	 top: 200px;
	 left: 40px;
	 text-align: center;
	 box-sizing: border-box;
}

#coupon_title{
	float: left;
	height: 100%;
	width: 30%;
	background: linear-gradient(#3886FF, rgb(53,99,218));
	color: white;
}

#coupon_count{
	float: left;
	height: 100%;
	width: 70%;
	background: white;
	
}

</style>

</head>
<body>
	<div class="menu_body">
	 <c:if test="${ !empty msg}">
      <script>
         alert("${msg}");
      </script>
      <c:remove var="msg"/>
   </c:if>
   
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>

    <header class="header">
		<img class="logo" src="resources/common/img/logo1.png" alt="logo">
        <div class="search-box">
            <input class="search-text" type="text" id="search" placeholder="Search">
            <a class="search-btn" onclick="search2()">
                <i class="fas fa-search" onclick="search2()"></i>
            </a>
        </div>        

		 <c:if test="${!empty sessionScope.loginUser and  sessionScope.loginUser.user_type eq 'N' }">
         <a id="tInsert" class="cta" href="tutorInsertPage.do"><button class="button">튜터 등록</button></a>
       	 </c:if>
         <c:if test="${!empty sessionScope.loginUser and  sessionScope.loginUser.user_type eq 'T' }">
         <a id="tMain" class="cta" href="tutorMain.do"><button class="button">튜터 메뉴</button></a>
         </c:if>
        <nav>
            <ul class="nav_links">
                <li>|</li>
		<li><a href="support_main.do">고객 센터</a></li>
		<li>|</li>
                <c:if test="${ empty sessionScope.loginUser }">
                	<li><a href="loginPage.do">로그인</a></li>
                </c:if>

                <c:if test="${ !empty sessionScope.loginUser and loginUser.user_type != 'A' }">
					<li><a href="mypage.do"><c:out value="${ loginUser.user_name }님 "/>마이페이지</a></li>
				</c:if>
				
				<c:if test="${ !empty sessionScope.loginUser and loginUser.user_type == 'A' }">
					<a href="adminHome.do?pageName=adminHome">관리자 페이지</a>
				</c:if>
				
				<c:if test="${ !empty sessionScope.loginUser }">
					<li>|</li>
                	<li><a href="logout.do" >로그아웃</a></li>
				</c:if>
            </ul>
        </nav>
    </header>
    </div>
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
        
        function bhide(){
        	$("#tInsert").hide();
        	$("#tMain").hide();
        }
        	
        $("#search").keyup(function(e){

        	// var value=$(this).val();

        	//$("p").text($(this).val());

        	// $("p").text(value);
		if(e.key == 'Enter'){
			search2();
		}
        	
        	});
        
    	
    </script>
    
    
    
    
    
    
    
    
    
    
    
 <!--  -->
 	<div style="border-top: 1px solid rgb(218,220,224);"></div>
 
	<div class="roulette_wrap">
<div id="point_left" style="display: inline-block;">
<img src="resources/baesung/images/소망룰렛.png"id="image">
<img src="resources/baesung/images/roulette_pin.png" id="n_id">
<img src="resources/baesung/images/roulette_button.png" id=n_start>
</div>
<div id="point_right" style="display: inline-block; position: absolute; top: left:609px; top: 380px;
color: white; font-size: 40px;">
<img src="resources/baesung/images/매일매일 혜택 출석체크.png" id="checkcheck">

<div id="point_area">
<div id="point_title">
나의 포인트 
</div>
<div id="point_point">
<fmt:formatNumber value="${point}" pattern="#,###" />P
</div>
</div>

<div id="coupon_area">
<div id="coupon_title">쿠폰</div>
<div id="coupon_count"><a onclick="couponPop()" href="#">${CouponList.size()}개</a></div>
</div>

<%-- <div>현재 나의 포인트 ${point}p <br> 나의 쿠폰 : <a onclick="couponPop()" href="#">${CouponList.size()}개</a></div>  --%>


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
		
		if(val == "coupon"){
			alert("쿠폰이 당첨되었습니다.");
		}else{
			alert(val + "포인트를 획득하였습니다.");
		}
		
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