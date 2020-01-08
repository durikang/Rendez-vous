<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>	
	<title>튜터 인서트</title>

	
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
    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/resources/h1/css/my_header_style.css?ver=1909272" />
	<link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/resources/h1/css/publy2.css" />
    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/resources/h1/css/main15.css?ver=19121" />
	<link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/resources/h1/css/main16.css" />
    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/resources/h1/css/main18.css" />
	<link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/resources/h1/css/style_sub23.css" />

	<link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/resources/h1/css/style.css" />
	<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/h1/css/default.css">


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
	<style>.async-hide { opacity: 0 !important} </style>
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
		<h1>상단네비</h1>
	</div>
<!-- //HEADER -->


<input type="hidden" id="Id" name="Id" value="19200">
<div class="tutor_cont">
	<div class="dim" id="dim"></div>
<div class="phone_box" id="phone_box" style="display:none;">
	<div class="head">
		전화번호 인증 <span class="button" id="phoneCls">X</span>
	</div>
	<div class="box gray5">
		인증번호
		<div style="overflow:hidden;margin:10px 0">
			<input type="text" placeholder="인증번호 입력" id="code" class="basic" style="width:351px">
			<div class="verify button left10" onclick="confirm();">
				확인
			</div>
		</div>		
		<font class="pink"><span id="time"></span></font>
	</div>
