<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Rendez,vous</title>


<script src="https://kit.fontawesome.com/8af8965544.js" crossorigin="anonymous"></script>
<script src="https://fonts.googleapis.com/css?family=Montserrat&display=swap"></script>

</head>

<script language="Javascript" type="text/javascript">
	function setCookie(name, value, expirehours) {
		var todayDate = new Date();
		todayDate.setHours(todayDate.getHours() + expirehours);
		document.cookie = name + "=" + escape(value) + "; path=/; expires="
				+ todayDate.toGMTString() + ";"
	}

	function closeWin() {
		if (document.getElementById("pop_today").checked) {
			setCookie("ncookie", "done", 24);
		}
		document.getElementById('layer_pop').style.display = "none";
	}
</script>

<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

li, a, button {
	font-family: "Montserrat", sans-serif;
	font-weight: 500;
	font-size: 16px;
	color: black;
	text-decoration: none;
}

.search-box {
	margin: 0;
	padding: 0;
	background: rgb(194, 153, 92);
	height: 60px;
	border-radius: 40px;
	padding: 10px;
}

.search-box:hover>.search-text {
	width: 300px;
	padding: 0 6px;
	font-weight: bold;
}

.search-box:hover>.search-btn {
	background-color: white;
}

.search-btn {
	color: rgb(194, 153, 92);
	float: right;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	background: black;
	display: flex;
	justify-content: center;
	align-items: center;
	transition: 0.4s;
}

.search-text {
	border: none;
	background: none;
	outline: none;
	float: left;
	padding: 0;
	color: rgb(80, 80, 80);
	font-size: 16px;
	transition: 0.4s;
	line-height: 40px;
	width: 0px;
}

header {
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
}

.nav_links li a:hover {
	color: #FFDEAD;
}

button {
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

button:hover {
	background-color: rgb(245, 214, 167);
}

/****************************************/

/* reset */
#wrap {
	width: 1920px;
	margin: 0px auto;
}

/* banner */
#banner {
	position: relative;
	width: 1920px;
	margin: 0 auto;
	text-align: center;
	height: 450px;
}

#banner img {
	width: 100%;
	display: block;
}

/* slider */
.slideList {
	position: relative;
	width: 5760px;
	height: 450px;
}

.slideList .slideImg {
	float: left;
	width: 1920px;
	height: 450px;
}

/****************************************************/
/* #wrap2 {
	width: 900px;
	margin: 100px auto 0 auto;
}

#tabs {
	overflow: hidden;
	width: 700px; 
	margin: 0 auto;
	margin-bottom: 40px;
	padding-left: 38px;
	list-style: none;
}

#tabs li {
	float: left;
	margin: 0 10px 0 0;
} */

/*비활성화 탭(기본 탭모양) 설정*/
/* #tabs a {
	position: relative;
	width: 100px;
	height: 100px;
	float: left;
	text-decoration: none;
	text-align: center;
	line-height: 50px;
} */

/* #tabs a::after {
	z-index: 1;
	background: #fff;
} */

/*활성화탭(탭 클릭했을때 모양) 설정*/
/* #tabs #current a, #tabs #current a::after {
	 background: #ccc;
	z-index: 3;
	text-shadow: 5px 5px 5px #aaa;
} */

/* ------------------------------------------------- */

/*컨텐츠 부분*/
/* #content {
	width:750px;
	height: 350px;
	padding:20px; 
	position: relative;
	z-index: 2;
	border-radius: 5px 5px 5px 5px;
}

#content h2, #content h3, #content p {
	margin: 0 0 15px 0;
} */

/* ------------------------------------------------- */
#about {
	color: #999;
}

#about a {
	color: #eee;
}

#wrapper {
	width:900px;
	height:600px;
}

/* #c1 {
	width: 400px;
	height: 460px;
	margin: 25px 15px;
	float: left;
}

#c2 {
	width: 400px;
	height: 220px;
	margin: 25px 15px;
	float: left;
} */

#ic1 {
	color: gray;
}

/*-----------------------------------------------*/
.slidershow {
	width: 500px;
	height: 400px;
	overflow: hidden;
}

