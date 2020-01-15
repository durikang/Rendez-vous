<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>	
	<title>수업 인서트 페이지</title>

	
	<meta charset="UTF-8">   

	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="description" content="내 상황을 딱! 이해하는 튜터들에게 1:1로 수업을 받아보세요. 중국어, 코딩, 미술 등">
	<meta property="og:title" content="탈잉 - 나만의 튜터를 만나보세요">
	<meta property="og:url" content="https://taling.me/">
	<meta property="og:image" content="https://taling.me/Content/Images/ogimage2.png" />
	<meta property="og:description" content="내 상황을 딱! 이해하는 튜터들에게 1:1로 수업을 받아보세요. 중국어, 코딩, 미술 등">	
	<meta name="p:domain_verify" content="1dd028b45d9d85306bb74db3d9911bbb"/>
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/my_header_style.css?ver=1909272" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/publy2.css" />
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main15.css?ver=19121" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main16.css" />
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main18.css" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/style_sub23.css" />

	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/style.css?after" />
	<link rel="stylesheet" href="${contextPath}/resources/h1/css/default.css">


	<link rel="canonical" href="https://taling.me">


    <link rel="shortcut icon" href="//taling.me/Content/Images/favicon.ico" />
    <link rel="apple-touch-icon" href="//taling.me/Content/Images/mobicon.png"/>    

	<script src="https://taling.me/Scripts/prototype.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
    <script src="https://taling.me/Scripts/topbar.js"></script>
    <script src="https://taling.me/Scripts/common4.js"></script>
	<script src="https://taling.me/Scripts/func13.js"></script>
	<script src="https://taling.me/Scripts/controll.js"></script>
	<script src="https://taling.me/Scripts/motion.js"></script>
	<script src="https://taling.me/tutor/tutor_common.js"></script>
	
	



    <script src="https://taling.me/Scripts/popper.js"></script>
    <script src="https://taling.me/Scripts/mainbootstrap.js"></script>
	
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
    
	<!-- Page-hiding snippet (recommended)  -->
	<style>
		.async-hide { 
			opacity: 0 !important
		} 
		
		.left{
			margin-left: 0px !important
		}
		.header {
			margin-top:5px;	
  			position: relative;
  			background: white;
  			border: none;
		}

	
	</style>
	<script>(function(a,s,y,n,c,h,i,d,e){s.className+=' '+y;h.start=1*new Date;
	h.end=i=function(){s.className=s.className.replace(RegExp(' ?'+y),'')};
	(a[n]=a[n]||[]).hide=h;setTimeout(function(){i();h.end=null},c);h.timeout=c;
	})(window,document.documentElement,'async-hide','dataLayer',4000,
	{'GTM-NBPXJKP':true});</script>

    <script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-77451578-1', 'auto', {allowLinker: true});
	  ga('require', 'GTM-NBPXJKP');
	  ga('send', 'pageview');

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
	src="https://www.facebook.com/tr?id=666003960220481&ev=PageView&noscript=1"
	/></noscript>
	<!-- End Facebook Pixel Code -->
	<!-- Naver --> 
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script> 
	<script type="text/javascript"> 
	if (!wcs_add) var wcs_add={};
	wcs_add["wa"] = "s_568925707495";
	if (!_nasa) var _nasa={};
	wcs.inflow();
	wcs_do(_nasa);
	</script>
	<!-- Naver -->
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
			js.src = "//connect.facebook.net/ko_KR/sdk.js";
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
	<script>
		function mySub(){
			if($('#mySub').css('display')!='block'){
				$('#mySub').show();
			}else{
				$('#mySub').hide();
			}
		}

		function couponPop()
		{
			popupWindow = window.open('/Talent/coupon.php', '_blank', 'height=800,width=550,scrollbars=no,status=no');
		}
	</script>

</head>
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
	<c:import url="../common/hyunsidebar.jsp"/>
<!-- //HEADER -->


