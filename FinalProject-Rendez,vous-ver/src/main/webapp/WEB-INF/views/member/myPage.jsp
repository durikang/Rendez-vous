<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" type="image/png" href="resources/myPage/img/favicon.png"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    
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
    <link rel="stylesheet" type="text/css" href="resources/myPage/css/animate.css">
    <link rel="stylesheet" type="text/css" href="resources/myPage/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="resources/myPage/css/et-line.min.css">
    <link rel="stylesheet" type="text/css" href="resources/myPage/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="resources/myPage/css/style.css">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Montserrat&subset=latin,latin-ext">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Oswald&subset=latin,latin-ext">
	
	<script src="<c:url value="/resources/myPage/js/blocs-ck.js" />"></script>   
    <script src="<c:url value="/resources/myPage/js/blocs.js" />"></script>
    <script src="<c:url value="/resources/myPage/js/bootstrap.js" />"></script>
    <script src="<c:url value="/resources/myPage/js/formHandler.js" />"></script>
    <script src="<c:url value="/resources/myPage/js/jqBootstrapValidation.js" />"></script>
    <script src="<c:url value="/resources/myPage/js/jquery-2.1.0.min.js" />"></script>
 </head>
<style>
	.myReview {
       width:85%;
       height:70vh;
    }
    
    .moon2 {
       width:85%;
       height:70vh;
    }
    
    .myRevieww{
       width:80%;
       height:100vh;
       margin:auto;
       margin-top:5%;
       margin-left:18%;
       text-align:center;
    }
    
    .moonlist{
       width:80%;
       height:100vh;
       margin:auto;
       margin-top:5%;
       margin-left:18%;
       text-align:center;
    }
	 
	
	 #myReviewTable {
      width:100%;
      margin:auto;
      margin-top:5%;
   }
   
	#myReviewTable th {
	  border-top:1px solid #c9c0b1;
      border-bottom:1px solid #c9c0b1;
      text-align:center;
   }
   
   #myReviewTable td {
      border-bottom:1px solid #c9c0b1;
      text-align:center;
   }
   
   #moonTable {
      width:100%;
      margin:auto;
      margin-top:5%;
   }
   
	#moonTable th {
	  border-top:1px solid #c9c0b1;
      border-bottom:1px solid #c9c0b1;
      text-align:center;
   }
   
   #moonTable td {
      border-bottom:1px solid #c9c0b1;
      text-align:center;
   }
   
	.avatar{
	width:138px;
	height:138px;
	}