.middle {
	position: absolute;
	top: 190%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.navigation {
	position: absolute;
	bottom: 20px;
	left: 50%;
	transform: translateX(-50%);
	display: flex;
}

.bar {
	width: 50px;
	height: 10px;
	border: 2px solid #368D9C;
	margin: 6px;
	cursor: pointer;
	transition: 0.4s;
}

.bar:hover {
	background: #ccff00;
}

input[name="r"] {
	position: absolute;
	visibility: hidden;
}

.slides {
	width: 500%;
	height: 100%;
	display: flex;
}

.ad {
	margin:225px 0px 0px 0px;
}

.slide {
	width: 20%;
	transition: 0.6s;
}

.slide img {
	width: 100%;
	height: 100%;
}

#r1:checked ~ .s1 {
	margin-left: 0;
}

#r2:checked ~ .s1 {
	margin-left: -20%;
}

#r3:checked ~ .s1 {
	margin-left: -40%;
}

#r4:checked ~ .s1 {
	margin-left: -60%;
}

#r5:checked ~ .s1 {
	margin-left: -80%;
}

body {
	text-align: center;
	display: block;
	margin: 0 auto;
	font-size: 16px;
	color: #999;
}

h1 {
	font-family: 'Oswald', sans-serif;
	font-size: 30px;
	color: #216182;
}

label {
	display: block;
	margin-top: 20px;
	letter-spacing: 2px;
}

form {
	margin: 0 auto;
	width: 459px;
}

.modal input, textarea {
	width: 439px;
	height: 60px;
	background-color: #efefef;
	border-radius: 6px;
	border: 1px solid #dedede;
	padding: 10px;
	margin-top: 3px;
	font-size: 0.9em;
	color: #3a3a3a;
}

.modal input:focus, textarea:focus {
	border: 1px solid #97d6eb;
}

#submit {
	width: 127px;
	height: 48px;
	text-align: center;
	border: none;
	margin-top: 20px;
	cursor: pointer;
}

#submit:hover {
	color: #fff;
	background-color: #216282;
	opacity: 0.9;
}

#cancel, #cancel2 { 
         width: 127px; height: 48px; 
         text-align: center; 
         border: none; 
         margin-top: 20px; 
         cursor: pointer; 
     } 
#cancel:hover, #cancel2:hover{ 
         color: #fff; 
         background-color: #216282; 
         opacity: 0.9; 
     }

.modal {
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	opacity: 0;
	visibility: hidden;
	transform: scale(1.1);
	transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform	0.25s;
	z-index:1;
}
.modal2{ 
         position: fixed; 
         left: 0; 
         top: 0; 
         width: 100%; 
         height: 100%; 
         background-color: rgba(0, 0, 0, 0.5); 
         opacity: 0; 
         visibility: hidden; 
         transform: scale(1.1); 
         transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform 0.25s; 
         z-index:1;
     } 

.modal-content {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: white;
	padding: 1rem 1.5rem;
	width: 560px;
	height: 350px;
	border-radius: 0.5rem;
}
.modal-content2 {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: white;
	padding: 1rem 1.5rem;
	width: 560px;
	height: 350px;
	border-radius: 0.5rem;
}

.close-button {
	float: right;
	width: 1.5rem;
	line-height: 1.5rem;
	text-align: center;
	cursor: pointer;
	border-radius: 0.25rem;
	background-color: lightgray;
}
.close-button2 {
	float: right;
	width: 1.5rem;
	line-height: 1.5rem;
	text-align: center;
	cursor: pointer;
	border-radius: 0.25rem;
	background-color: lightgray;
}

.close-button:hover {
	background-color: darkgray;
}
.close-button2:hover { 
         background-color: darkgray; 
     } 

.show-modal {
	opacity: 1;
	visibility: visible;
	transform: scale(1.0);
	transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
}
.show-modal2 {
        opacity: 1; 
        visibility: visible; 
        transform: scale(1.0); 
        transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
     }
     
div ul {
	text-align:center;
	vertical-align:top;
}
/**************************************/
.swiper-area {
	width:80%;
	margin:auto;
	margin-top:12%;
	margin-bottom:5%;
}

.swiper-container {
   height:420px; 
   width:1200px;  
}
.swiper-slide {
   text-align:center;
   display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
   align-items:center; /* 위아래 기준 중앙정렬 */
   justify-content:center; /* 좌우 기준 중앙정렬 */
}
.swiper-slide img {
   max-width:100%; /* 이미지 최대너비를 제한, 슬라이드에 이미지가 여러개가 보여질때 필요 */
   border-radius:20px;
   /* 이 예제에서 필요해서 설정했습니다. 상황에따라 다를 수 있습니다. */
}

