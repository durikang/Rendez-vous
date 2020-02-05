<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=0">

<!-- -------------수정 전-------------- -->
<!-- <link rel="stylesheet" type="text/css" href="./css/bootstrap.css">
    <link rel="stylesheet" id="ppstyle" type="text/css" href="style.css">
    <link rel='stylesheet' href='./css/animate.css'/>
    <link rel='stylesheet' href='./css/et-line.min.css'/>
    <link rel='stylesheet' href='./css/font-awesome.min.css'/>
    <link href='http://fonts.googleapis.com/css?family=Montserrat&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Oswald&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
     -->
<!-- <script src="./js/jquery-2.1.0.min.js"></script>
    <script src="./js/bootstrap.js"></script>
    <script src="./js/blocs.js"></script>
    <script src='./js/jqBootstrapValidation.js'></script>
    <script src='./js/formHandler.js'></script> -->


<!-- 수정 후 -->
<link rel="stylesheet" type="text/css"
	href="resources/myPage/css/animate.css">
<link rel="stylesheet" type="text/css"
	href="resources/myPage/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="resources/myPage/css/et-line.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/myPage/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/myPage/css/style.css">
	
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/css?family=Montserrat&subset=latin,latin-ext">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/css?family=Oswald&subset=latin,latin-ext">

<!-- myInfo용 css -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="resources/dist/css/swiper.min.css">

<script src="<c:url value="/resources/myPage/js/blocs-ck.js" />"></script>
<script src="<c:url value="/resources/myPage/js/blocs.js" />"></script>
<script src="<c:url value="/resources/myPage/js/bootstrap.js" />"></script>
<script src="<c:url value="/resources/myPage/js/formHandler.js" />"></script>
<script src="<c:url value="/resources/myPage/js/jqBootstrapValidation.js" />"></script>
<script src="<c:url value="/resources/myPage/js/jquery-2.1.0.min.js" />"></script>

</head>
<style>
.myReview {
	width: 85%;
	height: 70vh;
}

.moon2 {
	width: 85%;
	height: 70vh;
}

.myRevieww {
	width: 80%;
	height: 100vh;
	margin: auto;
	margin-top: 5%;
	margin-left: 18%;
	text-align: center;
}

.moonlist {
	width: 80%;
	height: 100vh;
	margin: auto;
	margin-top: 5%;
	margin-left: 18%;
	text-align: center;
}

#myReviewTable {
	width: 100%;
	margin: auto;
	margin-top: 5%;
}

#myReviewTable th {
	border-top: 1px solid #c9c0b1;
	border-bottom: 1px solid #c9c0b1;
	text-align: center;
}

#myReviewTable td {
	border-bottom: 1px solid #c9c0b1;
	text-align: center;
}

#mymoonTable {
	width: 100%;
	margin: auto;
	margin-top: 5%;
}

#mymoonTable th {
	border-top: 1px solid #c9c0b1;
	border-bottom: 1px solid #c9c0b1;
	text-align: center;
}

#mymoonTable td {
	border-bottom: 1px solid #c9c0b1;
	text-align: center;
}

.avatar {
	margin: auto;
	width: 138px;
	height: 138px;
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

.modal3, .modal4 {
	z-index: 1;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	opacity: 0;
	visibility: hidden;
	transform: scale(1.1);
	transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform
		0.25s;
}

.show-modal3, .show-modal4 {
	opacity: 1;
	visibility: visible;
	transform: scale(1.0);
	transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
}

.modal-content3, .modal-content4 {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: white;
	padding: 1rem 1.5rem;
	width: 600px;
	height: 550px;
	border-radius: 0.5rem;
}

.close-button5, .close-button6 {
	float: right;
	width: 1.5rem;
	line-height: 1.5rem;
	text-align: center;
	cursor: pointer;
	border-radius: 0.25rem;
	background-color: lightgray;
}

.close-button5:hover, .close-button6:hover {
	background-color: darkgray;
}

#check {
	margin: auto;
	text-align: center;
	width: 70%;
	margin-top: 30%;
}
/*찜 목록 스타일*/
 .swiper-container {
        width: 100%;
        height: auto;
        margin-left: auto;
        margin-right: auto;
    }
    .swiper-slide {
        text-align: left;
        font-size: 15px;
        background: #fff;
        height: 300px;
        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
    }
    
   #slide-img {
   width:90%; /* 이미지 최대너비를 제한, 슬라이드에 이미지가 여러개가 보여질때 필요 */
   height:90%;
   border-radius:20px;
   }
 
   #text-area {
   margin-top:2%;
   margin-left:15%;
   width:100%;
   height:50%;
   text-align:left;
}