<div class="tutor_cont">


	<div class="title_box">
		<h3>수업 등록</h3>
		<div class="steps">
			<li id="pg1"><b>01</b>제목/상세 내용</li>
			<img src="${contextPath}/resources/h1/Images/icon_next.png">
			<!-- <a href="/tutor/regiTitle/19200"> -->
			
			<li id="pg2"><b>02</b>이미지/영상</li></a>
			<img src="${contextPath}/resources/h1/Images/icon_next.png">
			<!-- <a href="/tutor/regiPrice/19200"> -->
			
			<li id="pg3"><b>03</b>가격</li></a>
			<%-- <img src="${contextPath}/resources/h1/Images/icon_next.png"> --%>
			<!-- <a href="/tutor/regiClass/19200"> -->
			
			<!-- <li id="pg4"><b>04</b>수업</li></a> -->
		</div>
	</div>
	
	<script>
	$("#pg1").click(function(){
		$(this).siblings().removeClass("on");
		$(this).addClass("on");
		$(".tab").hide();
		$("#page1").show();
	});
	
	$("#pg2").click(function(){
		$(this).siblings().removeClass("on");
		$(this).addClass("on");
		$(".tab").hide();
		$("#page2").show();
		
	});
	
	$("#pg3").click(function(){
		$(this).siblings().removeClass("on");
		$(this).addClass("on");
		$(".tab").hide();
		$("#page3").show();
		
	});
	
	$("#pg4").click(function(){
		$(this).siblings().removeClass("on");
		$(this).addClass("on");
		$(".tab").hide();
		$("#page4").show();

	});
	
	
	
	
	
		$(function(){
			
			$("#pg1").click();
					
		});
	</script>
	
	
	
	
	
	
	
	<!-- page1 -->
	<form action="linsert.do" method="post" enctype="multipart/form-data" onsubmit="return onsub();">
	<div id="page1" class="tab">
	
	<div class="box">
		<div class="title">수업제목<b class="pink">*</b><br><br><span class="gray8">공백포함<br>최소20자~최대50자 이내</span></div>
		<div class="cont">
			<div class="caution caution2">
				<b class="pink">TIP</b><br>
				<ul class="gray8">
				<li>누구를 대상으로, 어떤 재능을 가르치시나요?</li>
				<li>수업을 통해 어떤것을 얻어갈 수 있나요?</li>
				<li>예시:미국주식,내 손으로 직접 투자하자/4회만에 내 손으로 만든 영상,유튜브에업로드♥</li>
				<ul>
			</div>
			<div class="inner1">
				<input type="text" class="basic nick" id="lTitle" name="lTitle" value="" placeholder="수강생을 끌어당길 수 있는 개성넘치는 제목을 만들어 보세요.">
			</div>
		</div>
	</div>

	<div class="box">
		<div class="title">수업소개<b class="pink">*</b><br><br><span class="gray8">최소 50자<br> 공백포함 300자 이상 권장</span></div>
		<div class="cont">
			<div class="caution caution2">
				<b class="pink">TIP</b><br>
				<ul class="gray8">
					<li>수업의 목표와 수업진행방식에 대해 설명해주세요.</li>
					<li>수업을 진행하는 동안 얻을 수 있는 결과물 혹은 수업 후 기대할 수 있는 발전에 대해 소개해주세요.</li>
					<li>다른 학원, 수업과는 다른 튜터님만의 장점에 대해서 설명해주세요.</li>
				</ul><br>
				<b class="pink">주의!</b><br>
				<ul class="gray8">
					일부 이모티콘은 인식이 되지 않아, 정성스럽게 작성해주신 내용이 날아갈 수 있습니다. 
					<br>강조를 해야 할 내용이 있는 경우 되도록이면 일반 특수문자(★/◎/♡)를 사용해주세요
				</ul>
			</div>
			<div class="inner1">
				<textarea class="basic len980 hei190" placeholder="수업소개는 수강생이 가장 주의깊게 살펴보는 부분입니다. 수강생들이 수업에 대해 알 수 있도록 TIP의 질문을 반드시 포함하여 작성해주세요." id="lIntroduction" name="lIntroduction"></textarea>
			</div>
			<div class="inner1">
				
				
						
			
				<div style="overflow:hidden;" id="tag_box">
									</div>
			</div>

		</div>
	</div>
	<div class="box">
		<div class="title">수업대상<b class="pink">*</b><br><br><span class="gray8">공백포함 200자 이상 권장</span></div>
		<div class="cont">
			<div class="caution caution2">
				<b class="pink">TIP</b><br>
				<ul class="gray8">
					<li>수업을 추천하는 대상은 누구일까요? ('관심이 있는 누구나'와 같이 추상적이거나 너무 포괄적인 답변은 피해주세요.)</li>
					<li>예시: 인턴/입사를 앞두고 엑셀이 걱정되는 분/ 토익 00점 이상의 기초적인 의사소통만 가능하신 분</li>
				</ul><br>
				<b class="pink">주의!</b><br>
				<ul class="gray8">
					일부 이모티콘은 인식이 되지 않아, 정성스럽게 작성해주신 내용이 날아갈 수 있습니다. 
					<br>강조를 해야 할 내용이 있는 경우 되도록이면 일반 특수문자(★/◎/♡)를 사용해주세요
				</ul>
			</div>
			<div class="inner1">
				<textarea class="basic len980 hei190" placeholder="TIP의 내용을 참고하여 튜터님의 수업을 수강하기에 적합한 수업대상에 대해 알려주세요. " id="lTarget" name="lTarget"></textarea>
			</div>
		</div>
	</div>
	
		<div class="box">
		<div class="title">수업등록지역<b class="pink">*</b></div>
		<div class="cont">
			<select class="basic len320" id="lRegion" name=lRegion onchange="regionSelect(this.value)">
				<option>수업 대표 지역을 선택해 주세요</option>
										<option value="서울" >서울</option>
												<option value="경기" >경기</option>
												<option value="인천" >인천</option>
												<option value="부산" >부산</option>
												<option value="경상,대구,울산" >경상,대구,울산</option>
												<option value="대전,충청" >대전,충청</option>
												<option value="강원" >강원</option>
												<option value="광주,전라,제주" >광주,전라,제주</option>
									</select>
			<select class="basic len320" id="lRegionSub" name="lRegionSub">
				<option value="">수업 상세 지역 선택</option>	
			</select>
		</div>
	</div>

	<div class="box">
		<div class="title">수업카테고리<b class="pink">*</b></div>
		<div class="cont">
			<select class="basic len320" id="lCateMain" name="lCateMain" onchange="categorySelect(this.value)">
				<option>수업카테고리를 선택해 주세요</option>
										<option value="디자인" >디자인</option>
												<option value="실무역량" >실무역량</option>
												<option value="뷰티" >뷰티</option>
												<option value="프로그래밍" >프로그래밍</option>
												<option value="외국어" >외국어</option>
												<option value="음악" >음악</option>
												<option value="라이프스타일" >라이프스타일</option>
												<option value="입시과외" >입시과외</option>
												<option value="액티비티" >액티비티</option>
												<option value="Money" >Money</option>
												<option value="자격증/시험" >자격증/시험</option>
												<option value="자기계발" >자기계발</option>
												<option value="Art" >Art</option>
												<option value="피트니스" >피트니스</option>
												<option value="영상" >영상</option>
												<option value="마케팅" >마케팅</option>
												<option value="이벤트" >이벤트</option>
												<option value="튜터전자책" >튜터전자책</option>
									</select>
			<select class="basic len320" id="lCateSub" name="lCateSub">
				<option value="">수업 세부 카테고리 선택</option>	
			</select>
		</div>
	</div>
	
		<script>
		function regionSelect(val){
			
			if(val == '서울'){
				$("#lRegionSub").empty();
				$("#lRegionSub").append("<option value=''>수업 상세 지역 선택</option>	");
				$("#lRegionSub").append("<option value='강남'>강남</option><option value='신촌홍대'>신촌홍대</option>"
				+"<option value='건대'>건대</option><option value='종로'>종로</option>"
				+"<option value='사당'>사당</option><option value='잠실'>잠실</option>"
				+"<option value='신림'>신림</option><option value='마포'>마포</option><option value='영등포'>영등포</option>"
				+"<option value='성북'>성북</option><option value='용산'>용산</option><option value='목동'>목동</option>"
				+"<option value='혜화'>혜화</option><option value='왕십리'>왕십리</option><option value='노원'>노원</option>"
				+"<option value='구로'>구로</option><option value='동작'>동작</option><option value='수유'>수유</option>"
				+"<option value='회기'>회기</option><option value='은평'>은평</option><option value='신사'>신사</option>"
				+"<option value='충무로'>충무로</option><option value='강서'>강서</option><option value='미아'>미아</option>"
				+"<option value='청량리'>청량리</option><option value='마곡더랜드타워'>마곡더랜드타워</option><option value='정릉'>정릉</option>"
				+"<option value='셀렉티드연남'>셀렉티드연남</option><option value='학여울'>학여울</option>");
			}
			
			
			if(val == '경기'){
				$("#lRegionSub").empty();
				$("#lRegionSub").append("<option value=''>수업 상세 지역 선택</option>	");
				$("#lRegionSub").append("<option value='분당'>분당</option><option value='수원'>수원</option><option value='일산'>일산</option><option value='서현'>서현</option><option value='의정부'>의정부</option><option value='안양'>안양</option><option value='안산'>안산</option><option value='용인'>용인</option><option value='남양주'>남양주</option><option value='에버랜드'>에버랜드</option><option value='82'>광명</option><option value='파주'>파주</option><option value='부천'>부천</option><option value='하남'>하남</option><option value='이천'>이천</option>");
			}
			
			if(val == '인천'){
				$("#lRegionSub").empty();
				$("#lRegionSub").append("<option value=''>수업 상세 지역 선택</option>	");
				$("#lRegionSub").append("<option value='부평'>부평</option><option value='구월동'>구월동</option><option value='송도'>송도</option><option value='계양'>계양</option><option value='간석동'>간석동</option>");
				
			}
			
			if(val == '부산'){
				$("#lRegionSub").empty();
				$("#lRegionSub").append("<option value=''>수업 상세 지역 선택</option>	");
				$("#lRegionSub").append("<option value='부산서면'>부산서면</option><option value='부산해운대'>부산해운대</option><option value='부산부경대'>부산부경대</option><option value='부산대'>부산대</option><option value='부산동래'>부산동래</option><option value='부산사상'>부산사상</option><option value='부산남포'>부산남포</option><option value='광안리'>광안리</option><option value='수영구'>수영구</option><option value='부산시청'>부산시청</option>");
				
			}
			
			if(val == '경상,대구,울산'){
				$("#lRegionSub").empty();
				$("#lRegionSub").append("<option value=''>수업 상세 지역 선택</option>	");
				$("#lRegionSub").append("<option value='대구중앙'>대구중앙</option><option value='대구동성로'>대구동성로</option><option value='대구수성구'>대구수성구</option><option value='창원'>창원</option><option value='대구경북대'>대구경북대</option><option value='울산대'>울산대</option><option value='울산시청'>울산시청</option><option value='구미'>구미</option><option value='포항'>포항</option><option value='수성'>수성</option><option value='성서계대'>성서계대</option><option value='경산영남대'>경산영남대</option>");
			}
			
			if(val == '대전,충청'){
				$("#lRegionSub").empty();
				$("#lRegionSub").append("<option value=''>수업 상세 지역 선택</option>	");
				$("#lRegionSub").append("<option value='둔산'>둔산</option><option value='대전역'>대전역</option><option value='유성구'>유성구</option><option value='청주'>청주</option><option value='천안'>천안</option><option value='은행'>은행</option><option value='세종시'>세종시</option><option value='홍성'>홍성</option>");
			}
			
			if(val == '강원'){
				$("#lRegionSub").empty();
				$("#lRegionSub").append("<option value=''>수업 상세 지역 선택</option>	");
				$("#lRegionSub").append("<option value='강릉'>강릉</option><option value='춘천'>춘천</option><option value='원주'>원주</option>");
			}
			
			if(val == '광주,전라,제주'){
				$("#lRegionSub").empty();
				$("#lRegionSub").append("<option value=''>수업 상세 지역 선택</option>	");
				$("#lRegionSub").append("<option value='전남대'>전남대</option><option value='전주'>전주</option><option value='상무지구'>상무지구</option><option value='제주'>제주</option><option value='동명'>동명</option><option value='첨단지구'>첨단지구</option><option value='군산'>군산</option>");
			}
			
			if(val == '수업 대표 지역을 선택해 주세요'){
				$("#lRegionSub").empty();
				$("#lRegionSub").append("<option value=''>수업 상세 지역 선택</option>	");
			}
			
		}
		
		
		
		function categorySelect(val){
			
			if(val == '디자인'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='포토샵'>포토샵</option><option value='일러스트레이터'>일러스트레이터</option><option value='제품디자인'>제품디자인</option>	<option value='건축'>건축</option>	<option value='UX/UI디자인'>UX/UI디자인</option>	<option value='편집디자인'>편집디자인</option>	<option value='라이트룸'>라이트룸</option>	<option value='애니메이션'>애니메이션</option>");
			}
			    
			if(val == '실무역량'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='DataScience'>DataScience</option> <option value='스피치'>스피치</option> <option value='엑셀'>엑셀</option> <option value='파워포인트'>파워포인트</option> <option value='창업'>창업</option> <option value='업무 노하우'>업무 노하우</option> <option value='재무회계'>재무회계</option> <option value='브랜딩'>브랜딩</option>");
			}
			
			if(val == '뷰티'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='메이크업'>메이크업</option> <option value='퍼스널컬러'>퍼스널컬러</option> <option value='헤어'>헤어</option> <option value='패션'>패션</option> <option value='스킨케어/마사지'>스킨케어/마사지</option> <option value='네일'>네일</option>");
			}
			
			if(val == '프로그래밍'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='WEB개발'>WEB개발</option> <option value='파이썬'>파이썬</option> <option value='APP개발'>APP개발</option> <option value='알고리즘'>알고리즘</option> <option value='워드프레스'>워드프레스</option> <option value='게임제작'>게임제작</option> <option value='아두이노'>아두이노</option> <option value='해킹'>해킹</option> <option value='Database'>Database</option>");
			}
			
			if(val == '외국어'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='영어회화'>영어회화</option> <option value='중국어'>중국어</option> <option value='비즈니스'>비즈니스</option> <option value='외국어(기타)'>외국어(기타)</option> <option value='토익/토플'>토익/토플</option> <option value='일본어'>일본어</option> <option value='스페인어'>스페인어</option> <option value='여행 외국어'>여행 외국어</option> <option value='프랑스어'>프랑스어</option> <option value='독일어'>독일어</option> <option value='오픽/토스'>오픽/토스</option> <option value='언어교환'>언어교환</option> <option value='Writing'>Writing</option>");
			}
			     
			if(val == '음악'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='보컬'>보컬</option> <option value='미디작곡'>미디작곡</option> <option value='피아노'>피아노</option> <option value='기타연주'>기타연주</option> <option value='국악'>국악</option> <option value='드럼'>드럼</option> <option value='디제잉'>디제잉</option> <option value='랩'>랩</option> <option value='바이올린'>바이올린</option> <option value='우쿨렐레'>우쿨렐레</option> <option value='오케스트라'>오케스트라</option> <option value='첼로'>첼로</option> <option value='성악'>성악</option>");
			}
			
			if(val == '라이프스타일'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='핸드메이드'>핸드메이드</option> <option value='사진'>사진</option> <option value='플라워'>플라워</option> <option value='연기'>연기</option> <option value='요리/베이킹'>요리/베이킹</option> <option value='여행/투어'>여행/투어</option> <option value='커피/차'>커피/차</option> <option value='사주/타로'>사주/타로</option> <option value='술'>술</option> <option value='반려동물'>반려동물</option> <option value='도예/물레'>도예/물레</option> <option value='가죽공예'>가죽공예</option> <option value='마술'>마술</option> <option value='바둑'>바둑</option>");
			}
			
			if(val == '입시과외'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='입시논술'>입시논술</option> <option value='수능수학'>수능수학</option> <option value='수능영어'>수능영어</option> <option value='수능과학'>수능과학</option>");
			}
			
			if(val == '액티비티'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='방송댄스'>방송댄스</option> <option value='댄스'>댄스</option> <option value='수상/레저'>수상/레저</option> <option value='무용'>무용</option> <option value='농구/축구'>농구/축구</option> <option value='보드'>보드</option> <option value='액티비티 기타'>액티비티 기타</option> <option value='호신술/무술'>호신술/무술</option> <option value='볼링'>볼링</option> <option value='체험이용권'>체험이용권</option> <option value='클라이밍'>클라이밍</option>");
			}
			
			if(val == 'Money'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='투잡'>투잡</option> <option value='주식투자'>주식투자</option> <option value='기타 재테크'>기타 재테크</option> <option value='부동산'>부동산</option> <option value='가상화폐'>가상화폐</option>");
			}
			
			if(val == '자격증/시험'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='공인자격증'>공인자격증</option> <option value='기사'>기사</option>");
			}
			
			if(val == '자기계발'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='취업/이직'>취업/이직</option> <option value='심리상담'>심리상담</option> <option value='출판/글쓰기'>출판/글쓰기</option> <option value='모임/스터디'>모임/스터디</option> <option value='기타 자기계발'>기타 자기계발</option> <option value='자기관리'>자기관리</option> <option value='커리어'>커리어</option> <option value='잡학지식/상식'>잡학지식/상식</option> <option value='인문'>인문</option>");
			}
			       
			if(val == 'Art'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='드로잉/스케치'>드로잉/스케치</option> <option value='캘리그래피'>캘리그래피</option> <option value='기타미술'>기타미술</option> <option value='아크릴화/유화'>아크릴화/유화</option> <option value='아이패드/태블릿 드로잉'>아이패드/태블릿 드로잉</option> <option value='수채화'>수채화</option> <option value='동양화'>동양화</option> <option value='팝아트/인물화'>팝아트/인물화</option>");
			}
			
			if(val == '피트니스'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='PT'>PT</option> <option value='팀 운동(GX)'>팀 운동(GX)</option> <option value='필라테스'>필라테스</option> <option value='교정/재활'>교정/재활</option> <option value='요가'>요가</option> <option value='골프'>골프</option> <option value='발레/체조/폴댄스'>발레/체조/폴댄스</option> <option value='온라인PT/식단관리'>온라인PT/식단관리</option> <option value='스쿼시/배드민턴/테니스'>스쿼시/배드민턴/테니스</option> <option value='줌바'>줌바</option>");
			}
			
			if(val == '영상'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='프리미어'>프리미어</option> <option value='영상기획/촬영'>영상기획/촬영</option> <option value='에프터이펙트'>에프터이펙트</option> <option value='영상(기타)'>영상(기타)</option> <option value='여행영상'>여행영상</option> <option value='파이널컷'>파이널컷</option> <option value='시포디'>시포디</option> <option value='VJ'>VJ</option>");
			}
			
			if(val == '마케팅'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='마케팅'>마케팅</option>");
			}
			
			if(val == '이벤트'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='탈잉이벤트'>탈잉이벤트</option>");
			}
			
			if(val == '튜터전자책'){
				$("#lCateSub").empty();
				$("#lCateSub").append("<option value=''>수업 세부 카테고리 선택</option>");
				$("#lCateSub").append("<option value='튜터전자책'>튜터전자책</option>");
			}

		}
	</script>
	
	
	
	
	
	
	
	




	<div class="button_box">
		<!-- <div class="next button prev" onclick="setMode(0);">임시저장</div> -->
		<div class="next button on" onclick="next1();">다음단계</div>		
	</div>
	
	</div>
	<!-- //page1 -->
	
	<script>
	
	 function next1(){
		$("#pg2").click();
		$('html').scrollTop(0);
	}
	 

	
	</script>
	
	
	
	<!-- page2 -->
	<div id="page2" class="tab">
		<div class="box">
		<div class="title">이미지<b class="pink">*</b></div>
		<div class="cont">
			<div class="caution caution2">
				<div class="pink" style="padding-bottom:5px;font-weight:600;">TIP</div>
				
				<ul class="gray8">
				<li>커버 이미지는 검색결과에 보여지는 이미지 입니다.</li>
				<li>커버 이미지는 반드시 등록해야 합니다.</li>
				<li>나머지 이미지는 최대 10장까지 등록 가능합니다.</li>
				<li>- 10MB 이하의 jpg,jpeg,png 파일로 올려주세요</li>
				</ul>
			</div>
			<div class="inner1" style="position:relative;">
				<div class="gray5 title"><b class="pink">커버 이미지</b></div>
									<span class="verify">업로드</span>
					<input type="file" id="Idcard" name="covImg" input-file="img-cover" style="width:80px;height:50px;position:absolute;top:30px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-cover" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
								
			</div>

			<div class="inner1">
				<div class="gray5 title">추가 이미지 (최대 10개)</div>
				<input type="hidden" name="deleteCert" id="deleteCert" value="">
				<div class="certificate" style="position:relative;">
					<input type="text" class="basic len652" name="disImg" placeholder="추가 이미지" style="display: none;">
					<div class="verify left10">업로드</div>					
					<input type="file" name="extImg" input-file="img-Cert0" style="width:80px;height:50px;position:absolute;top:0;left:0;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert0" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<script>
					function deleteCert(val)
					{
						if($('#deleteCert').val()=='')
						{
							$('#deleteCert').val(val);
						}
						else
						{
							$('#deleteCert').val($('#deleteCert').val()+","+val);
						}
					}
				</script>
				<!--innerHTML로 엘리멘트를 생성해서 넣으면 change 이벤트를 받지 못해서 미리 여러개를 생성해놓고 show하는 방안으로 임시 처리함-->
								<div class="certificate" id="cert1" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="disImg" placeholder="추가 이미지" style="display: none;">
					<div class="verify left10">업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="extImg" input-file="img-Cert1" style="width:80px;height:50px;position:absolute;top:0;left:0px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert1" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert2" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="disImg" placeholder="추가 이미지" style="display: none;">
					<div class="verify left10">업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="extImg" input-file="img-Cert2" style="width:80px;height:50px;position:absolute;top:0;left:0px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert2" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert3" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="disImg" placeholder="추가 이미지" style="display: none;">
					<div class="verify left10">업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="extImg" input-file="img-Cert3" style="width:80px;height:50px;position:absolute;top:0;left:0px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert3" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert4" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="disImg" placeholder="추가 이미지" style="display: none;">
					<div class="verify left10">업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="extImg" input-file="img-Cert4" style="width:80px;height:50px;position:absolute;top:0;left:0px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert4" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert5" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="disImg" placeholder="추가 이미지" style="display: none;">
					<div class="verify left10">업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="extImg" input-file="img-Cert5" style="width:80px;height:50px;position:absolute;top:0;left:0px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert5" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert6" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="disImg" placeholder="추가 이미지" style="display: none;">
					<div class="verify left10">업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="extImg" input-file="img-Cert6" style="width:80px;height:50px;position:absolute;top:0;left:0px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert6" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert7" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="disImg" placeholder="추가 이미지" style="display: none;">
					<div class="verify left10">업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="extImg" input-file="img-Cert7" style="width:80px;height:50px;position:absolute;top:0;left:0px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert7" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert8" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="disImg" placeholder="추가 이미지" style="display: none;">
					<div class="verify left10">업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="extImg" input-file="img-Cert8" style="width:80px;height:50px;position:absolute;top:0;left:0px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert8" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert9" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="disImg" placeholder="추가 이미지" style="display: none;">
					<div class="verify left10">업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="extImg" input-file="img-Cert9" style="width:80px;height:50px;position:absolute;top:0;left:0px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert9" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
				<div class="plus button" onclick="add_certificate()">
					 이미지추가
				</div>
			</div>

		</div>
	</div>
	<script>
		$('[input-file]').change(function (e) {			
			var file = (e.target || window.event.srcElement).files[0];
			var targetId = $(this).attr('input-file');
			var reader = new FileReader();
			reader.onload = function() {
				$('#' + targetId)
					.attr('src', reader.result)
					.show();
			}
			reader.readAsDataURL(file);
			$('#' + targetId + '-alert').hide();
		});

		var certNum = 1;

		function add_certificate(){
			$('#cert'+certNum).show();
			certNum++;
		}

		
	</script>	


	<div class="box">
		<div class="title">영상등록<br><br><span class="gray8">권장사항</span></div>
		<div class="cont">
			<div >
			<div class="caution caution1">
				<b class="pink">주의</b><br>
				<ul class="gray8">
				<li>Youtbue 영상만 등록이 가능합니다.</li>
				<li>Youtbue 영상 URL를 입력해주세요.</li>
				<li>잘못된 주소를 입력시 영상이 등록되지 않을 수 있습니다.</li>
				<!--li style="color:#000">커버영상으로 등록을 원하신다면 해당 영상에 체크해주세요.</li-->
				<ul>
			</div>
			</div>
			<div class="inner1">	
				<div class="vdo"><input type="text" name="lYtb" class="basic len786" placeholder="예) https://youtu.be/1sboNBkTMuU" style="margin-bottom:10px"></div>									
			</div>
			<script>
				function addvdo(){					
					var str='<div class="vdo"><input type="text" class="basic len786" placeholder="예) https://youtu.be/1sboNBkTMuU" style="margin-bottom:10px" name="Videos[]" ></div>';
					$('.vdo').last().after(str);
				}
				function rmvd(val){
					var name ="#vdcont"+val;
					$(name).remove();
				}
				function vdo(val){
					var name="#vdo"+val;
					if($(name).hasClass('on'))
					{
						$(name).removeClass('on');
						name +="c";
						$(name).attr('checked',false);
					}
					else
					{	
						$('.vdo').children('input[type=checkbox]').attr('checked',false);
						$('.vdo').children('label').removeClass('on');
						$(name).addClass('on');
						name +="c";
						$(name).attr('checked',true);
					}
				}

				function agreeChk(val){
					name = "#Is_Agree0";
					if($(name).hasClass('on'))
					{
						$('#Is_Agree').val('0');
						$(name).removeClass('on');
					}
					else
					{	
						$('#Is_Agree').val('1');
						$(name).addClass('on');
					}
				}
			
			</script>
		</div>
	</div>

	<div class="button_box">
		<div class="next button on" onclick="next2();">다음단계</div>		
	</div>
		
		
		
	</div>
	<!-- //page2 -->
	
	<script>
	
	 function next2(){
		$("#pg3").click();
		$('html').scrollTop(0);
	 }
	 

	
	</script>
	
	
	
	
	
	<!-- page3 -->
	<div id="page3" class="tab">
		
		<div class="box">
		<div class="title">가격/시간/횟수<b class="pink">*</b></div>
		<div class="cont">
			<div class="inner1" style="margin:0">
				<div class="gray5 title">시간당 가격</div>
				<input type="text" id="lPrice" name="lPrice" value="" class="basic phone" placeholder="시간당 가격을 입력하세요"> 원
			</div>
			<script>
				$('#UnitPrice').change(function(){updateCalculation()});
			</script>

			<script>
				$('#TotalTimes').change(function(){updateCalculation()});
			</script>
		</div>
	</div>
	<div class="box">
		<div class="title">총 수업가격<b class="pink"></b></div>
		<div class="cont">
			<div class="caution caution2" style="overflow:hidden">
				<font><span id="calc-unit-price">0</span>원&nbsp;&nbsp;X&nbsp;&nbsp;<span id="calc-time">0</span>시간&nbsp;&nbsp;X&nbsp;&nbsp;<span id="calc-total-times">0</span>회</font>
				<div class="rs">
					총&nbsp;&nbsp;<font class="pink"><b><span id="calc-result">0</span></b>원</font><br>
					연결수수료&nbsp;&nbsp;<b><span id="calc-fee">0</span></b>원
				</div>
			</div>
			<div style="text-align:right;margin:20px 0;" class="pink">
				<!--a href="#" class="pink"><img src="/tutor/Content/Images/icon_info.png" style="margin-top:-2px">&nbsp;탈잉 수업과정 및 결제정책</a-->
			</div>
		
			<div class="sample1">
				<div class="arw">
					<img class="button" src="/tutor/Content/Images/icon_down.png" onclick="arwpaper(this)">
					<img class="button" style="display:none"src="/tutor/Content/Images/icon_up.png" onclick="arwpaper(this)">
				</div>
				<span>예시 이미지 및 화면보기</span>
				<div class="ex">
					<img src="/tutor/Content/Images/img_example_03.png">
				</div>
			</div>
	
		</div>
	</div>
	<!--div class="box">
		<div class="title">수강생에게 보낼 메시지<b class="pink">*</b></div>
		<div class="cont">
			<textarea class="basic len980" placeholder="수강생과 수업 연결 시에 메시지가 전달됩니다"></textarea>			
		</div>
	</div-->
	<div class="box process">
		<div class="left">
			<div><b style="color:#ff005a">튜터</b></div>
			<div style="margin-top:56px"><b style="color:#333366">수강생</b></div>
			<div style="margin-top:60px"><b>결제/수수료&<br>환불정책</b></div>
		</div>
		<div class="right">
			<div class="top1">
				<div class="bar_p"></div>
				<div class="bar_g"></div>
				<div class="stone">수업등록</div>
				<div class="bar"><img src="/tutor/Content/Images/arrow_process_red.png"></div>
				<div class="stone">연락처 수신</div>
				<div class="bar"><img src="/tutor/Content/Images/arrow_process_red.png"><br><img src="/tutor/Content/Images/arrow_process_bl.png"></div>
				<div class="stone">일정조율</div>
				<div class="bar"><img src="/tutor/Content/Images/arrow_process_red.png"><br><img src="/tutor/Content/Images/arrow_process_bl.png"></div>
				<div class="stone">수업 진행</div>
				<div class="bar"><img src="/tutor/Content/Images/arrow_process_red.png"><br><img src="/tutor/Content/Images/arrow_process_bl.png"></div>
				<div class="stone" style="margin-left:17px;padding:18px 65px;">
				수업료 환급</div>
			</div>
			<div class="top2">
				<div class="lt">
					<div class="frame"></div>
					<div class="stone">수업신청</div>
					<img src="/tutor/Content/Images/arrow_process_bl.png">
				
					<div style="padding-right:46px">
						<div class="cbar"></div>
						<div class="cir"></div>
						<div class="info">
							<b>신청시</b>
							<br>
																
							전체 수업료<br>탈잉으로 <span class="pink"id="calc-fee2">0원</span>
							결제
							
						</div>
					</div>
					
				</div>
				<div class="rt">
					<div style="width:26%;margin-right:35px;" >
						<div class="cbar"></div>
						<div class="cir"></div>
						<div class="info">

														
							<b>수업24시간 전 취소</b>		<br>					
							수강생에게 전액 환불
							<br>
							<b>24시간 이내 취소</b>
							<br>							
							튜터님께 1시간 수업료
													</div>
					</div>
					<div style="width:30%;margin-right:36px; display:none;">
						<div class="cbar"></div>
						<div class="cir"></div>
						<div class="info">
							<b>첫수업 후 취소 시</b>
							<br>
							튜터에게<br>1시간 수업료<br><span  class="pink"id="calc-fee4">0원</span>
							환불
						</div>
					</div>
					<div style="width:15%">
						<div class="cbar pi"></div>
						<div class="cir pi"></div>
						
						<p class="triangle-border" style="position:absolute;margin-top:-150px;margin-left:-47px;">
													
														 전체 수업료의 20%는<br>
							<span>탈잉 연결 수수료</span>로<br>
							확정됩니다.
													</p>

						<div class="info">
								<b class="fix">수수료<br><span id="calc-fee5">0</span><br>확정</b>
						</div>
					</div>
					<div  style="width:55%">
						<div class="cbar"></div>
						<div class="cir"></div>
						<div class="info">
							<b>잔여수업료</b>
							<br>							
														튜터가 수강생<br>또는 탈잉에게<br>
							<span class="pink" id="calc-result2">0원</span><br> 직접수취
							

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="box">
		<div class="caution caution2" style="overflow:hidden;width:1200px">
			<p class="gray8">
				<b class="pink">Q.</b>탈잉의 수수료 정책은 어떻게 되나요?
			</p>
			<p>
				<b>A.</b>
				탈잉 연결 수수료는 다회차 수업의 경우 첫 1시간 수업료, 원데이클래스의 경우 전체 수업료의 20% 입니다. 이는 탈잉 운영비와 수업홍보비로 활용합니다.<br>
				첫 수업 후 수강생이 생각했던 수업과 맞지 않아 추후 수업 진행 취소하는 경우, 튜터님께 1시간 수업료를 환급해드립니다.<br>
				(수업 신청 전, 수업이 어떤 방식으로 진행되는지 알 수 있도록 수업소개 페이지에 수업 전 반드시 알아야 할 내용을 충분히 설명해주세요.)


				<br><br>
				<a onclick="pop_pay()" ><font class="pink"><img src="/tutor/Content/Images/icon_info.png">&nbsp;탈잉 수수료 정책의 이점에 대해서 더 알아보세요.</font></a>
				<!--https://taling.me/Tutor/Register_pop.html-->
				<script>
					function pop_pay(){
						$('#pay_pop').show();
						$('#back').show();
					}
					$(function(){
						$('#back').click(function(){
							$('#pay_pop').hide();
							$('#back').hide();
						});
					});
				</script>
			</p>
		</div>
	</div>
	<div class="button_box">
		<a href="*" target="_blank"><div class="next button prev">미리보기</div></a>
		<button class="next button on" style="border: none;">등록하기</button>
	</div>

	</div>
	<!-- //page3 -->
	</form>
	
	<!-- 온서브밋 -->
	<script>

	
		function onsub(){
			
 			if($("#lTitle").val().length<5 || $("#lTitle").val().length>20){
				alert("수업 제목은 5자 이상 20자 이하로 입력해주세요");
				$("#pg1").click();
				$("#lTitle").focus();
				return false;
			}
 			
 			if($("#lIntroduction").val().length<50){
				alert("수업 소개는 최소 50자 이상 입력해주세요");
				$("#pg1").click();
				$("#lIntroduction").focus();
				return false;
			}
 			
 			if($("#lTarget").val().length<50){
				alert("수업 대상에 최소 50자 이상 입력해주세요");
				$("#pg1").click();
				$("#lTarget").focus();
				return false;
			}
 			
 			if($("#Idcard").val().length<1){
				alert("대표 사진은 반드시 등록해야 합니다");
				$("#pg2").click();
				return false;
			}

 						
 			
 			if($("#lPrice").val().length<1){
				alert("수업료를 입력해주세요");
				$("#lPrice").focus();
				return false;
			}
 			
 			
 			

 			
 			
 			
 			
 			
 			
 			if($("#Idcard").val().length<1){
				alert("커버 이미지는 반드시 등록해야 합니다");
				$("#pg2").click();
				return false;
 			}
 			
			
		}
	
	
	
	</script>
	
	
	
	<!-- page4 -->	
	<!-- //page4 -->
	
	
	