.trigger {
	margin:0px 0px 1000px 0px;
}

</style>

<body>

	<c:import url="common/menubar.jsp" />

	<div id="wrap">
		<section id="banner">
			<div class="slideList">
				<div class="slideImg">
					<img src="resources/homeImg/slide1.PNG">
				</div>
				<div class="slideImg">
					<img src="resources/homeImg/slide2.PNG">
				</div>
				<div class="slideImg">
					<a href = "링크할 주소"><img src="resources/homeImg/slide3.png"></a>
				</div>
			</div>
		</section>
		<!-- //banner -->
	</div>

	<!------------------------------------------------->

		<!-- <ul id="tabs">
			<li><a href="#" title="tab1"><i class="far fa-thumbs-up fa-2x"></i></a></li>
			<li><a href="#" title="tab2"><i class="fas fa-music fa-2x"></i></a></li>
			<li><a href="#" title="tab3"><i class="fas fa-language fa-2x"></i></a></li>
			<li><a href="#" title="tab4"><i class="fas fa-play-circle fa-2x"></i></a></li>
		</ul> -->

<div style="text-align:center; margin:0 0 100px 0; background:#555; line-height:80px;"></div>

<!-- 이 예제에서는 필요한 js, css 를 링크걸어 사용 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>


<div class="swiper-area">
	<div class="swiper-container">
		<h2>추천 수업</h2>
	   <div class="swiper-wrapper">
	      <div class="swiper-slide"><img src="resources/homeImg/ex.PNG"></div>
	      <div class="swiper-slide"><img src="resources/homeImg/ex2.PNG"></div>
	      <div class="swiper-slide"><img src="resources/homeImg/ex3.PNG"></div>
	      <div class="swiper-slide"><img src="resources/homeImg/ex.PNG"></div>
	      <div class="swiper-slide"><img src="resources/homeImg/ex2.PNG"></div>
	      <div class="swiper-slide"><img src="resources/homeImg/ex3.PNG"></div>
	   </div>
	</div>	
</div>

<script>

new Swiper('.swiper-container', {

   slidesPerView : 3, // 동시에 보여줄 슬라이드 갯수
   spaceBetween : 30, // 슬라이드간 간격
   slidesPerGroup : 3, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

   // 그룹수가 맞지 않을 경우 빈칸으로 메우기
   // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
   loopFillGroupWithBlank : true,

   loop : true, // 무한 반복
   autoplay: true,
   autoplaySpeed: 2000,

});

