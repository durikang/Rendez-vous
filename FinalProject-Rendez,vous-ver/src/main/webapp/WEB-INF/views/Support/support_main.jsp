<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Rendez,vous</title>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap core CSS -->
<!-- <link href="support/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/support/vendor/bootstrap/css/bootstrap.min.css">

<!-- Custom fonts for this template -->
<link href="resources/support/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="resources/support/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">


<!-- Custom styles for this template -->
<link href="resources/support/css/landing-page.min.css" rel="stylesheet">

<!-- 카카오톡 1:1 채팅 -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<style>
.container, .showcase {
	font-family: 'Do Hyeon', sans-serif;
}

#remoCon {

  position: fixed;

  width: 60px;

  height: 20px;

  right: 50px;

  bottom: 100px;

  display: none;

  }  
  
  #kakao:hover {
  	font-size:20px;
  	color:black;
  }
</style>
<body>
	<c:import url="../common/menubar.jsp"/>
	<!-- Masthead -->
	<header class="masthead text-white text-center">
		<div class="overlay" style="background-image: url('resources/support/img/mountains.jpg');"></div>
		<div class="container">
			<div class="row">
				<div class="col-xl-9 mx-auto">
					<h1 class="mb-5">도움이 필요하신가요?</h1>
					<h2 class="mb-3">Rendez,vous의 고객센터는</h2>
					<h2 class="mb-5">언제나 최선을 다 하겠습니다.</h2>
				</div>
				<div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
					<form action="support_search.do" method="POST">
						<div class="form-row">
							<div class="col-12 col-md-9 mb-2 mb-md-0">
								<input id="keyword" name="keyword" type="text" class="form-control form-control-lg" placeholder="고객 센터 내 검색">
							</div>
							<div class="col-12 col-md-3">
								<button type="submit" class="btn btn-block btn-lg" style="background: #c9c0b1; color: white;">검색</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</header>

	<!-- Icons Grid -->
	<section class="features-icons bg-light text-center">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-0 mb-lg-3">
						<div class="features-icons-icon d-flex">
							<i class="far fa-comment-dots m-auto" id="faq_btn" style="color: #c9c0b1;"></i>
						</div>
						<h3>F A Q</h3>
						<br>
						<p class="lead mb-3">회원들이 많이 질문한 내용을</p>
						<p class="lead mb-3">확인할 수 있습니다.</p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
						<div class="features-icons-icon d-flex">
							<i class="far fa-question-circle m-auto" id="qna_btn" style="color: #c9c0b1;"></i>
						</div>
						<h3>Q & A</h3>
						<br>
						<p class="lead mb-3">Q & A 게시판에서 사람들의</p>
						<p class="lead mb-3">문의 내역을 확인 할 수 있습니다.</p>
					</div>
				</div>				
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-0 mb-lg-3">
						<div class="features-icons-icon d-flex">
							<i class="far fa-list-alt m-auto" id="list_btn" style="color: #c9c0b1;"></i>
						</div>
						<h3>문의 내역</h3>
						<br>
						<p class="lead mb-3">내가 문의한 내역을</p>
						<p class="lead mb-3">확인할 수 있습니다.</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Image Showcases -->
	<section class="showcase">
		<div class="container-fluid p-0">
			<div class="row no-gutters">
				<div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('resources/support/img/time1.jpg'); background-size:cover;"></div>
				<!-- 이미지 바꾸기 -->
				<div class="col-lg-6 order-lg-1 my-auto showcase-text">
					<h2>고객 센터 운영 시간</h2>
					<br>
					<br>
					<p class="lead mb-2">평일 오전 10시 ~ 오후 6시</p>
					<p class="lead mb-2">점심시간 오후 1시 ~ 오후 2시</p>
					<p class="lead mb-2">공휴일 휴무</p>
				</div>
			</div>
			<div class="row no-gutters">
				<div class="col-lg-6 text-white showcase-img" style="background-image: url('resources/support/img/bg-showcase-1.jpg');"></div>
				<div class="col-lg-6 my-auto showcase-text">
					<h2>1:1 문의하기</h2>
					<br>
					<br>
					<p class="lead mb-2">
						<a id="kakao" href="javascript:void chatChannel()" style="text-decoration: none; font-family: 'Do Hyeon', sans-serif;">
							KakaoTalk 1:1 문의 하기
						</a>
					</p>
				</div>
			</div>
			<div class="row no-gutters">
				<div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('resources/support/img/mail.jpg');"></div>
				<div class="col-lg-6 order-lg-1 my-auto showcase-text">
					<h2>전화 / 이메일</h2>
					<br>
					<br>
					<p class="lead mb-2">1877 - 1111</p>
					<p class="lead mb-2">Rendz_vous@gmail.com</p>
				</div>
			</div>
		</div>
	</section>
	<!-- 지도 API 들어갈 부분 -->
	<section class="testimonials text-center bg-light">
		<div class="container">
			<h1 class="mb-5" style="border-bottom: 5px solid black;">MAP</h1>
			<div id="wrap">
				<div id="map" class="come" style="width: 100%; height: 600px;">
				</div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=119991bdd13dda48c828ddfef5d7a38c&libraries=services,clusterer,drawing"></script>
				<script>
					var container = document.getElementById('map');
					var options = {
						center : new kakao.maps.LatLng(37.499236, 127.032941),
						level : 3
					};

					var map = new kakao.maps.Map(container, options);
					var markerPosition = new kakao.maps.LatLng(37.498493, 127.032551);
				    var marker = new kakao.maps.Marker({
				       position : markerPosition
				    });
				    marker.setMap(map);
				    var iwContent = '<div style="padding:5px; margin-left:15px;">Rendez,vous<br><a href="https://map.kakao.com/link/map/Rendez_vous,37.498493, 127.032551" style="color:blue; text-decoration:none;" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Rendez_vous,37.498493, 127.032551" style="color:blue; text-decoration:none;" target="_blank">길찾기</a></div>',
				      // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
				      iwPosition = new kakao.maps.LatLng(37.498493, 127.032551); //인포윈도우 표시 위치입니다

				      // 인포윈도우를 생성합니다
				      var infowindow = new kakao.maps.InfoWindow({
				         position : iwPosition,
				         content : iwContent
				      });

				     var position = map.getCenter();
				     kakao.maps.event.addListener(map, 'center_changed', function(){
				       map.setCenter(position);
				       position = map.getCenter();
				     });
				      
				      function relayout() {  
				          // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
				          // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다 
				          // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
				          map.relayout();
				      }
				      
				      // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
				      infowindow.open(map, marker);
				</script>
				<br><br>
			<div id="map_text" style="text-align:left;">
				<h5 class="mb-5">강남지원 2관 : 서울특별시 강남구</h5>
				<h5 class="mb-5">테헤란로10길 9 그랑프리 빌딩 4F, 5F, 7F</h5>
			</div>
			</div>
		</div>
	</section>
	<!-- commint test -->
	<span id="remoCon">
		<a href="#" onClick="window.open('chatbot.do', '', 'width=500,height=700, left=1400, top=250')">
		<img src="resources/support/img/KakaoTalk.png" style="width:80px; height:80px;">
		</a>
	</span>

	<!-- Bootstrap core JavaScript -->
	<!-- <script src="support/vendor/jquery/jquery.min.js"></script>
  	<script src="support/vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->

	<script src="<c:url value="/resources/support/vendor/jquery/jquery.min.js"/>"></script>
	<script src="<c:url value="/resources/support/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

	<c:import url="../common/footbar.jsp"/>
	
	<script>
		$("#qna_btn").on("click", function(){
			location.href="support_qna.do";
		});
		

		$("#faq_btn").on("click", function(){
			location.href="support_faq.do";
		});

		<c:if test="${!empty loginUser}">
			$("#list_btn").on("click", function(){
				location.href="support_list.do";
			});
		</c:if>
		
		<c:if test="${empty loginUser}">
			$("#list_btn").on("click", function(){
				alert("로그인이 필요한 기능입니다.");
			});
		</c:if>
	</script>
	<script type='text/javascript'>
	  //<![CDATA[
	    // 사용할 앱의 JavaScript 키를 설정해 주세요.
	    Kakao.init('119991bdd13dda48c828ddfef5d7a38c');
	    function chatChannel() {
	      Kakao.Channel.chat({
	        channelPublicId: '_rxmxjIxb' // 카카오톡 채널 홈 URL에 명시된 id로 설정합니다.
	      });
	    }
	  //]]>
	</script>
	<script>
    $(document).scroll(function(){
	    var con = $("#remoCon");	
	    var position = $(window).scrollTop();	
	
	    if(position > 250){ 
	    	con.fadeIn(500); 
	    } else if(position < 250){ 
	    	con.fadeOut(500); 
	    }
	});	
	
    $("#remoCon").click(function(){
    	$("html, body").animate({scrollTop: 0}, 1000);
    });
  </script>
</body>

</html>
