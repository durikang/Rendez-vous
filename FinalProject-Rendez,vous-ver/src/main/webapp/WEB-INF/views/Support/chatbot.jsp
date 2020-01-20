<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Rendez,vous</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<style>

body {
    font-family: arial, sans-serif;
    margin: 0;
    background-color: whitesmoke;
}
#header {
    width: 100%;
    height: 60px;
    background-color: #333;
    box-shadow: 0px 4px 2px #333;
    margin: auto;
}

#header > h1 {
    padding: 10px;
    width: 80%;
    margin: auto;
    color: white;
} 

#container {
    width: 80%;
    height: 500px;
    margin: 0px auto;
    margin-top: 20px;
    background-color:white;
    border: 1px solid #333;
    overflow: scroll;
    font-size: 16px;
}

#controls {
    width: 80%;
    margin: 0px auto;
}

textarea {
    resize: none;
    width: 80%;
    font-size: 16px;
    background-color:white;
}

#send {
	width:75px;
	height:42px;
    position: absolute;
    font-size:20px;
}

.username {
    color: blue;
    font-weight: bold;
}

.bot{
    color:#c9c0b1;
    font-weight: bold;
}
</style>
<body>
    <script>
        
        var answer = "";
        
        function send_message(message){

            var prevState = $("#container").html();

            if(prevState.length > 6) {
                prevState = prevState + "<br>";
            }

            $("#container").html(prevState + "<span class='current_message'>" + "<span class = 'bot'>Rendez,vous : </span>" +  message + "</span>");

            $(".current_message").removeClass("current_message");
            //alert($("#container").prop("scrollHeight"));
            
            $("#container").scrollTop($("#container").prop("scrollHeight"));
            
            /* $(".current_message").hide();
            $(".current_message").delay(500).fadeIn(); */
        }

 
        // 챗봇 답변 란
        function get_first() {
            send_message("무엇을 도와드릴까요? <br>&nbsp; 1. 오프라인 수업 <br>&nbsp; 2. 기업교육 및 제휴 <br>&nbsp;  3. 개인정보 TF");
        }

        function ai(message) {
            // 첫 답변 종류 1. 오프라인수업 2. 기업교육 및 제휴 3. 개인정보 TF
            if(message.indexOf("처음으로") >= 0) {
                get_first();
            }

            if(message.indexOf("오프라인 수업") >= 0) {
                send_message("오프라인 수업이 궁금하세요? <br>&nbsp; Rendez,vous를 어떻게 이용하고 계시나요? " + 
                			"<br>&nbsp; 1. 튜터 <br>&nbsp; 2. 수강생 <br>&nbsp; 3. 처음으로");
            }

            if(message.indexOf("튜터") >= 0) {
                send_message("튜터님 안녕하세요!! <br>&nbsp; 궁금한 사항을 선택해주세요 <br>&nbsp; 자세한 안내를 도와드릴게요!!" + 
                			"<br>&nbsp; 1. 수업 등록 <br>&nbsp; 2. 수업 비용 <br>&nbsp; 3. 처음으로");
            }
            
            if(message.indexOf("수업 등록") >= 0) {
            	send_message("튜터로 수업을 등록하는 " + 
            				 "<br>&nbsp; 방법은 어렵지 않아요!! <br>&nbsp; 수업 등록 시 안내되는 가이드 라인 <br>&nbsp; 따라 작성해주시면 됩니다." + 
            				"<br>&nbsp;<br>&nbsp; ※ Rendez,vous는 튜터 1인 1수업으로 운영됩니다." + 
            				"<br>&nbsp;<br>&nbsp; * <a href='tutorInsertPage.do' target='blank'>튜터 등록 하러 가기!!</a> *" + 
            				"<br>&nbsp;<br>&nbsp; 1. 처음으로")
            }
            
            if(message.indexOf("수업 비용") >= 0) {
            	send_message("수업을 운영하는데 비용적인 <br>&nbsp; 부분이 궁금하신가요??" +
            				 "<br>&nbsp;<br>&nbsp; 자세한 안내를 위해 아래 항목을 선택 해주세요. <br>&nbsp;" +
            				 "<br>&nbsp; 1. 연결 수수료 <br>&nbsp; 2. 수업료 정산 <br>&nbsp; 3. 처음으로")
            }
            
            if(message.indexOf("연결 수수료") >= 0) {
            	send_message("<br>&nbsp;Rendez,vous의 연결수수료는 아래와 같습니다." + 
            				 "<br><br>&nbsp; (연결 수수료는 1개의 수강신청당 정책하고 있어요)" +
            				 "<h4>&nbsp;① 원데이 수업<br>&nbsp; - 총 수업료의 20%</h4>" +
            				 "<h4>&nbsp;② 2회차 이상의 수업<br>&nbsp; - 첫 수업의 1시간 수업료</h4>" + 
            				 "<br>&nbsp; 1. 처음으로")
            }
            
            if(message.indexOf("수업료 정산") >= 0) {
            	send_message("<br>Rendez,vous의 잔여 수업료 정산은 아래와 같아요" +
            			     "<h4>&nbsp;1. 원데이 수업</h4> - 수업 종료 후 탈잉 어플로 잔여 수업료 신청 가능" + 
            			     "<h4>&nbsp;2. 2회차 이상의 수업</h4>" + 
            			     "① 전체 결제" +
            			     "<br>&nbsp;- 첫 수업이 끝나고 이후 수업을 지속하기로  한 경우 <br>&nbsp;탈잉 어플로 잔여수업료 신청 가능" +
            			     "<br>&nbsp;② 1시간의 수업료 결제" +
            			     "<br>&nbsp;- 첫 수업이 끝나고 이후 수업을 지속하기로 한 경우 <br>&nbsp; 수강생 분께  잔여수업료 직접 입금 받기" +
            			     "<br>&nbsp;<br>&nbsp; 1. 처음으로 ");
            }

            if(message.indexOf("수강생") >= 0) {
                send_message("회원님 안녕하세요!! <br>&nbsp; 궁금한 사항을 선택해주세요 <br>&nbsp; 자세한 안내를 도와드릴게요!!" +
                			 "<br>&nbsp; 1. 수업 신청 <br>&nbsp; 2. 영수증 <br>&nbsp; 3. 리뷰 작성 <br>&nbsp; 4. 처음으로");
            }
            
            if(message.indexOf("수업 신청") >= 0) {
                send_message("<br>&nbsp;Rendez,vous에 오신 <br>&nbsp; 여러분을 환영합니다.<br><br>" +
                			 "&nbsp;Rendez,vous에서 메이크업, 댄스, 심리, 제테크등<br>&nbsp; 다양한 분야의 수업들을 배워볼 수 있어요!!<br><br>" +
                			 "&nbsp;어떤 점이 궁금하신가요??<br>" +
                			 "<br>&nbsp; 1. 신청 방법 <br>&nbsp; 2. 수업료 결제 <br>&nbsp; 3. 결제 오류 <br>&nbsp; 4. 처음으로");
            }
            
            if(message.indexOf("신청 방법") >= 0) {
                send_message("<br>&nbsp;Rendez,vous의 수업신청은 어렵지 않아요!<br><br>" + 
                			 "&nbsp;① 회원가입 후 연락처 인증 <br><br> &nbsp;② 원하는 수업 찾기!<br>" +
                			 "&nbsp;[필터를 이용하면 원하는 날짜의 <br> &nbsp;수업들을 모아 보실 수 있어요.]<br><br>" +
                			 "&nbsp;③ 가능한 날짜의 수업 이 있는지 확인 후<p style='font-weight:bold'>&nbsp;수업 신청하기 클릭!</p><br>" +
                			 "&nbsp;④ 수업료 결제 <br><br> &nbsp;⑤ 매칭이 완료되면 수강신청서에 상호 연락처 공개!!<br>" +
                			 "<br>&nbsp; 1. 처음으로");
            }
            
            if(message.indexOf("수업료 결제") >= 0) {
                send_message("<br>&nbsp;Rendez,vous의 잔여 수업료 결제는 아래와 같아요" +
		       			     "<h4>&nbsp;1. 원데이 수업</h4> - 전체 수업료를 한 번에 결제하는 전체결제" + 
		    			     "<h4>&nbsp;2. 2회차 이상의 수업</h4>" + 
		    			     "&nbsp;① 전체수업료를 한 번에 결제하는 전체 결제<br>" +
		    			     "<br>&nbsp;② 1시간의 수업료를 예약금으로 결제" +
		    			     "<br>&nbsp;[첫 수업 이후 나머지 수업도 진행할 경우 잔여<br>&nbsp;수업료는 튜터님께 직접 입금하기]" +
		    			     "<br><br>&nbsp;※온라인상에서 재화를 소비하실 경우 <br>&nbsp;온라인 소비세 10%가 발생됩니다." +
		    			     "<br>&nbsp;<br>&nbsp; 1. 처음으로 ");
            }
            
            if(message.indexOf("결제 오류") >= 0) {
                send_message("<br>&nbsp;Rendez,vous의 수업을 결제하는데 오류가 <br>&nbsp;발생하셨나요??" +
                			 "<br><br>&nbsp;이용에 불편을 드려 정말 죄송합니다." +
                			 "<br><br>&nbsp;아래 양식을 기입하여 문의주시면<br>&nbsp;신속한 안내 도와드리겠습니다." +
                			 "<br><br>&nbsp;※ 해외카드의 경우 결제가 제한될 수 있습니다." + 
                			 "<br><br>&nbsp;[결제 오류]<br>&nbsp; - 결제 수단 : 카드 / 가상계좌" +
                			 "<br>&nbsp; - 사용 기기<br>&nbsp; - 오류내용 / 결제내역<br>" +
                			 "<br>&nbsp;(오류가 나는 화면을 결제하신 내역을<br>&nbsp;캡처 or 사진으로 보내주시면 더욱 <br>&nbsp;빠르게 안내가 가능해요!!)" +
                			 "<br>&nbsp;<br>&nbsp; 1. 처음으로");
            }


            if(message.indexOf("기업교육 및 제휴") >= 0) {
                send_message("기업교육 및 제휴가 궁금하세요?");
            }

            if(message.indexOf("개인정보 TF") >= 0) {
                send_message("개인정보 TF가 궁금하세요?");
            }
        }

        $(function(){
            
            get_first();

            $("#textbox").keypress(function(event){
                if(event.which == 13) {
                    if( $("#enter").prop("checked") ){

                         $("#send").click();
                        event.preventDefault();

                    }
                }

            });
            
            // 사용자 입력 란
            $("#send").click(function(){

                var username = "<span class ='username'>당신 : </span>";

                var newMessage = $("#textbox").val();
                
                $("#textbox").val("");

                var prevState = $("#container").html();

                if(prevState.length > 6) {
                    prevState = prevState + "<br>";
                }

                $("#container").html(prevState + username + newMessage);

                $("#container").scrollTop($("#container").prop("scrollHeight"));

                ai(newMessage);
            });

        });
    </script>

    <div id="header">
        <h1>Rendez, vous</h1>
    </div>

    <div id="container">

    </div>

    <div id="controls">
        <textarea id="textbox" placeholder="내용을 입력해 주세요..."></textarea>
        <button id="send">SEND</button>
        <br>
        <input checked type="checkbox" id="enter"/>
        <label>enter 눌러서 보내기</label>
    </div>

</body>
</html>