</style>
<body>
<c:import url="../common/menubar.jsp"/>
<!-- Main container -->
<div class="page-container">

    <!-- Navigation Bloc -->
    <div class="bloc l-bloc bgc-white" id="nav-bloc">
        <div class="container bloc-sm">
            <nav class="navbar nav-center row">
                <div class="navbar-header">
                    <!-- logo if you want <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo" /></a> -->
                    <button id="nav-toggle" type="button" class="ui-navbar-toggle navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-1">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse navbar-1">
                    <ul class="site-navigation nav navbar-nav">
                        <li>
                            <a onclick="scrollToTarget('#moon')">1:1 문의내역</a>
                        </li>
                        <li>
                            <a onclick="scrollToTarget('#review')">작성한 리뷰</a>
                        </li>
                        <li>
                            <a onclick="scrollToTarget('#portfolio')">찜 목록</a>
                        </li>
                        <li>
                            <a onclick="scrollToTarget('#statistics')">Statistics</a>
                        </li>
                        <li>
                            <a onclick="scrollToTarget('#contact')">쿠폰함</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navigation Bloc END -->

    <!-- bloc-1 -->
    <div class="bloc bg-95cdfeef1 bgc-ferrari-red d-bloc tc-white b-parallax" id="bloc-1">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-sm-12">
                    <div class="text-center"><img src="resources/myPage/img/user3.jpg" class="avatar" alt="User image"></div>
                    <h1 class="mg-md text-center tc-black">
                        <c:out value="${ loginUser.user_name }님 "/>마이페이지
                    </h1>

                    <h2 class="text-center tc-white-smoke mg-md">
                        <c:out value="${ loginUser.user_id }"/>
                    </h2>

                    <p class="text-center">
                        <c:out value="${ loginUser.enroll_date }"/>
                    </p>
                    <div class="divider-h">
                        <span class="divider divider-half"></span>
                    </div>
                    <div class="text-center">
                        <a class="btn btn-lg wire-btn-white btn-wire btn-rd" onclick="detail_win()">회원 정보 수정</a>
                    	<script>function detail_win() {
                    		window.open('', '내정보', 'width=600, height=600, left=460, top=100, menubar=no, status=no, toolbar=no');  
                    	}</script>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-1 END -->

    <!-- 문의 -->
    <div class="bloc l-bloc bgc-white" id="moon">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="mg-md text-center">
                        	1:1 문의내역 
                    </h2>

                    <div class="divider-h">
                        <span class="divider divider-half"></span>
                    </div>
                </div>
            </div>
            <div class="moon2">
                <div class="moonlist">
                    <table id="moonTable">
			             <tr>
			               <th width="10%">번호</th>
			               <th width="50%">제목</th>
			               <th width="15%">작성자</th>
			               <th width="15%">작성일</th>
			               <th width="10%">조회수</th>
			            </tr>
			            <tr>
			               <td>1</td>
			               <td>문의문의</td>
			               <td>회원1</td>
			               <td>2019-12-26</td>
			               <td>1</td>
			            </tr>
			          </table>
                </div>
            </div>
        </div>
    </div>
    <!-- 문의 END -->
    <!-- review start -->
    <div class="bloc l-bloc bgc-white" id="review">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="mg-md text-center">
                        	작성한 리뷰 
                    </h2>

                    <div class="divider-h">
                        <span class="divider divider-half"></span>
                    </div>
                </div>
            </div>
            <div class="myReview">
                <div class="myRevieww">
                    <table id="myReviewTable">
			             <tr>
			               <th width="10%">번호</th>
			               <th width="50%">제목</th>
			               <th width="15%">작성자</th>
			               <th width="15%">작성일</th>
			               <th width="10%">조회수</th>
			            </tr>
			            <tr>
			               <td>1</td>
			               <td>리뷰리뷰</td>
			               <td>회원1</td>
			               <td>2019-12-26</td>
			               <td>1</td>
			            </tr>
			          </table>
                </div>
            </div>
        </div>
    </div>
	<!-- review end -->
    <!-- Bloc Group -->
    <div class='bloc-group'>

        <!-- bloc-3 -->
        <div class="bloc bgc-white bloc-tile-3 bg-people-woman-coffee-meeting d-bloc animated fadeIn" id="bloc-3">
            <div class="container bloc-lg">
                <div class="row">
                    <div class="col-sm-12">
                        <span class="empty-column"></span>
                    </div>
                </div>
            </div>
        </div>
        <!-- bloc-3 END -->

        <!-- bloc-4 -->
        <div class="bloc bloc-tile-3 bgc-sinopia d-bloc tc-white" id="bloc-4">
            <div class="container bloc-lg">
                <div class="row">
                    <div class="col-sm-12">
                        <h3 class="mg-md sm-shadow animated fadeInUp animDelay04 tc-white">
                            Heading content
                        </h3>

                        <p class="mg-lg animated fadeInUp animDelay06">
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
                            Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur
                            ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla
                            consequat massa quis enim.
                        </p>

                        <div class="divider-h">
                            <span class="divider"></span>
                        </div>
                        <h3 class="mg-md text-right animated fadeInDown animDelay08 tc-white">
                            Heading content
                        </h3>

                        <p class="text-right animated fadeInDown animDelay1">
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
                            Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur
                            ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla
                            consequat massa quis enim.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- bloc-4 END -->

        <!-- bloc-5 -->
        <div class="bloc bgc-white bloc-tile-3 bg-people-coffee-notes-tea d-bloc animated fadeIn animDelay02"
             id="bloc-5">
            <div class="container bloc-lg">
                <div class="row">
                    <div class="col-sm-12">
                        <span class="empty-column"></span>
                    </div>
                </div>
            </div>
        </div>
        <!-- bloc-5 END -->
    </div>
    <!-- Bloc Group END -->

    <!-- portfolio -->
    <div class="bloc l-bloc bgc-white" id="portfolio">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="text-center mg-md">
                        	찜 목록	
                    </h2>

                    <div class="divider-h">
                        <span class="divider divider-half"></span>
                    </div>
                    <p class="text-center sub-heading">
                        (회원 이름)님의 관심 강의 목록입니다.
                    </p>
                </div>
            </div>
            <div class="row voffset">
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-woman-coffee-meeting.jpg"
                       data-caption="Image description"><img src="resources/myPage/img/people-woman-coffee-meeting.jpg"
                                                             class="img-responsive animated zoomIn" alt="Portfolio"/></a>
                </div>
                
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-coffee-notes-tea.jpg" data-caption="Image description"><img
                            src="resources/myPage/img/people-coffee-notes-tea.jpg" class="img-responsive animated zoomIn" alt="Portfolio"/></a>
                </div>
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-coffee-tea-meeting.jpg" data-caption="Image description"><img
                            src="resources/myPage/img/people-coffee-tea-meeting.jpg" class="img-responsive animated zoomIn" alt="Portfolio"/></a>
                </div>
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-woman-coffee-meeting.jpg"
                       data-caption="Image description"><img src="resources/myPage/img/people-woman-coffee-meeting.jpg"
                                                             class="img-responsive animDelay02 animated zoomIn" alt="Portfolio"/></a>
                </div>
            </div>
            <div class="row voffset">
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-coffee-notes-tea.jpg" data-caption="Image description"><img
                            src="resources/myPage/img/people-coffee-notes-tea.jpg"
                            class="img-responsive animDelay02 animated zoomIn animDelay04" alt="Portfolio"/></a>
                </div>
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-coffee-tea-meeting.jpg" data-caption="Image description"><img
                            src="resources/myPage/img/people-coffee-tea-meeting.jpg" class="img-responsive animated zoomIn animDelay04" alt="Portfolio"/></a>
                </div>
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-woman-coffee-meeting.jpg"
                       data-caption="Image description"><img src="resources/myPage/img/people-woman-coffee-meeting.jpg"
                                                             class="img-responsive animated zoomIn animDelay04" alt="Portfolio"/></a>
                </div>
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-coffee-notes-tea.jpg" data-caption="Image description"><img
                            src="resources/myPage/img/people-coffee-notes-tea.jpg"
                            class="img-responsive animated zoomIn animDelay04" alt="Portfolio"/></a>
                </div>
            </div>
        </div>
    </div>
    <!-- portfolio END -->

    <!-- statistics -->
    <div class="bloc bgc-white-smoke l-bloc b-divider" id="statistics">
        <div class="container bloc-md">
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-3">
                            <h3 class="mg-md tc-outer-space text-center ">
                                1253
                            </h3>

                            <p class="text-center ">
                                Projects
                            </p>
                        </div>
                        <div class="col-sm-3">
                            <h3 class="mg-md tc-outer-space text-center  animated bounceIn animDelay02">
                                245
                            </h3>

                            <p class="text-center ">
                                Clients
                            </p>
                        </div>
                        <div class="col-sm-3">
                            <h3 class="mg-md tc-outer-space text-center  animated bounceIn animDelay04">
                                246
                            </h3>

                            <p class="text-center ">
                                Cups of Coffee
                            </p>
                        </div>
                        <div class="col-sm-3">
                            <h3 class="mg-md tc-outer-space text-center  animated bounceIn animDelay06">
                                124.536
                            </h3>

                            <p class="text-center ">
                                Lines of Code
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- statistics END -->

    <!-- bloc-8 -->
    <div class="bloc bg-95cdfeef1 bgc-ferrari-red d-bloc b-parallax" id="contact">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-sm-12 col-md-6 col-md-offset-3">
                    <form id="form-1" novalidate>
                        <h3 class="mg-md text-center">
                            Get in Touch
                        </h3>

                        <div class="form-group">
                            <label>
                                Name
                            </label>
                            <input id="name" class="form-control" required/>
                        </div>
                        <div class="form-group">
                            <label>
                                Email
                            </label>
                            <input id="email" class="form-control" type="email" required/>
                        </div>
                        <div class="form-group">
                            <label>
                                Message
                            </label><textarea id="message" class="form-control" rows="4" cols="50" required></textarea>
                        </div>
                        <div class="text-center">
                            <button class="bloc-button btn btn-lg btn-wire" type="submit">
                                Submit
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-8 END -->

</div>
	<c:import url="../common/footbar.jsp"/>
</body>
</html>