#img-area {/*찜 이미지 크기 조절*/
	margin-top:15%;
   width:100%;
   height:70%;
}

</style>
<body>
	<c:import url="../common/menubar.jsp" />
<!-- Main container -->
	<div class="page-container">
		<!-- Navigation Bloc -->
		<div class="bloc l-bloc bgc-white" id="nav-bloc">
			<div class="container bloc-sm">
				<nav class="navbar nav-center row">
					<div class="navbar-header">
						<!-- logo if you want <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo" /></a> -->
						<button id="nav-toggle" type="button"
							class="ui-navbar-toggle navbar-toggle" data-toggle="collapse"
							data-target=".navbar-1">
							<span class="sr-only">Toggle navigation</span><span
								class="icon-bar"></span><span class="icon-bar"></span><span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse navbar-1">
						<ul class="site-navigation nav navbar-nav">
							<li><a onclick="scrollToTarget('#portfolio')">찜 목록</a></li>
							<li><a onclick="scrollToTarget('#review')">작성한 리뷰</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		</div>
		<!-- Navigation Bloc END -->

		<!-- bloc-1 -->
		<div class="bloc bg-95cdfeef1 bgc-ferrari-red d-bloc tc-white b-parallax" id="bloc-1">
			<div class="container bloc-lg">
				<div class="row">
					<div class="col-sm-12">
						<div class="text-center">

						
						<!-- 프로필사진 -->
						<div class="avatar" alt="User image" style="background-image: url('${ contextPath }/resources/user/img/${ userPropic.uChangeName }'); background-size:cover;"></div> 
						<h1 class="mg-md text-center tc-black">
							<c:out value="${ loginUser.user_name }" />
							님 마이페이지
						</h1>

						<h2 class="text-center tc-white-smoke mg-md">
							<c:out value="${ loginUser.user_id }" />
						</h2>

						<p class="text-center">
							<c:out value="${ loginUser.enroll_date }" />
						</p>
						<div class="divider-h">
							<span class="divider divider-half"></span>
						</div>
						<div class="text-center">
							<a class="bloc-button btn btn-wire" id="trigger3">내 정보</a>
							<button class="bloc-button btn btn-wire" type="button" onclick="couponPop()">쿠폰 등록하기</button>
							<tr>
								<td colspan="2" align="center"></td>
							</tr>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!-- bloc-1 END -->

	<script>
	function couponPop()
	{
	   popupWindow = window.open('coupon.do', '_blank', 'height=800,width=450,scrollbars=no,status=no');
	}
	</script>

	<!-- wish -->
		<div class="bloc l-bloc bgc-white" id="portfolio">
			<div class="container bloc-lg">
				<div class="row">
					<div class="col-sm-12">
						<h2 class="text-center mg-md">찜 목록</h2>

						<div class="divider-h">
							<span class="divider divider-half"></span>
						</div>
						<p class="text-center sub-heading">
							<c:out value="${ loginUser.user_name } " />
							님의 관심 강의 목록입니다.
						</p>
					</div>
				</div>

				<!-- Swiper -->
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<c:forEach var="p" items="${ list1 }">
						<div class="swiper-slide">
							<div id="img-area">
								<c:url var="goLesson" value="lessonDetail.do?lNo=${ p.l_no }" />
								<a href="${ goLesson }"><img id="slide-img" src="resources/lessonImg/${ p.c_name }"></a>
							</div>
							<div id="text-area" style="margin-left:6%;">
								<h5>${ p.l_title }</h5>
								<p>수업 시작 :${p.l_day}</p>
								<p>장소 : ${ p.l_region } ${p.l_region_sub }</p>
								<p>비용 : ${ p.price }원</p>
								<p style="color: #F15F5F; float: left;">현재 신청 가능 인원 ${ p.remain }명!</p>
							</div>
						</div>
					</c:forEach>
				</div>
				<!-- Add Pagination -->
				<div class="swiper-pagination"></div>
				<!-- Add Arrows -->
				<div class="swiper-button-next"></div>
				<div class="swiper-button-prev"></div>
			</div>
			</div>
			
	<!-- Swiper JS -->
    <script src="<c:url value="/resources/dist/js/swiper.min.js" />"></script>

    <!-- Initialize Swiper -->
    <script>
    var swiper = new Swiper('.swiper-container', {
        slidesPerView: 3,
        slidesPerColumn: 2,
        slidesPerGroup : 6,
        spaceBetween: 30,
        paginationClickable: true,
        loopFillGroupWithBlank : true,
        pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev'
        });
    </script>
		</div>
		<!-- wish END -->

		<!-- review start -->
		<div class="bloc l-bloc bgc-white" id="review">
			<div class="container bloc-lg">
				<div class="row">
					<div class="col-sm-12">
						<h2 class="mg-md text-center">작성한 리뷰</h2>

						<div class="divider-h">
							<span class="divider divider-half"></span>
						</div>
					</div>
				</div>
				<div class="myReview">
					<div class="myRevieww">
						<table id="myReviewTable">
							<tr>
								<th width="25%">수업 제목</th>
								<th width="50%">내용</th>
								<th width="25%">작성일</th>
							</tr>
							<c:if test="${ !empty loginUser }">
							<c:forEach var="r" items="${ list }">
							<tr>
								<c:url var="myReview" value="ReviewDetail.do">
									<c:param name="lNo" value="${ r.lNo }"/>
								</c:url>								
								<td><a href="${ myReview }">${ r.lTitle }</a></td>
								<td>${r.rContent}</td>
								<td>${r.rDate}</td>		
							</tr>
							</c:forEach>
							</c:if>			
								
								<!-- <a onclick="scrollToTarget('#moon')"></a> -->
							<tr align="center" height="20">
								<td colspan="6">
									<!-- [이전] --> <c:if test="${ pi.currentPage <= 1 }">
									[이전] &nbsp;
							   	   </c:if> <c:if test="${ pi.currentPage > 1 }">
										<c:url var="before" value="mypage.do">
											<c:param name="page" value="${ pi.currentPage - 1 }" />
										</c:url>
										<a href="${ before }">[이전]</a>
									</c:if> <!-- [페이지] --> <c:forEach var="p" begin="${ pi.startPage }"
										end="${ pi.endPage }">
										<c:if test="${ p eq pi.currentPage }">
											<font color="#c9c0b1" size="4"><b>[${ p }]</b></font>
										</c:if>
										<c:if test="${ p ne pi.currentPage }">
											<c:url var="pagination" value="mypage.do">
												<c:param name="page" value="${ p }" />
											</c:url>
											<a href="${ pagination }">[${ p }]</a>
										</c:if>
									</c:forEach> <!-- [다음] --> <c:if test="${ pi.currentPage >= pi.maxPage }">
											[다음]
								   </c:if> <c:if test="${ pi.currentPage < pi.maxPage }">
										<c:url var="after" value="mypage.do">
											<c:param name="page" value="${ pi.currentPage + 1 }" />
										</c:url>
										<a href="${ after }">[다음]</a>
									</c:if>
								</td>
							</tr>
							<c:if test="${ empty list }">
								<h1 style="color:green; font-size: 15px">작성하신 리뷰가 없습니다.</h1>
							</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- review end -->
		
		<!-- payment start -->
		<div class="bloc l-bloc bgc-white" id="review">
			<div class="container bloc-lg">
				<div class="row">
					<div class="col-sm-12">
						<h2 class="mg-md text-center">결제내역</h2>

						<div class="divider-h">
							<span class="divider divider-half"></span>
						</div>
					</div>
				</div>
				<div class="myReview">
					<div class="myRevieww">
						<table id="myReviewTable">
							<tr>
								<th width="30%">수업제목</th>
								<th width="30%">결제일</th>
								<th width="30%">상세내역</th>
								<th width="10%">현재상태</th>
							</tr>
							<c:if test="${ !empty loginUser }">
							<c:forEach var="p" items="${ plist }">
							<tr>
								<c:url var="myReview" value="ReviewDetail.do">
									<c:param name="lNo" value="${ p.lNo }"/>
								</c:url>								
								<td><a href="${ myReview }">${ p.l_title }</a></td>
								<td>${p.pDate}</td>
								<td>결제 타입 : ${p.pType}
								      <br> 결제 금액 : ${p.pCost}</td>
								 <form action="uppayment.do" method="post">
								<td><c:if test="${p.paymentStatus == 1}">결제완료<button name="pmNo" value="${p.pmNo}">결제취소</button></c:if>
									<c:if test="${p.paymentStatus == 2}">결제취소</c:if>
									<c:if test="${p.paymentStatus == 3}">이용완료</c:if>
									<c:if test="${p.paymentStatus == 11}">수강대기</c:if>
									<c:if test="${p.paymentStatus == 12}">수강중</c:if>
									<c:if test="${p.paymentStatus == 13}">수강종료<button name="pmNo" value="${p.pmNo}">이용완료</button></c:if></td>
								</form>
							</tr>
							</c:forEach>
							</c:if>			
								
								<!-- <a onclick="scrollToTarget('#moon')"></a> -->
							<tr align="center" height="20">
								<td colspan="6">
									<!-- [이전] --> <c:if test="${ pi.currentPage <= 1 }">
									[이전] &nbsp;
							   	   </c:if> <c:if test="${ pi.currentPage > 1 }">
										<c:url var="before" value="mypage.do">
											<c:param name="page" value="${ pi.currentPage - 1 }" />
										</c:url>
										<a href="${ before }">[이전]</a>
									</c:if> <!-- [페이지] --> <c:forEach var="p" begin="${ pi.startPage }"
										end="${ pi.endPage }">
										<c:if test="${ p eq pi.currentPage }">
											<font color="#c9c0b1" size="4"><b>[${ p }]</b></font>
										</c:if>
										<c:if test="${ p ne pi.currentPage }">
											<c:url var="pagination" value="mypage.do">
												<c:param name="page" value="${ p }" />
											</c:url>
											<a href="${ pagination }">[${ p }]</a>
										</c:if>
									</c:forEach> <!-- [다음] --> <c:if test="${ pi.currentPage >= pi.maxPage }">
											[다음]
								   </c:if> <c:if test="${ pi.currentPage < pi.maxPage }">
										<c:url var="after" value="mypage.do">
											<c:param name="page" value="${ pi.currentPage + 1 }" />
										</c:url>
										<a href="${ after }">[다음]</a>
									</c:if>
								</td>
							</tr>
							<c:if test="${ empty list }">
								<h1 style="color:green; font-size: 15px">작성하신 리뷰가 없습니다.</h1>
							</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- payment end -->

	<!-- 내 정보 클릭 시 띄워지는 모달 창 -->

	<div class="modal3">
		<div class="modal-content3">
			<span class="close-button5">&times;</span>
			<c:if test="${ !empty msg4 }">
				<script>
											alert("비밀번호가 일치하지 않습니다.");
										</script>
			</c:if>
			<form action="pwdCheck.do" method="post">
				<div id="check">
					<label>Password</label> <input type="hidden" id="id" name="user_id"
						value="${ loginUser.user_id }"> <input class="w3-input"
						id="pwd" name="user_pwd" type="password">
					<button type="submit" id="checkBtn"
						class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">비밀번호
						확인</button>
				</div>
			</form>
		</div>
	</div>
	
	<div id="btn" style="display:none;" class="trigger4"></div>
	
	<!-- 비밀번호 확인 성공 시 넘어가는 div -->
	<div class="modal4"> 
            <div class="modal-content2"> 
                 <div class="update"
			style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: white; padding: 1rem 1.5rem; width: 1000px; height: 620px; border-radius: 0.5rem; z-index: 1;">
				<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
				<script> 
						      $(function() { 
						         $("#postcodify_search_button").postcodifyPopUp(); 
						      }); 
						   </script>
				<c:if test="${ !empty msg0 }">
					<script>
			        	alert("회원 탈퇴 완료");
						location.href='home.do';
					</script>
				</c:if>

				<c:if test="${ !empty msg2 }">
					<script>
			        	alert("회원 수정 완료");
			        	opener.parent.location.replace("mypage.do");
			        	self.close();
					</script>
				</c:if>

			<div class="w3-content w3-container w3-margin-top">
				<div class="w3-container w3-card-4">
					<div class="w3-center w3-large w3-margin-top">
                <span class="close-button6">&times;</span> 
						<h3>내 정보</h3>
						<br>
					</div>
					<div>
						<form id="myForm" action="mupdate.do" method="post" enctype="multipart/form-data">
					      <div style="float:left; width:47.5%;">					
							<p>
								PROFILE <input class="w3-input" type="file" id="pro" name="reloadFile" >
							</p>
							<p>
								EMAIL <input class="w3-input" type="text" id="user_id"
									name="user_id" readonly value="${ loginUser.user_id }">
							</p>
							<p>
									New Password 
									<input class="w3-input" id="pw" name="pw" placeholder="변경할 패스워드를 입력하세요." type="password" >
							</p>
							<p>
									Confirm
									<input class="w3-input" id="pw2" name="pw2" placeholder="변경할 패스워드 확인을 위해 동일하게 입력해주세요." type="password" >
							</p>
							<p>
								NAME <input class="w3-input" type="text" id="user_name"
									name="user_name" value="${ loginUser.user_name }" required>
							</p>
							</div>
							
							<div style="float:left; width:5%;">
							<br><br>
							</div>
							
							<div style="float:left; width:47.5%;">
							<p>
								GENDER <br>
								<c:if test="${ loginUser.gender eq 'M' }">
									<td><input type="radio" name="gender" value="M" checked>남
										<input type="radio" name="gender" value="F">여</td>
								</c:if>
								<c:if test="${ loginUser.gender eq 'F' }">
									<td><input type="radio" name="gender" value="M">남
										<input type="radio" name="gender" value="F" checked>여
									</td>
								</c:if>
							</p>
							<p>
								AGE <input class="w3-input" type="number" min="20" max="100"
									id="age" name="age" value="${ loginUser.age }" required>
							</p>
							<p>
								PHONE <input class="w3-input" type="text" id="phone-number-check"
									name="phone" value="${ loginUser.phone }" required>
							</p>
							<p>
								ADDRESS <br>
								<c:forTokens var="addr" items="${ loginUser.address }"
									delims="," varStatus="status">
									<c:if test="${ status.index eq 0 }">
										<tr>
											<td>우편번호</td>
											<td><input type="text" name="post"
												class="postcodify_postcode5" id="postcodify_postcode5" value="${ addr }" size="6" />
												<button type="button" id="postcodify_search_button">검색</button>
											</td>
										</tr>
									</c:if>
									<c:if test="${ status.index eq 1 }">
										<tr>
											<br>
											<td>도로명 주소</td>
											<td><input type="text" name="address1"
												class="postcodify_address" id="postcodify_address" value="${ addr }" /></td>
										</tr>
									</c:if>
									<c:if test="${ status.index eq 2 }">
										<tr>
											<br>
											<td>상세 주소</td>
											<td><input type="text" name="address2"
												class="postcodify_extra_info" id="postcodify_extra_info" value="${ addr }" /></td>
										</tr>
									</c:if>
								</c:forTokens>
							</p>
							</div>
							
							<p class="w3-center">
								<button type="submit"
									class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round" id="btnCng">회원정보
									변경</button>
							</p>
							<div class="text-center">
								<c:url var="mdelete" value="mdelete.do">
									<c:param name="user_id" value="${ loginUser.user_id }" />
								</c:url>
								<button type="button"
									class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round"
									onclick="location.href='${ mdelete }'">탈퇴하기</button>
								<br>
							</div>
						</form>
					</div>
				</div>
            </div> 
        </div>    
	
						<script>
							var modal = document.querySelector(".modal3");
				            var modal2 = document.querySelector(".modal4");

				            var trigger = document.querySelector('#trigger3');
				            var trigger2 = document.querySelector(".trigger4");

				            var closeButton = document.querySelector(".close-button5");
				            var closeButton2 = document.querySelector(".close-button6");
				    
				            function toggleModal() {
				                modal.classList.toggle("show-modal3");
				            }
				            
				            function toggleModal2() {
				                modal2.classList.toggle("show-modal4");
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

				            window.addEventListener("click", windowOnClick);
                    	</script>

			<c:if test="${ !empty msg3 }">
				<script>
					$('#btn').trigger("click"); //회원수정 창 열기 (div btn 만들어서 숨겨놓고 강제로 클릭 이벤트 발생하게 함!)
				</script>
			</c:if>
		</div>
	</div>
	
	<script>
   /** 회원수정 폼 유효성 체크**/
  $("#btnCng").click(function() {

   if($("#pw").val()=="") {
    return true;
   }
   else if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/.test($("#pw").val())){            
       alert('숫자+영문자+특수문자 조합으로 8자리 이상 15이하로 사용해야 합니다. (사용 가능 특수문자는 !,@,#,$,%,^,&,*,?,_,~ 입니다.)');
       $('#pw').focus();
       return false;
   }
   else if($("#pw").val() && $("#pw2").val()=="") {
    alert("비밀번호확인를 입력해주세요");
    $("#pw2").focus();
    return false;
   }  
   else if($("#user_name").val()==""){
    alert("이름을 입력해주세요");
    $("#user_name").focus();
    return false;
   }
   else if($("#phone-number-check").val()==""){
	    alert("전화번호를 입력해주세요");
	    $("#phone-number-check").focus();
	    return false;
	}
   else if($("#age").val()==""){
	    alert("나이를 입력해주세요");
	    return false;
	}
   else if($("#postcodify_postcode5").val()==""){
	    alert("우편번호를 입력해주세요");
	    return false;
	}
   else if($("#postcodify_address").val()==""){
	    alert("주소를 입력해주세요");
	    return false;
	}
   else if($("#postcodify_extra_info").val()==""){
	    alert("상세주소를 입력해주세요");
	    return false;
	}
   else if($("#pw").val() != $("#pw2").val()) {
    alert("비밀번호가 일치하지 않습니다.");
    $("#pw2").val("");
    $("#pw2").focus();
    return false;
   }
   else {
	   return true;
   }
   
  });
   </script>
   
   <!-- 전화번호 유효성검사 -->
   <script>
	   $(function(){
	    $("#phone-number-check").on('keydown', function(e){
	       // 숫자만 입력받기
	        var trans_num = $(this).val().replace(/-/gi,'');
		var k = e.keyCode;
					
		if(trans_num.length >= 11 && ((k >= 48 && k <=126) || (k >= 12592 && k <= 12687 || k==32 || k==229 || (k>=45032 && k<=55203)) ))
		{
	  	    e.preventDefault();
		}
	    }).on('blur', function(){ // 포커스를 잃었을때 실행
	        if($(this).val() == '') return;
	
	        // 기존 번호에서 - 를 삭제
	        var trans_num = $(this).val().replace(/-/gi,'');
	      
	        // 입력값이 있을때만 실행
	        if(trans_num != null && trans_num != '')
	        {
	            // 총 핸드폰 자리수는 11글자이거나, 10자여야 함
	            if(trans_num.length==11 || trans_num.length==10) 
	            {   
	                // 유효성 체크
	                var regExp_ctn = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
	                if(regExp_ctn.test(trans_num))
	                {
	                    // 유효성 체크에 성공하면 하이픈을 넣고 값을 바꿈
	                    trans_num = trans_num.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3");                  
	                    $(this).val(trans_num);
	                }
	                else
	                {
	                    alert("유효하지 않은 전화번호 입니다.");
	                    $(this).val("");
	                    $(this).focus();
	                }
	            }
	            else 
	            {
	                alert("유효하지 않은 전화번호 입니다.");
	                $(this).val("");
	                $(this).focus();
	            }
	      }
	  });  
	});
	   
	   
   </script>
	
	<c:import url="../common/footbar.jsp" />
</body>
</html>
