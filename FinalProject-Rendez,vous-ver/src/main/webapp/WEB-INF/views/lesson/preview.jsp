<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
	<title>미리보기 페이지</title>
	<!-- <meta property="og:url" content="http://taling.me/Talent/Detail/166" /> -->
	<link rel="image_src" href="http://s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Cover/41d6f52384099fcb7eeeacbbf2727e37b3ecb4b3.jpg" />
	
	<!-- Page-hiding snippet (recommended)  -->
	<style>
		.async-hide { 
			opacity: 0 !important
					} 
					
		.star-rating { width:205px; }                
		.star-rating,.star-rating span { display:inline-block; height:39px; overflow:hidden; background:url(${contextPath}/resources/h1/ystar.png)no-repeat; }
		.star-rating span{ background-position:left bottom; line-height:0; vertical-align:top; }
		
		.modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 50%; /* Could be more or less, depending on screen size */                          
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        
        .starR {
			background:
				url('${contextPath}/resources/h1/ystarcon.png')
				no-repeat right 0;
			background-size: auto 100%;
			width: 30px;
			height: 30px;
			display: inline-block;
			text-indent: -9999px;
			cursor: pointer;
		}

		.starR.on {
			background-position: 0 0;
		}	
		
		
		
					

	</style>
	
	<script>
	(function(a,s,y,n,c,h,i,d,e){s.className+=' '+y;h.start=1*new Date;
	h.end=i=function(){s.className=s.className.replace(RegExp(' ?'+y),'')};
	(a[n]=a[n]||[]).hide=h;setTimeout(function(){i();h.end=null},c);h.timeout=c;
	})(window,document.documentElement,'async-hide','dataLayer',4000,
	{'GTM-NBPXJKP':true});
	</script>

    <script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-77451578-1', 'auto', {allowLinker: true});
	  ga('require', 'GTM-NBPXJKP');
	  ga('set', 'contentGroup1', '국악');
	  ga('send', 'pageview');

	</script>

	
	<meta charset="UTF-8">   
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="p:domain_verify" content="1dd028b45d9d85306bb74db3d9911bbb"/>
	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/publy2.css" />
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main15.css?ver=191216" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main16.css?ver=191216" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main18.css?ver=191216" />

	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/style_new2.css?ver=191216" />

	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/style_sub17.css?after" />
	

    <link rel="shortcut icon" href="${contextPath}/resources/h1//Images/favicon.ico" />
    <link rel="apple-touch-icon" href="${contextPath}/resources/h1/Images/mobicon.png"/>    

	<script src="${contextPath}/resources/h1/Scripts/prototype.js"></script>
	<script src="${contextPath}/resources/h1/Scripts/jquery-1.10.2.min.js"></script>
  	
    <script src="${contextPath}/resources/h1/Scripts/topbar.js"></script>
    <script src="${contextPath}/resources/h1/Scripts/common4.js"></script>
	<script src="${contextPath}/resources/h1/Scripts/func12.js"></script>
	<script src="${contextPath}/resources/h1/Scripts/controll.js"></script>
	<script src="${contextPath}/resources/h1/Scripts/motion.js"></script>
	
	



    <script src="${contextPath}/resources/h1/Scripts/popper.js"></script>
    <script src="${contextPath}/resources/h1/Scripts/mainbootstrap.js"></script>
    
    
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    
    
    
    
  
    
	
    <meta property="fb:app_id" content="1488135204822133" />

	<!-- Google Tag Manager -->
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-MTJJTC6');</script>
	<!-- End Google Tag Manager -->

	<!-- Global site tag (gtag.js) - AdWords: 876466920 -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=AW-876466920"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'AW-876466920');
	</script>
    
   
	<!-- Facebook Pixel Code -->
	<script>
	!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
	n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
	n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
	t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
	document,'script','https://connect.facebook.net/en_US/fbevents.js');

	fbq('init', '666003960220481');
	fbq('track', "PageView");
	</script>
	<noscript><img height="1" width="1" style="display:none"
	src="https://www.facebook.com/tr?id=666003960220481&amp;ev=PageView&amp;noscript=1"
	/></noscript>
	<!-- End Facebook Pixel Code -->
	<!-- Naver --> 
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"> </script> 
	<script type="text/javascript"> 
	if (!wcs_add) var wcs_add={};
	wcs_add["wa"] = "s_568925707495";
	if (!_nasa) var _nasa={};
	wcs.inflow();
	wcs_do(_nasa);
	</script>
	<!-- Naver -->
	
	<style>
		.mySlides {display:none}
		.w3-left, .w3-right, .w3-badge {cursor:pointer}
		.w3-badge {height:13px;width:13px;padding:0}	
		
		.header {
			margin-top:5px;	
  			position: relative;
  			background: white;
  			border: none;
  			height: 100px;
		}

		
	</style>	
	
