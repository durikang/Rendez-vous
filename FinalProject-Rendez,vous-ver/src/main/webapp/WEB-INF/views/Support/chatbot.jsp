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
            	send_message("Rendez,vous의 연결수수료는 아래와 같습니다." + 
            				 "<br>&nbsp;<br>&nbsp; (연결 수수료는 1개의 수강신청당 정책하고 있어요)" +
            				 "<h4>1. 원데이 수업<br>&nbsp; - 총 수업료의 20%</h4>" +
            				 "<h4>2. 2회차 이상의 수업<br>&nbsp; - 첫 수업의 1시간 수업료</h4>" + 
            				 "<br>&nbsp; 1. 처음으로")
            }
            
            if(message.indexOf("수업료 정산") >= 0) {
            	send_message("Rendez,vous의 잔여 수업료 정산은 아래와 같아요" +
            			     "<h4>1. 원데이 수업</h4> - 수업 종료 후 탈잉 어플로 잔여 수업료 신청 가능" + 
            			     "<h4>2. 2회차 이상의 수업</h4>" + 
            			     "① 전체 결제" +
            			     "<br>&nbsp;- 첫 수업이 끝나고 이후 수업을 지속하기로  한 경우 <br>&nbsp;탈잉 어플로 잔여수업료 신청 가능" +
            			     "<br>&nbsp;② 1시간의 수업료 결제" +
            			     "<br>&nbsp;- 첫 수업이 끝나고 이후 수업을 지속하기로 한 경우 <br>&nbsp; 수강생 분께  잔여수업료 직접 입금 받기" +
            			     "<br>&nbsp;<br>&nbsp; 1. 처음으로 ")
            }

            if(message.indexOf("수강생") >= 0) {
                send_message("회원님 안녕하세요!! <br>&nbsp; 궁금한 사항을 선택해주세요 <br>&nbsp; 자세한 안내를 도와드릴게요!!");
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