</div>



	
	<!-- page1 -->
	<form action="tutorInsert.do" method="post" enctype="multipart/form-data">
	<div id="page1" class="tab">
	
	<script>
		$('#phoneCls').click(function() {
			$('#dim').hide();
			$('#phone_box').hide();
		});	
		
		var panInterval;

		$('#veriPhone').click(function() {		
			var phone = $('#phone').val();
			if (/\d\d\d\-?\d\d\d\d?\-?\d\d\d\d/.test(phone)) {
				sendPhoneConfirm(phone);
				
			} else {
				alert('올바른 전화번호를 입력하세요');
				$('#Phone').focus();return false;
			}
			$('#dim').show();
			$('#phone_box').show();
			
			clearInterval(panInterval);
			var fiveMinutes = 60 * 5, display = document.querySelector('#time');
			startTimer(fiveMinutes, display);
		});	

		function startTimer(duration, display) {		
			var timer = duration, minutes, seconds;
			panInterval = setInterval(function () {
				minutes = parseInt(timer / 60, 10);
				seconds = parseInt(timer % 60, 10);

				minutes = minutes < 10 ? "0" + minutes : minutes;
				seconds = seconds < 10 ? "0" + seconds : seconds;

				display.textContent = minutes + ":" + seconds;

				if (--timer < 0) {
					clearInterval(panInterval);
				}
			}, 1000);
		}

		function confirm()
		{
			var phone = $('#phone').val();

			var code = $('#code').val();
			if (/\d\d\d\-?\d\d\d\d?\-?\d\d\d\d/.test(phone)) {
				phoneConfirm4(code, phone);
			} else {
				alert('올바른 전화번호를 입력하세요');
			}
		}
	</script>
	<div class="box">
		<div class="title">프로필사진<b class="pink">*</b></div>
		<div class="cont">
			<div class="caution caution1">
				<b class="pink">주의</b><br>
				<span class="gray8">* 얼굴이 나오지 않은 동물/캐릭터/단순배경사진/증명사진은 승인되지 않습니다.</span><br>
				<div style="overflow:hidden">
					<div class="pf">
						<img src="<%= request.getContextPath() %>/resources/h1/Images/eximg01.png">
					</div>
					<div class="pf">
						<img src="<%= request.getContextPath() %>/resources/h1/Images/eximg02.png">
					</div>
					<div class="pf">
						<img src="<%= request.getContextPath() %>/resources/h1/Images/eximg03.png">
					</div>
					<div class="pf">
						<img src="<%= request.getContextPath() %>/resources/h1/Images/eximg04.png">
					</div>
				</div>
			</div>
			
			
			<div style="margin: 30px 0">
				<img class="upf_b button" src="<%= request.getContextPath() %>/resources/h1/Images/btn_pfimg.png">
				<div class ="upf" id="picture-cover" id="ProfileThumbnailUrl" style="background-image:url('//taling.me/Content/Images/placeholders/profile-default.thumb.jpg')">
					<input type="hidden" id="ProfileThumbnailUrl" value="//taling.me/Content/Images/placeholders/profile-default.thumb.jpg"/>
					<input type="file" id="picture" name="picture" style="width:150px;height:130px;opacity:0;"/>
				</div>				
			</div>
			<script>
				$('#picture').change(function (e) {
					var file = (e.target || window.event.srcElement).files[0];

					var reader = new FileReader();
					reader.onload = function() {
						$('#picture-cover').css("background-image", "url('"+reader.result+"')");						
					}
					reader.readAsDataURL(file);
				});
			</script>

			<div class="sample1">
				<div class="arw">
					<img class="button" src="/tutor/Content/Images/icon_down.png" onclick="arwpaper(this)">
					<img class="button" style="display:none"src="/tutor/Content/Images/icon_up.png" onclick="arwpaper(this)">
				</div>
				<span>예시 이미지 및 화면보기</span>
				<div class="ex">
					<img src="/tutor/Content/Images/img_example_01.png">
				</div>
			</div>
		</div>
	</div>
	<div class="box">
		<div class="title">별명<b class="pink">*</b></div>
		<div class="cont">
			<input type="text" class="basic nick" id="Description" name="Description" placeholder="튜터님의 정체성을 가장 잘 드러낼 수 있는 별명을 입력해주세요." value="">
		</div>
	</div>
	<div class="box">
		<div class="title">인증<b class="pink">*</b></div>
		<div class="cont">
			<div class="caution caution2">
				<div class="pink" style="padding-bottom:5px;font-weight:600;">인증 가이드</div>
				
				<ul class="gray8">
				<li>수강생들에게 신뢰를 주기 위해 신분 또는 학력 인증은 필수입니다.</li>
				<li>파일은 jpg, png, gif, bmp등 이미지 파일만 가능합니다.</li>
				<li>관리자 확인 후 업로드해주신 파일은 바로 삭제됩니다.</li>
				<li>튜터등록은 내국인 또는 취업비자를 소지한 외국인만 가능합니다.</li>
				</ul>
			</div>

			<div class="inner1">
				<div class="gray5 title">증명<font class="gray8">학력/날짜/자격증/주관사 공인 확인 가능한 자격증 사본(최대 10개)</font></div>
				<input type="hidden" name="deleteCert" id="deleteCert" value="">
								<div class="certificate" style="position:relative;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요">
					<div class="verify left10">이미지 업로드</div>					
					<input type="file" name="certImg" input-file="img-Cert0" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
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
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert1" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert1" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert2" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert2" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert2" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert3" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert3" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert3" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert4" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert4" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert4" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert5" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert5" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert5" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert6" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert6" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert6" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert7" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert7" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert7" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert8" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert8" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert8" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert9" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert9" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert9" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert10" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert10" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert10" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert11" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert11" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert11" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert12" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert12" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert12" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert13" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert13" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert13" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert14" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert14" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert14" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert15" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert15" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert15" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert16" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert16" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert16" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert17" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert17" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert17" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert18" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert18" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert18" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
								<div class="certificate" id="cert19" style="position:relative;display:none;">
					<input type="text" class="basic len652" name="certName" placeholder="예) 졸업증명서,토익900,HSK 6급,GTQ1급, 임상경력 등의 자격명칭을 기재 해주세요" >
					<div class="verify left10">이미지 업로드</div>
					<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="/tutor/Content/Images/icon_del_bk.png"> 삭제</div-->
					<input type="file" name="certImg" input-file="img-Cert19" style="width:80px;height:50px;position:absolute;top:0;left:668px;opacity:0;cursor:pointer;"/>
					<div style="padding-top:10px;"><img alt="" id="img-Cert19" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:400px;" /></div>
				</div>
				

				<div class="plus button" onclick="add_certificate()">
					 증명서 추가
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
		<div class="title">소셜미디어<br><br><span class="gray8">권장사항</span></div>
		<div class="cont">
			<div class="caution caution2">
				<ul class="gray8">
				<li>기재해주신 정보는 튜터님의 수업홍보를 위해 사용될 수 있습니다.</li>
			</div>
						<div class="inner1">
				<input type="text" class="basic nick" name="instagram" placeholder="인스타그램" style="margin-bottom:10px"  ><br>
				<input type="text" class="basic nick" name="blog" placeholder="블로그(네이버,브런치,티스토리등)" style="margin-bottom:10px" ><br>
				<input type="text" class="basic nick" name="youtube" placeholder="유튜브" >
			</div>	
		</div>
	</div>

		<!--div class="next button" onclick="setMode(0);">정보를 입력해주세요.</div-->

	<div class="button_box">
		<!-- <div class="next button prev" onclick="setMode(0);">임시저장</div> -->
		<button class="next button on" id="realBtn" style="border: none;">제출하기</button>	
	</div>
	
	</div>
	</form>
	<!-- //page1 -->
	

	
	

	
	
	
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
	<div class="footer_cont">
		<h1>풋터</h1>
		<br>
		<h1>풋터</h1>
		<br>
		<h1>풋터</h1>
		<br>
		
	</div>
	<!-- /FOOTER -->