</head>

<script>
	window.fbAsyncInit = function () {
		FB.init({
			appId: '1488135204822133',
			xfbml: true,
			version: 'v2.8'
		});
	};

	(function (d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) { return; }
		js = d.createElement(s); js.id = id;
		js.src = "http://connect.facebook.net/ko_KR/sdk.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));

	$(document).mouseup(function (e){
		if($(e.target).attr('datasearch') != 'yes'){	
			$('.weekly_best').hide();
			$('.inner_area','.weekly_best').hide();
			$('div','.weekly_best').removeClass("inner_area");	
		}
	});
</script>





<body style="">
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MTJJTC6"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div id="wrap">
<!--HEADER -->
	<div class="hcont">
		<c:import url="../common/menubar.jsp"/>
	</div>
<!-- //HEADER -->



    </div>
<!-- CONTAINER -->
<div id="container_detail">
<input type="hidden" id="tutorName" value="선찬주">
<input type="hidden" id="tutorImage" value="//taling.me/Content/Uploads/Profile/s_aa73a9b108426fbddb18c590ffd278ea8117ef07.png">

<input type="hidden" id="Account_Id" value="">
<input type="hidden" id="Talent_Id" value="166">
<input type="hidden" id="Owner_Id" value="262">



<div class="class_wrap">
		
		<!-- 수업결제 정보 -->
		<div class="class_price" id="class_price" style="position:relative; width:300px">
			<!--div class="pricetxt">총 1회 / 3시간  <span>12,000원/1시간</span></div-->
			<!--원써니 수정 장소/시간 pc-->
			<div class="regions">
				<div class="title">
				수업 일정				</div>
				
				<!--new region id box-->
					<div class="region on" id="region" style="height: 206px;">
						<div class="option">
							<div class="top">
								<div class="timedetail">
								<div class="indate">&nbsp;&nbsp;날짜</div>시간						
								</div>
							<span>| </span>수강인원
							</div>
						</div>					
				</div>
								
				<!--여기까지 new region id box-->
				

			</div>
			<script>
				var b_box=0;
				var boxheight=0;
				var plus =0;


				function more(event){
					var elm = event;

					if($('#region').hasClass('on')){
						$('#region').scrollTop(0);
						$('#region').addClass('on').height('130px');
						$('#region').removeClass('on').find('.option').removeClass('on');
						b_box=0;
						$(elm).removeClass('on').find('span').html("다른 일정 더보기");
					}
					else{
						$('#region').addClass('on').height('300px');
						$(elm).addClass('on').find('span').html("다른 일정 숨기기");
					}
				}
			</script>
			
			<!--원써니 수정 장소/시간 pc 끝-->

		   
			


			<div class="bnt_payment new_bnt" style="padding-right: 50px">
			<a onclick="toPay()" style="text-decoration: none;"><span class="btntxt_s">수업 신청하기</span></a>
			</div>
			
			

			<!--바닥 박스 시작-->

			<!--/div-->
			<!--바닥 박스 끝-->
		</div>
		
		<!-- //수업결제 정보 -->

		
		<!-- 수업상세 정보 -->

		
		<!-- 상단이미지 -->
		<div class="class_img" style="margin-right:498px">
			<!-- <iframe width="840" height="540" src="https://taling.me/Talent/lightslider/?Id=166" frameborder="0"></iframe> -->
			
			<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false"> 
	
	<!--페이지-->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		
		<c:if test="${!empty ldi.laList}">
		<c:forEach var="i" begin="1" end="${fn:length(ldi.laList)-1}">
			
		<li data-target="#myCarousel" data-slide-to="${i}">
				
		</c:forEach>
		</c:if>
		
		
					
<!-- 		<li data-target="#myCarousel" data-slide-to="1"></li>
			
		<li data-target="#myCarousel" data-slide-to="2"></li>
			
		<li data-target="#myCarousel" data-slide-to="3"></li> -->
			
		
	</ol>
	<!--페이지-->

	<div class="carousel-inner" >
		<!--슬라이드1-->
		
<%-- 		<div class="item active"> 
			<a href="${ contextPath }/resources/lessonImg/13_0.png" target="_blank">
			<div style="background:#000;z-index:0;width:840px;height:540px;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/lessonImg/13_0.png');" ></div>
			</a>
		</div> --%>

		
		<c:if test="${flag eq 'I' }">
		<c:forEach var="la" items="${ldi.laList }">
		<div class="item"> 
			<a href="${ contextPath }/resources/previewImg/${la.cName}" target="_blank">
			<div style="background:#000;z-index:0;width:840px;height:540px;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/previewImg/${la.cName}');" ></div>
			</a>
		</div>
		</c:forEach>
		</c:if>
		
		<c:if test="${flag eq 'U' }">
		<c:forEach var="la" items="${ldi.laList }">
		<div class="item"> 
			<a href="${ contextPath }/resources/previewImg/${la.cName}" target="_blank">
			<div style="background:#000;z-index:0;width:840px;height:540px;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/lessonImg/${la.cName}');" ></div>
			</a>
		</div>
		</c:forEach>
		</c:if>

		
		
		
		
		
		
		
		
		
		
<%-- 		<div class="item active"> 
			<a href="${ contextPath }/resources/lessonImg/13_0.png" target="_blank">
			<div style="background:#000;z-index:0;width:840px;height:540px;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/lessonImg/13_0.png');" ></div>
			</a>
		</div>
		
		<!--슬라이드1-->
				

		<div class="item"> 
			<a href="${ contextPath }/resources/lessonImg/13_1.jpg" target="_blank">
			<div style="background:#000;z-index:0;width:840px;height:540px;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/lessonImg/13_1.jpg');" ></div>
			</a>
		</div>
		
		<div class="item"> 
			<a href="${ contextPath }/resources/lessonImg/13_2.jpg" target="_blank">
			<div style="background:#000;z-index:0;width:840px;height:540px;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/lessonImg/13_2.jpg');" ></div>
			</a>
		</div>
		
		<div class="item"> 
			<a href="${ contextPath }/resources/lessonImg/13_3.png" target="_blank">
			<div style="background:#000;z-index:0;width:840px;height:540px;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/lessonImg/13_3.png');" ></div>
			</a>
		</div> --%>

				




		
	</div>
	
	<!--이전, 다음 버튼-->
	<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
	<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
</div>  
			
			
			
			
			
			
			
			
			
			
			
		</div>
		
				<script>
					var slideIndex = 1;
					showDivs(slideIndex);
					
					function plusDivs(n) {
					  showDivs(slideIndex += n);
					}
					
					function currentDiv(n) {
					  showDivs(slideIndex = n);
					}
					
					function showDivs(n) {
					  var i;
					  var x = document.getElementsByClassName("mySlides");
					  var dots = document.getElementsByClassName("demo");
					  if (n > x.length) {slideIndex = 1}
					  if (n < 1) {slideIndex = x.length}
					  for (i = 0; i < x.length; i++) {
					    x[i].style.display = "none";  
					  }
					  for (i = 0; i < dots.length; i++) {
					    dots[i].className = dots[i].className.replace(" w3-white", "");
					  }
					  x[slideIndex-1].style.display = "block";  
					  dots[slideIndex-1].className += " w3-white";
					}
		</script>
				<script>
		$(function(){
			$(".item").eq(0).addClass("active");
		});
		
		</script>
		
		
		
		
		
		<!-- /상단이미지 -->

		<div class="class_d_wrqp" >
			<!-- 상세단락 네비 -->
			<div id="class_navi" class="class_navi">
				<ul>
					<li><a href="#sumary" id="sli">요약</a></li>
					<li><a href="#tutorinfo" id="tli">튜터</a></li>
					<li><a href="#Introduction" id="ili">수업소개</a></li>
					<li><a href="#review" id="rli">리뷰</a></li>
					<li><a href="#qna" id="qli">실시간톡</a></li>
				</ul>
			</div>
			<!-- /상세단락 네비 -->
				
			
			
			

			<!-- 수업타이틀 -->
			<div class="class_detail" id="sumary" style="width: 840px">
				<div class="class_name">
					<div class="tutor_img"><a href="${ contextPath }/resources/user/img/${ldi.ucName}" target="_blank"><div style="background:#000;z-index:0;width:100%;height:100%;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/user/img/${ldi.ucName}');"></div></a></div>
					<div class="name">${ ldi.uName }</div>
					<div class="nickname">${ ldi.tutor.tNick }</div>
				</div>
				<div class="class_title">
					
					<!--찜하기 시작-->
						<a class="bnt_wishlist" id="won"><img src="${contextPath}/resources/h1/Images/icon_btn_wish_on.png"> 찜하기</a>
						<a class="bnt_wishlist" id="woff"><img src="${contextPath}/resources/h1/Images/icon_btn_wish.png"> 찜하기</a>
					<!--찜하기 끝-->
					
					
					


					
					<script>
						$(function(){
								
							
							$("#won").hide();
												
							
							$("#won").click(function(){
								

							});		
							
							$("#woff").click(function(){
						
								
							});	
							
							
							<c:if test="${!empty favCheck }">
							$("#won").show();
							$("#woff").hide();
							</c:if>						
						});					
					</script>
					
					
					<div class="info">
						<a class="starimg">
							<div class="title">${ldi.lTitle }</div>
							<!-- <img src="https://taling.me/Content/Images/class/icon_star_new.png"><img src="https://taling.me/Content/Images/class/icon_star_new.png"><img src="https://taling.me/Content/Images/class/icon_star_new.png"><img src="https://taling.me/Content/Images/class/icon_star_new.png"><img src="https://taling.me/Content/Images/class/icon_star_new.png">								(6) -->
													</a>
					</div>
					<div class="info">
						<ul>
							<li class="ar">
																${ldi.lRegionSub }							</li>							
							<li class="hu"><font color="#ff005a">1</font>시간/회</li>
							<li class="gr">
																인원:<font color="#ff005a"></font>명
								</li>
							<li class="ohu">
																<font color="#ff005a">￦<fmt:formatNumber value="${ldi.lPrice}" maxFractionDigits="3"/></font>/회당
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /수업타이틀 -->

			<!-- 튜터소개 -->
			<div class="class_detail detail_sec_bor" id="tutorinfo" style="width: 840px">
				<div class="section01" id="tutor">
					<h1>튜터정보</h1>
					<div class="cert">
						<ul>
							<c:forEach var="tc" items="${tutorCer}">
							<li class="com">${tc}</li>	
							</c:forEach>									
						</ul>
					</div>
					<div class="d_info04">
						${ ldi.tutor.tInfo }
					</div>					
				</div>
			</div>
			<script>
				function display(id, val) {
					if(val == 1) {
						document.getElementById(id).style.display="none"
						document.getElementById(id+'Full').style.display="block";
						document.getElementById(id+'Open').style.display="none";
						document.getElementById(id+'Close').style.display="block";					} else {
						document.getElementById(id).style.display="block"
						document.getElementById(id+'Full').style.display="none";
						document.getElementById(id+'Open').style.display="block";
						document.getElementById(id+'Close').style.display="none";
					}
				}
			</script>
			<!-- /튜터소개 -->

			<!-- 수업소개 -->
			<div class="class_detail detail_sec_bor" id="Introduction" style="width: 840px">
				<div class="section01">
					<h1>수업소개</h1>
					<div class="d_info04">

					${ldi.lIntroduction }



					</div>
					<!--div class="d_info04" id="IntroductionFull" style="display:none;">
						가야금을 전공한지 올해로 18년째 되는 <br />
서울대학교 음악대학 국악과 출신 강사입니다. <br />
<br />
정악, 산조, 25현, 창작곡 및 시창청음까지도 레슨이 가능하며,<br />
예고 및 국악학원 강사  및 개인 레스너로 활발하게 활동하여 <br />
취미와 입시 레슨 경험모두 아주 풍부합니다.<br />
<br />
처음 배우시는 분들도 악보읽는 법 부터 아주 꼼꼼하고 친절하게 레슨해드리고 있으며,<br />
악기는 제가 25현까지도 2대씩 보유하고 있어서 번거롭게 들고오시지 않으셔도 됩니다. <br />
<br />
고민이 많이 되시는 분들을 위해 원데이 클래스도 진행하고 있으니,<br />
<br />
가야금 레슨을 받고 싶으신 분들은 편하게 문의주시면 빠르게 답변해 드리겠습니다.<br />
<br />
감사합니다.<br />
<br />
					</div-->
										<!--div class="btn_d_more" style="cursor:pointer;" id="IntroductionOpen"><a onclick="display('Introduction', 1)">소개더보기 +</a></div>
					<div class="btn_d_more" style="display:none;cursor:pointer;" id="IntroductionClose"><a onclick="display('Introduction', 2)">닫기</a></div-->
									</div>
			</div>
			<!-- /수업소개 -->

			<!-- 수업소개 -->
						<div class="class_detail detail_sec_bor" style="width: 840px">
				<div class="section01">
					<h1 class="mt50">수업대상</h1>
					<ul class="d_info03">
						<li><p> ${ldi.lTarget } </p></li>
					</ul>
				</div>
			</div>
						
			<!-- /수업소개 -->

			<!-- 커리큘럼 -->
			<!-- /커리큘럼 -->

			<!-- 튜터영상 -->
						<div class="class_detail detail_sec_bor" id="movie" style="width: 840px">
				<div class="section01">
					<h1>튜터영상</h1>
					<!--a href="#" class="btn_list">List</a-->
							<div>
								<c:if test="${!empty ldi.lYtb }">
								<iframe width="680" height="426" src="https://www.youtube.com/embed/${ldi.lYtb}" frameborder="0" allowfullscreen=""></iframe>
								</c:if>
							</div>								
<!-- 							<div>
								<iframe width="680" height="426" src="https://www.youtube.com/embed/XQFQZQwiOiA" frameborder="0" allowfullscreen=""></iframe>
							</div>	 -->							
									</div>				
			</div>
						<!-- /튜터영상 -->

			<!-- 튜터영상 -->
			<!--div class="class_detail detail_sec_bor" id="movie">
				<div class="section01">
					<h1>튜터블로그</h1>
					<a href="#" class="btn_list">List</a>
					<div><iframe width="680" height="426" src="https://www.youtube.com/embed/PUFWNd9LVPI" frameborder="0" allowfullscreen></iframe></div>
				</div>				
			</div-->
			<!-- /튜터영상 -->

			<!-- 리뷰 -->
			<div class="class_detail detail_sec_bor" id="review" style="width: 840px">
				<div class="section01">
					<h1>리뷰(<c:out value="${fn:length(lRList) }" />)</h1>
					<a class="btn_st" id="wReview" onclick="writeReview();">리뷰쓰기</a>
					<a class="btn_st" id="uReview" onclick="updateReview();">리뷰수정</a>
										<div class="review_box">		
										<span class='star-rating'>
											<span style ="width:${lessonAvg * 20}%; float: left;" ></span>
										</span> 	
										<c:if test="${lessonAvg != 'NaN'}">
										${lessonAvg}
										</c:if>
										</div>
	
										<div class="review_list" id="bookmarkReview">
						<ul>
							<div id="innerReviewDiv">
																	

									
									
								</div>
						</ul>
					</div>
					<div class="paging" id="innerPageDiv"></div>
				</div>
			</div>
			<!-- /리뷰 -->

			
			
			<script>
			
			$(function(){
				
				$("#uReview").hide();
				
				<c:if test="${!empty uRStatus }">
				uRStatus = '${uRStatus}';
				</c:if>
				
				if(uRStatus=='reviewed'){
					$("#wReview").hide();
					$("#uReview").show();
							
				}
			
			});		
			
			
			function writeReview(){
				
				<c:if test="${empty loginUser }">
				alert("로그인이 필요합니다");
				return;
				</c:if>
				


				if(uRStatus=='unable'){
					alert('수강을 받으신 회원분만 리뷰를 남기실 수 있습니다.');
				}else if(uRStatus=='able'){
					$("#myBtn").click();
				}
			}
			
			
			function updateReview(){
				$("#myBtn").click();
			}
			
			
			</script>
			

    <!-- Trigger/Open The Modal -->
    <button id="myBtn" hidden>진짜 리뷰 버튼</button>
 
    <!-- The Modal -->
				<div id="myModal" class="modal">

					<!-- Modal content -->
					<div class="modal-content" style="width: 500px">
					<c:if test="${uRStatus eq 'able' }">	
						<div class="modal-header">

							<h4>${ldi.lTitle } 에 대한 리뷰를 등록해주세요</h4>
						</div>
							
						<form action="insertReview.do" onsubmit="return submitReview();">
						<div class="modal-body">
							

							<div class="starRev">
								<span class="starR">1</span> <span class="starR">2</span> <span
									class="starR">3</span> <span class="starR">4</span> <span
									class="starR">5</span>
							</div>
							
							<br>
							<hr>
							
							<textarea class="form-control" rows="5"
								style="margin: 0px; width: 400px; height: 90px;"
								placeholder="내용을 입력해주세요" name="rContent" id="rContent"></textarea>
						</div>
						<div class="modal-footer">
							<input type="text" name="lNo" value="${ ldi.lNo }" hidden="">
							<input type="text" id="rRating" name="rRating" hidden="">
							<button type="submit" class="btn btn-primary ">등록하기</button>
							<button type="button" id="close" class="btn btn-default ">닫기</button>
						</div>
						</form>
						</c:if>
						
						<c:if test="${uRStatus eq 'reviewed' }">	
						<div class="modal-header">
							<h4>리뷰를 수정합니다.</h4>
						</div>						
						
						<form action="updateReview.do" onsubmit="return submitReview();">
						<div class="modal-body">
							

							<div class="starRev">
								<span class="starR">1</span> <span class="starR">2</span> <span
									class="starR">3</span> <span class="starR">4</span> <span
									class="starR">5</span>
							</div>
							
							<br>
							<hr>
							
							<textarea class="form-control" rows="5"
								style="margin: 0px; width: 400px; height: 90px;"
								placeholder="내용을 입력해주세요" name="rContent" id="rContent">${userReview.rContent}</textarea>
						</div>
						<div class="modal-footer">
							<input type="text" name="lNo" value="${ ldi.lNo }" hidden="">
							<input type="text" id="rRating" name="rRating" value="${userReview.rRating}" hidden="">
							<button type="submit" class="btn btn-primary ">수정하기</button>
							<button type="button" id="close" class="btn btn-default ">닫기</button>
						</div>
						</form>
						
						<script>
						$(function(){
							$("#uReview").click(function(){
								$(".starR").eq(${userReview.rRating}-1).click();
							});
							
						});
						
						
						
						</script>	
						</c:if>

					</div>
				</div>
				







				<!-- 모달 스크립트 -->   
	<script type="text/javascript">
    // Get the modal
    var modal = document.getElementById('myModal');

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementById("close");                                          

    // When the user clicks on the button, open the modal 
    btn.onclick = function() {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    }
    
    //별점
    		$('.starRev span').click(function(){
			  $(this).parent().children('span').removeClass('on');
			  $(this).addClass('on').prevAll('span').addClass('on');
			  $("#rNum").val($(this).parent().children('.on').last().text());
			  return false;
			});
    
    $(".starR").click(function(){
    	var rRating =  $(this).text();
    	$("#rRating").val(rRating); 
    });
    
    function submitReview(){
		
    	var rContent = $("#rContent").val();
    	var rRa = $("#rRating").val();
    	
		if(rContent.length == 0){
			alert("리뷰 내용을 입력해주세요");
			return false;
		}
		
		if(rRa == 0 || rRa.length ==0){
			alert("별점을 입력해주세요");
			return false;
		}
    	
    	return true;
    }
    
    
    


	
	</script>
    

			
			
			
			
			
			
			
			

			<!-- 문의 -->
			<div class="class_detail detail_sec_bor" id="qna" style="width: 840px">
				<div class="section01">
					<h1>실시간톡</h1><h1>
					<img src="https://taling.me/Content/Images/app_install3.png">
					<p style="padding-top:10px;"></p>
					<a href="https://itunes.apple.com/kr/app/탈잉-taling/id1153218962?l=en&amp;mt=8" target="_blank"><img src="https://taling.me/Content/Images/ios.png" width="50%"></a><a href="https://play.google.com/store/apps/details?id=com.taling" target="_blank"><img src="https://taling.me/Content/Images/and.png" width="50%"></a>
						
						<a onclick="" class="btn_st">실시간 톡하기</a>						
						<!-- <a onclick="alert('로그인이 필요합니다'); $('#popup-login').show();" class="btn_st">실시간 톡하기</a> -->				
					<div class="review_list" id="bookmarkQna">
						<ul>
							<div id="innerQnaDiv">
								
							</div>
						</ul>
					</div>
					<div class="paging" id="innerQnaPageDiv"></div>
				</h1></div>
			</div>
			<!-- /문의-->

			<!-- 지도 -->
			<div class="class_detail detail_sec_bor">
	
				<div id="checker"></div>
			</div>
			
			
			<!-- /지도 -->

			

		</div>
		<!-- //수업상세 정보 -->

	</div>

	<!-- 비슷한강의>
	<div class="wide_section_wrap">
		<div class="like_class">
			<h1>비슷한강의</h1>
			<ul class="lc_list">
									비슷한 강의가 없습니다.
								</ul>
		</div>
	</div>
	<!-- //비슷한강의 -->

</div>
<div id="popup-write-review" class="popup popup-write-review" data-hide="popup-write-review">
	<form action="https://taling.me/Talent/WriteReview/166" method="POST" class="popup-content" id="frm-write-review">
		<h1>
			<strong>선찬주</strong> 튜터의 수업은 어떠셨나요?
		</h1>
		<div class="review-scores row">
			<div class="review-scores-detail review-scores-price">
				<label>커리큘럼</label>
				<div class="stars">
					<i class="glyphicon glyphicon-star" data-value="1"></i>
					<i class="glyphicon glyphicon-star" data-value="2"></i>
					<i class="glyphicon glyphicon-star" data-value="3"></i>
					<i class="glyphicon glyphicon-star" data-value="4"></i>
					<i class="glyphicon glyphicon-star" data-value="5"></i>
					<input type="hidden" name="priceScore" id="priceScore" value="0">
				</div>
			</div>
			<div class="review-scores-detail review-scores-quality">
				<label>전달력</label>
				<div class="stars">
					<i class="glyphicon glyphicon-star" data-value="1"></i>
					<i class="glyphicon glyphicon-star" data-value="2"></i>
					<i class="glyphicon glyphicon-star" data-value="3"></i>
					<i class="glyphicon glyphicon-star" data-value="4"></i>
					<i class="glyphicon glyphicon-star" data-value="5"></i>
					<input type="hidden" name="qualityScore" id="qualityScore" value="0">
				</div>
			</div>
			<div class="review-scores-detail review-scores-recommend">
				<label>준비성</label>
				<div class="stars">
					<i class="glyphicon glyphicon-star" data-value="1"></i>
					<i class="glyphicon glyphicon-star" data-value="2"></i>
					<i class="glyphicon glyphicon-star" data-value="3"></i>
					<i class="glyphicon glyphicon-star" data-value="4"></i>
					<i class="glyphicon glyphicon-star" data-value="5"></i>
					<input type="hidden" name="recommendScore" id="recommendScore" value="0">
				</div>
			</div>
			<div class="review-scores-detail review-scores-tran">
				<label>친절도</label>
				<div class="stars">
					<i class="glyphicon glyphicon-star" data-value="1"></i>
					<i class="glyphicon glyphicon-star" data-value="2"></i>
					<i class="glyphicon glyphicon-star" data-value="3"></i>
					<i class="glyphicon glyphicon-star" data-value="4"></i>
					<i class="glyphicon glyphicon-star" data-value="5"></i>
					<input type="hidden" name="TranScore" id="TranScore" value="0">
				</div>
			</div>
			<div class="review-scores-detail review-scores-kind">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;시간준수</label>
				<div class="stars">
					<i class="glyphicon glyphicon-star" data-value="1"></i>
					<i class="glyphicon glyphicon-star" data-value="2"></i>
					<i class="glyphicon glyphicon-star" data-value="3"></i>
					<i class="glyphicon glyphicon-star" data-value="4"></i>
					<i class="glyphicon glyphicon-star" data-value="5"></i>
					<input type="hidden" name="KindScore" id="KindScore" value="0">
				</div>
			</div>
		</div>
		<div class="review-content">
			<textarea name="content" id="content"></textarea>
			<button type="submit" class="btn btn-pink btn-sm pull-right">리뷰 올리기</button>
		</div>
	</form>
</div>

<div id="popup-write-qna" class="popup popup-write-qna" data-hide="popup-write-qna">
	<div class="popup-content" id="frm-write-review">
		<h1>
			<strong>질문을 등록해주세요.</strong> 
		</h1>
		<br>
		
		<input type="hidden" id="qId" value="">
		<div class="review-content">
			<textarea name="content_question" id="content_question" placeholder="궁금하신 점이 있다면 무엇이든 편하게 물어보세요! 최대한 빠르게 답변해드리겠습니다. (개인 연락처는 입력이 불가합니다.)"></textarea>
			<input type="checkbox" name="noname" id="noname"> 익명으로 쓰기
			<button type="submit" class="btn btn-pink btn-sm pull-right" onclick="question();">질문 올리기</button>
		</div> 
	</div>
</div>

<div id="popup-write-answer" class="popup popup-write-answer" data-hide="popup-write-answer">
	<div class="popup-content" id="frm-write-review">
		<h1>
			<strong>답변을 등록해주세요.</strong> 
		</h1>
		<br>
		
		<input type="hidden" id="qId" value="">
		<div class="review-content">
			<textarea name="content_answer" id="content_answer" placeholder="개인 연락처는 입력이 불가합니다."></textarea>
			<button type="submit" class="btn btn-pink btn-sm pull-right" onclick="answer();">답변 올리기</button>
		</div> 
	</div>
</div>

<script>

inReviewDiv('166',0);



String.prototype.toInteger = function() {
 return this.replace(/[^0-9]/g, '') * 1;
}

docuwidth = $( window ).width()/2;

$( window ).resize(function() {
	docuwidth = $( window ).width()/2;
});


$(window).scroll(function() {	

	if ($(window).scrollTop() > 691){ 
		$('#class_navi').addClass("fixedLayer");
		$("#class_navi").css("left", docuwidth - 600);
	}
	else{
		$("#class_navi").css("left", 0);
		$('#class_navi').removeClass("fixedLayer");
	}

	c = document.getElementById("checker");
	var limiter = c.offsetTop+80;

	
	if($(window).scrollTop() > 100) {
	   if($(window).scrollTop() < limiter) {
			$("#class_price").addClass("fixedLayerRemote");
			$("#class_price").css("left", docuwidth + 300);
	   } else {
			$("#class_price").removeClass("fixedLayerRemote");
			$("#class_price").animate({"top" : limiter-200 + "px"}, 10);
			$("#class_price").css("left", 0);
	   }
	} else {
			$("#class_price").removeClass("fixedLayerRemote");
			$("#class_price").animate({"top" : 0 + "px"}, 10);
			$("#class_price").css("left", 0);
	}
	
	toffsetTop = document.getElementById("tutorinfo").offsetTop + 650;
	IoffsetTop = document.getElementById("Introduction").offsetTop + 650;
	roffsetTop = document.getElementById("review").offsetTop + 650;
	qoffsetTop = document.getElementById("qna").offsetTop + 650;
	
});


</script>

<c:import url="../common/footbar.jsp"/>

 




<!-- Mirrored from taling.me/Talent/Detail/166 by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Dec 2019 22:07:36 GMT -->

</body>
</html>