</script>
	
		<!-- 버튼 -->
		<button class="trigger2">카테고리</button> 

		<!-- 팝업 될 레이어 --> 
        <div class="modal2"> 
            <div class="modal-content2"> 
                <span class="close-button2">&times;</span> 
                <br><br>
                <a href="#">디자인</a><br>
                <a href="#">실무역량</a><br>
                <a href="#">뷰티</a><br>
                <a href="#">영상</a><br>
                <a href="#">외국어</a><br>
                <a href="#">음악</a><br>
                <a href="#">라이프스타일</a><br>
                <a href="#">기타</a><br>
                <br>
                <input type="button" id="cancel2" value="취소"> 
            </div> 
        </div>    
	
	<div class="ad" style="background-color:darkgray; width: 1920px; height: 500px;">
	<div class="slidershow middle">
		<div class="slides" style="z-index:1">
			<input type="radio" name="r" id="r1" checked> 
			<input type="radio" name="r" id="r2"> 
			<input type="radio" name="r" id="r3"> 
			<input type="radio" name="r" id="r4"> 
			<input type="radio" name="r" id="r5">

			<div class="slide s1">
				<img src="resources/homeImg/광고.jpg">
			</div>
			<div class="slide">
				<img src="resources/homeImg/광고2.jpg">
			</div>
			<div class="slide">
				<img src="resources/homeImg/광고3.jpg">
			</div>
			<div class="slide">
				<img src="resources/homeImg/광고4.png">
			</div>
			<div class="slide">
				<img src="resources/homeImg/광고5.jpg">
			</div>
		</div>

		<div class="navigation">
			<label for="r1" class="bar"></label> 
			<label for="r2" class="bar"></label>
			<label for="r3" class="bar"></label> 
			<label for="r4" class="bar"></label>
			<label for="r5" class="bar"></label>
		</div>
	</div>
    </div>

	<script>
		var slideCount = $(".slideImg").length;
		var currentIndex = 0;
		var slidePosition;
		setInterval(function() {
			if (currentIndex < slideCount - 1) {
				currentIndex++;
			} else {
				currentIndex = 0;
			}
			slidePosition = currentIndex * (-1920) + "px";
			$(".slideList").animate({
				left : slidePosition
			}, 400);
		}, 3000);
	</script>

	<!----------------------------------->
	
	<script>
		$(document).ready(function() {
			$("#content #tab1").hide(); // Initially hide all content
			$("#content #tab2").hide();
			$("#content #tab3").hide();
			$("#tabs li:first").attr("id", "current"); // Activate first tab
			$("#content div:first").fadeIn(); // Show first tab content

			$('#tabs a').click(function(e) {
				e.preventDefault();
				$("#content #tab1").hide(); //Hide all content
				$("#content #tab2").hide();
				$("#content #tab3").hide();
				$("#tabs li").attr("id", ""); //Reset id's
				$(this).parent().attr("id", "current"); // Activate this
				$('#' + $(this).attr('title')).fadeIn(); // Show content for current tab
			});
		});
	</script>

	<!--팝업창-->
	<div class="layer_popup" style="position: absolute; width: 500px; left: 50%; margin-left: -920px; top: 120px; border: 1px solid #333333;" id="layer_pop">
		<table width="500" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td><img src="resources/homeImg/pop.png" width="500"
					height="600" border="0" usemap="#m_pop" />
				</td>
			</tr>
			<tr>
				<td align="center" height="30" bgcolor="#333333">
					<table width="95%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td align="left" class="pop"><input type="checkbox" name="pop_today" id="pop_today"/>
							<font color="#FFFFFF">오늘 하루 이 창 열지 않음</font>
							</td>
							<td align="right" class="pop"><a href="javascript:closeWin();">
							<font color="white">닫기</font></a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>

	<script language="Javascript" type="text/javascript">
		cookiedata = document.cookie;

		// alert(cookiedata.indexOf("ncookie=done"));
		if (cookiedata.indexOf("ncookie=done") < 0) {
			// alert("false");
			document.getElementById('layer_pop').style.display = "inline";
		} else {
			// alert("true");
			document.getElementById('layer_pop').style.display = "none";
		}
	</script>

	<br><br><br><br><br>
	<br><br><br><br><br>
	<br><br><br><br><br>
	<br><br><br><br><br>
	<br><br><br><br><br>
	<br><br><br><br><br>
	<br><br><br><br><br>

	<!-- 버튼 -->
	<button class="trigger">광고, 이벤트 받아보기</button>

	<!-- 팝업 될 레이어 -->
	<div class="modal">
		<div class="modal-content">
			<span class="close-button">&times;</span>
			<h1 class="title">메일 보내기</h1>
			<form action="auth.do" method="POST">
				<label for="email">Email</label> 
				<input type="email" name="e_mail" placeholder="Your email" required="required"> 
				<label></label>
				<input type="submit" id="submit" value="보내기">
				<input type="button" id="cancel" value="취소"> 
			</form>
		</div>
	</div>

	<script type="text/javascript">
            var modal = document.querySelector(".modal");
            var modal2 = document.querySelector(".modal2");
            var trigger = document.querySelector(".trigger");
            var trigger2 = document.querySelector(".trigger2");
            var closeButton = document.querySelector(".close-button");
            var closeButton2 = document.querySelector(".close-button2");
            var cancelButton = document.querySelector("#cancel");
            var cancelButton2 = document.querySelector("#cancel2");
    
            function toggleModal() {
                modal.classList.toggle("show-modal");
            }

            function toggleModal2() {
                modal2.classList.toggle("show-modal2");
            }

            function windowOnClick(event) {
                if (event.target === modal) {
                    toggleModal();
                } else if (event.target === modal2) {
                    toggleModal2();
                }
            }
    
            trigger.addEventListener("click", toggleModal);
            trigger2.addEventListener("click", toggleModal2);
            closeButton.addEventListener("click", toggleModal);
            closeButton2.addEventListener("click", toggleModal2);
            cancel.addEventListener("click", toggleModal);
            cancel2.addEventListener("click", toggleModal2);
            window.addEventListener("click", windowOnClick);
        </script>

	<br><br><br><br><br>
	<br><br><br><br><br>
	<br><br><br><br><br>

	<c:import url="common/footbar.jsp" /> 
</body>
</html>