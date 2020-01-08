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
</head>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        list-style: none;
        text-decoration: none;
    }
    
    .container	{
		font-family: 'Do Hyeon', sans-serif;
	}
    
    .board_box {
    	width:100%;
    	height:100vh;
    }

    .wrapper {
    	float:left;
    	width:15%;
    	height:100vh;
        display: flex;
        position: relative;
    }

    .sidebar {
        width: 100%;
        height:100%;
        background: #7e7e7e;
    }

    .wrapper .sidebar h2 {
        color: #fff;
        text-transform: uppercase;
        text-align: center;
        margin-top: 30px;
        margin-bottom: 30px;
    }

    .wrapper .sidebar ul li {
        padding: 15px;
        border-bottom: 1px solid rgba(0, 0, 0, 0.05);
        border-top: 1px solid rgba(225, 225, 225, 0.05);
    }

    .wrapper .sidebar ul li a {
        color: #474747;
        display: block;
        font-family: 'Do Hyeon', sans-serif;
        
    }

    .wrapper .sidebar ul li a .fas {
        width: 25px;
    }

    .wrapper .sidebar ul li:hover {
        background: #525252;
    }

    .wrapper .sidebar ul li:hover a{
        color: #fff;
        text-decoration:none;
    }
    
    .content_area {
    	float:left;
    	width:85%;
    	height:100vh;
    }
    
    .board_area {
    	width:80%;
    	height:100vh;
    	margin:auto;
    	margin-top:5%;
    	text-align:center;
    }
	#boardTable {
		width:100%;
		margin:auto;
		margin-top:5%;
		border-collapse: collapse;
		box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
	}
	
	#boardTable thead tr {
		background-color: #c9c0b1;
		color:white;
		font-weight:bold;
	}
	
	#boardTable thead tr td {
		border-right:1px solid white;
	}
	
	
	#boardTable th, #boardTable td {
		text-align:center;
		padding: 12px 15px;
	}
	
	#boardTable tbody tr {
		border-bottom:1px solid #dddddd;
	}
	
	#boardTable tbody tr td {
		border-right:1px solid #dddddd;
	}
	
	#boardTable tbody tr td button {
		margin: 0 5%;
	}
	
	#boardTable tbody tr:nth-of-type(even) {
		background-color: #f3f3f3;
	}
	
	#boardTable tbody tr:last-of-type {
		border-bottom : 2px solid #c9c0b1;
	}
	
	#answerTable thead tr {
		background-color: #c9c0b1;
		color:white;
		font-weight:bold;
	}
	
	#answerTable {
		width:100%;
		margin:auto;
		margin-top:5%;
		border-collapse: collapse;
		box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
	}
	
	#answerTable tbody tr {
		border-bottom:1px solid #dddddd;
	}
	
	#answerTable tbody tr td {
		border-right:1px solid #dddddd;
	}
	
	#remoCon {

	  position: fixed;
	
	  width: 60px;
	
	  height: 20px;
	
	  right: 50px;
	
	  bottom: 100px;
	
	  display: none;
	
	  }
	  
	  .write_btn {
	  	float:right;
	  	margin-bottom:1%;
	  	width:80px;
	  	border-radius:10px;
	  	background:#c9c0b1;
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
								<input type="text" class="form-control form-control-lg" placeholder="고객 센터 내 검색">
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
    <div class="board_box">
	    <div class="wrapper">
	        <div class="sidebar">
	            <h2>q & a</h2>
	            <ul>
	                <li><a href="support_main.do"><i class="fas fa-home" style="color:#c9c0b1;"></i>Home</a></li>
	                <li><a href="support_qna.do"><i class="fas fa-question-circle m-auto" style="color:#c9c0b1;"></i>Q & A</a></li>
	                <li><a href="support_list.do"><i class="fas fa-list-alt m-auto" style="color:#c9c0b1;"></i>문의 내역</a></li>
	            </ul>
	        </div>
	    </div>
	    <div class="content_area">
	    	<div class="board_area">
	    		<table id="boardTable">
	    		<thead>
		    	<tr>
					<td width="10%" style="font-weight:bold;">제목</td>
					<td>${ q.qTitle }</td>
					<td width="10%" style="font-weight:bold;">작성자</td>
					<td width="10%">${ q.qWriter}</td>
				</tr>
				</thead>
				<tbody>
				<tr height="300">
					<td style="font-weight:bold;">내용</td>
					<td colspan="3">${ q.qContent }</td>
				</tr>
				<c:url var="qlist" value="support_qna.do">
					<c:param name="page" value="${ currentPage }"/>
				</c:url>
				<c:url var="qupView" value="qupView.do">
					<c:param name="qNo" value="${ q.qNo }"/>
					<c:param name="qTitle" value="${ q.qTitle }"/>
					<c:param name="qWriter" value="${ q.qWriter }"/>
					<c:param name="qContent" value="${ q.qContent }"/>
					<c:param name="page" value="${ currentPage }"/>
				</c:url>
				<c:url var="qdelete" value="qdelete.do">
					<c:param name="qNo" value="${ q.qNo }"/>
				</c:url>
				<tr>
					<td colspan="4">
						<button onclick="location.href='${ qlist }'">목록으로</button>
						<c:if test="${ loginUser.user_name eq q.qWriter }">
							<button onclick="location.href='${ qupView }'">수정하기</button>
							<button id="delete" onclick="location.href='${ qdelete }'">삭제하기</button>
						</c:if>			
					</td>
				</tr>				
				<tr>
					<td>답변</td>
					<td colspan="2">
						<textarea cols="100" rows="3" id="aContent" style="resize:none"></textarea>
					</td>
					<td>
						<c:if test="${ loginUser.user_type == 'A' }">
							<button id="aSubmit">등록하기</button>
						</c:if>
					</td>
				</tr>
			</tbody>
	    	</table>
	    	
	    	<table id="answerTable">
				<thead>
					<tr>
						<td colspan="4"><b id="aCount"></b></td>
					</tr>
				</thead>
				<tbody id="answer">
					
				</tbody>
			</table>
	    	</div>
	    </div>
    </div>
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
	<script>
    $(document).scroll(function(){
	    var con = $("#remoCon");	
	    var position = $(window).scrollTop();	
	
	    if(position > 150){ 
	    	con.fadeIn(500); 
	    } else if(position < 150){ 
	    	con.fadeOut(500); 
	    }
	});	
	
    $("#remoCon").click(function(){
    	$("html, body").animate({scrollTop: 0}, 1000);
    });
    
    $("#delete").click(function(){
    	alert("삭제되었습니다.");
    });
  </script>
  <script>
  $(function(){
		// 초기 페이지로 로딩 시 댓글 불러오기
		getReplyList();
		
		// 타 회원이 작성한 댓글도 지속적으로 불러오기 위한 요청
		setInterval(function(){
			getReplyList();
		}, 10000);
		
		// 댓글 등록 ajax
		$("#aSubmit").on("click", function(){
			var aContent = $("#aContent").val();
			var refQno = ${q.qNo};
			
			$.ajax({
				url:"addAnswer.do",
				data:{aContent:aContent, refQno:refQno},
				type:"post",
				success:function(data){
					console.log(data);
					if(data == "success"){
						// 댓글 등록 성공 시 다시 댓글 리스트 불러오기
						getReplyList();
						$("#aContent").val("");
					}
				},
				error:function(){
					console.log("ajax 통신 실패");
				}
			});
		});
	});
  
  function getReplyList() {
		var qNo = ${q.qNo};
		
		$.ajax({
			url:"aList.do",
			data:{qNo, qNo},
			dataType:"json",
			success:function(data) {
				console.log(data);
				
				$tableBody = $("#answerTable tbody");
				$tableBody.html("");
				
				$("#aCount").text("답변(" + data.length + ")");
				
				if(data.length > 0) {
					for(var i in data){
						$tr = $("<tr>");
						$aWriter = $("<td width='100'>").text(data[i].aWriter);
						$aContent = $("<td>").text(data[i].aContent);
						$aDate = $("<td width='100'>").text(data[i].aDate);
						
						$tr.append($aWriter);
						$tr.append($aContent);
						$tr.append($aDate);
						
						$tableBody.append($tr);
					}
				} else {
					$tr=$("<tr>");
					$aContent = $("<td colspan='3'>").text("등록된 답변이 없습니다.");
					$tr.append($aContent);
					$tableBody.append($tr);
				}
			},
			error:function(){
				console.log("ajax 통신 실패");
			}
			
			
		});
		
  }
  </script>

	<c:import url="../common/footbar.jsp"/>	
</body>
</html>