</div>

<script>
	function setMode(val)
	{
		Mode = val;
		$('#frm-register-detail').submit();
	}

	var isUploading = false;
	$('#frm-register-detail').submit(function (e) {
        e.preventDefault();
		
		if($('#isAuth').val() == '0' ){ alert('번호 인증을 해주세요');$('#phone').focus();return false;}

		if($('#picture').val() == '' ){ 
			if($('#ProfileThumbnailUrl').val() == '//taling.me/Content/Images/placeholders/profile-default.thumb.jpg' ){ 
				alert('프로필사진을 등록해주세요');$('#picture').focus();return false;
			}
		}

		if($('#Description').val() == '' ){ alert('별명을 입력하세요');$('#Description').focus();return false;}
		
		
		if($('#SchoolMajor').val() != '' ){			
			if($('#SchoolMajorS').val() == '' ){
				alert('학과를 입력하세요');$('#SchoolMajorS').focus();return false;
			}
			if($('#input-cover-image2').val() == '' ){ 			
				alert('자격 증명 사진을 업로드 하세요');$('#input-cover-image2').focus();return false;						
			}
		}

		if($('#SchoolMajor2').val() != '' ){			
			if($('#SchoolMajor2S').val() == '' ){
				alert('학과를 입력하세요');$('#SchoolMajor2S').focus();return false;
			}
			if($('#input-cover-image3').val() == '' ){ 			
				alert('자격 증명 사진을 업로드 하세요');$('#input-cover-image3').focus();return false;						
			}
		}
				
		//if($('#IsPhone').val() == '0' ){ alert('휴대폰 번호를 인증해주세요');$('#Phone2').focus();return false;}

		if(isUploading) {
			alert('업로드 중입니다. 잠시만 기다려 주세요');
			return false;
		}
		
		//미리 생성해 놓은 값 중에서 값이 없는 건 disabled
		$("input[type=text]").each(function() {
			if($(this).val() == "") {				
				$(this).attr("disabled",true);
			}
		});
		$("input[type=file]").each(function() {
			if($(this).val() == "") {				
				$(this).attr("disabled",true);
			}
		});

		var formData = new FormData(this);
	
		isUploading = true;
		$.ajax({
			type: 'POST',
			url: '/tutor/regiInfo_proc.php',
			contentType: false,
			data: formData,
			processData: false,
			success: function (response) {
				isUploading = false;

				if(response == "error3")
				{
					alert("이미지 파일을 확인해주세요! jpg,jpeg,bmp,png 만 가능합니다.");
					return;
				}
				else
				{			   
					if(response == '0000')
					{
						alert('등록이 완료되었습니다.');
						if(Mode == 1)
						{
							location.href="/tutor/regiTitle/"+$('#Id').val();
						}
						else
						{
							location.href="/tutor/regiInfo/"+$('#Id').val();
						}

						
					}
					else
					{
						alert(response);
					}
				}
			},
			error: function(response) {
				isUploading = false;
			}
		});
		return false;
	});
</script>


	<!-- FOOTER -->
<c:import url="../common/footbar.jsp"/>
	<!-- /FOOTER -->

</div>



</body>
</html>