<!-- Channel Plugin Scripts -->
<script>
var scrollTop=0;
$('#custom-button-trigger').click(function(){
	scrollTop= $(window).scrollTop();
	$('#custom-button-1').click();
});
 (function() {
   var w = window;
   if (w.ChannelIO) {
     return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
   }
   var d = window.document;
   var ch = function() {
     ch.c(arguments);
   };
   ch.q = [];
   ch.c = function(args) {
     ch.q.push(args);
   };
   w.ChannelIO = ch;
   function l() {
     if (w.ChannelIOInitialized) {
       return;
     }
     w.ChannelIOInitialized = true;
     var s = document.createElement('script');
     s.type = 'text/javascript';
     s.async = true;
     s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
     s.charset = 'UTF-8';
     var x = document.getElementsByTagName('script')[0];
     x.parentNode.insertBefore(s, x);
   }
   if (document.readyState === 'complete') {
     l();
   } else if (window.attachEvent) {
     window.attachEvent('onload', l);
   } else {
     window.addEventListener('DOMContentLoaded', l, false);
     window.addEventListener('load', l, false);
   }
 })();
  ChannelIO('boot', {
   "pluginKey": "8fc98895-06a5-402d-8740-1cb9261ebc91",
	"customLauncherSelector": "#custom-button-1",
    "hideDefaultLauncher": true,
	   "userId": "znznwkdrns@naver.com", //fill with user id
	   "profile": {
		 "name": "유현식", //fill with user name
		 "mobileNumber": "01073267776", //fill with user phone number
		 "CUSTOM_VALUE_1": "VALUE_1", //any other custom meta data
		 "CUSTOM_VALUE_2": "VALUE_2"
	   }
 });
  ChannelIO('onHide', function() {
	$(window).scrollTop(scrollTop);
});
</script>
<!-- End Channel Plugin -->	

</div>



<div id="ch-plugin"><div id="ch-plugin-script" style="display:none" class="ch-messenger-hidden"><iframe id="ch-plugin-script-iframe" style="position:relative!important;height:100%!important;width:100%!important;border:none!important;"></iframe></div><div id="ch-plugin-core"><style data-styled="" data-styled-version="4.3.2"></style><style data-styled="" data-styled-version="4.3.2"></style><div hidden="" class="sc-erNlkL bRmDYI sc-RbTVP hrWefY"><div class="sc-eNNmBn cXBieY"><div name="push-exit" width="45" height="45" size="24" class="sc-dnqmqq sc-cBrjTV iByMcc"></div><div class="sc-jUpvKA ccOxya"><div size="34" class="sc-kGXeez kGMzSU"></div><div class="sc-fkyLDJ epSaPl">(알 수 없음)</div><div class="sc-iCwjlJ hRSOFL">9:00am</div></div><div class="sc-eopZyb bYeAnX"><div class="sc-jRuhRL coGTKb"><span class=""></span></div></div></div></div><div hidden="" class="sc-kEmuub cCdpiZ sc-RbTVP hrWefY"><div class="sc-eNNmBn cXBieY"><div name="push-exit" width="45" height="45" size="24" class="sc-dnqmqq sc-cBrjTV iByMcc"></div><div class="sc-jUpvKA ccOxya"><div size="34" class="sc-kGXeez kGMzSU"></div><div class="sc-fkyLDJ epSaPl">(알 수 없음)</div><div class="sc-iCwjlJ hRSOFL">9:00am</div></div><div class="sc-eopZyb bYeAnX"><div class="sc-jRuhRL coGTKb"><span class=""></span></div></div></div></div><style data-styled="" data-styled-version="4.3.2"></style><div hidden="" class="sc-bxivhb ggxtKj"><div class="sc-ifAKCX ccgoiG"><div class="textLauncherContent sc-EHOje blkbwA"></div><div class="textLauncherIcon sc-bZQynM gSNwmf"><div hidden="" class="sc-htpNat sc-htoDjs jiXddj">0</div></div></div></div></div></div><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div><iframe name="fb_xdm_frame_https" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=44#channel=f1b8168ca9c4e58&amp;origin=https%3A%2F%2Ftaling.me" style="border: none;"></iframe></div><div></div></div></div><style data-styled="" data-styled-version="4.3.2"></style></body>
</html>