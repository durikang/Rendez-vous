<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.rule_contents2 {
    color: #2e2e2e;
}
.rule_contents {
    width: 1000px;
    margin: 0 auto;
    padding: 50px 0 100px 0;
    z-index: 1;
}
div, table, ul, li, ol, dl, dt, dd, h1, h2, h3, h4, h5, h6, p {
    margin: 0;
    padding: 0;
    font-size: 14px;
    font-weight: normal;
    list-style: none;
    font-family: "NotoSansCJKkr","나눔바른고딕","NanumBarunGothic","맑은 고딕","Malgun Gothic","Apple Gothic","돋움",Dotum,"Helvetica Neue",Helvetica,Arial,sans-serif !important;
}
.rule_contents .title {
    border-bottom: solid 2px #2e2e2e;
    padding-bottom: 24px;
    margin-bottom: 40px;
}
div, table, ul, li, ol, dl, dt, dd, h1, h2, h3, h4, h5, h6, p {
    margin: 0;
    padding: 0;
    font-size: 14px;
    font-weight: normal;
    list-style: none;
    font-family: "NotoSansCJKkr","나눔바른고딕","NanumBarunGothic","맑은 고딕","Malgun Gothic","Apple Gothic","돋움",Dotum,"Helvetica Neue",Helvetica,Arial,sans-serif !important;
}
.rule_bold_text3 {
    font-size: 16px;
    font-weight: 600;
    padding-left: 10px;
}
.rule_contents2 {
    color: #2e2e2e;
}
.rule_bold_text4 {
    padding-left: 20px;
}
.rule_contents .title {
    border-bottom: solid 2px #2e2e2e;
    padding-bottom: 24px;
    margin-bottom: 40px;
}
.rule_contents .title .main {
    color: #2e2e2e;
    font-size: 20px;
    font-weight: bold;
}
.rule_contents .title .date {
    color: #2e2e2e;
    font-size: 12px;
}


#payAgreeButton {
    background: #888;
    color: #fff;
    padding: 20px 30px;
    width: 230px;
    font-size: 16px;
    border-radius: 6px;
    text-align: center;
}
#payAgreeButton:hover{
	 background: rgb(92, 92, 92);
	 cursor: pointer;
}


</style>
</head>
<body>
<div class="rule_contents rule_contents2">
				<div class="title">
						<span class="main">환불규정</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="date">최종 수정 일자 2018년 9월18일</span>
				</div>
				<span class="rule_bold_text3">원데이 클래스의 경우</span>
				<br><br>
				<div class="rule_bold_text4">
					가.	수업을 시작하기 24시간 이전에 취소요청을 하는 경우에는 결제대금이 100% 환불됩니다. 만일 수업 시작 24시간 이내에 취소 의사를 밝히는 경우에는 등록된 커리큘럼의 1시간 수업료가 차감된 금액이 환불 됩니다.
					<br><br>
					나.	수업을 들었거나 예정된 수업 일정이 지난 경우, 결제 금액은 전액 환불되지 않습니다.
					<br><br>
					다. 수업 등록 페이지 및 상호 합의/조정한 커리큘럼 전체의 수업을 튜터가 이행한 경우, 다음과 같은 환불 규정을 적용 합니다. 
					<br><br>
					<div class="rule_bold_text5">
						① 튜터는 커리큘럼 상의 수업을 이행 했으므로 환불이 불가능 합니다.
						<br><br>
						② 단, 수업 상 문제가 있었다고 판단될 시, 상호 합의 하에 수강생에게 금액을 개인적으로 환불 조치 하는 것은 가능하며 이에 대해서는 탈잉 측에서 관여하지 않습니다. 
						<br><br>
						③ 만일, 수강생이 튜터에게 문제가 있다고 판단하여 수업 진행 및 환불을 요청하는 경우, 탈잉 측에서는 개입할 수 있으며 이에 대한 사유 확인과 수업 과정상에 문제는 없었는지 여부를 확인 합니다. 즉, 수업 진행상의 불쾌감 조성, 준비 소홀, 협박, 폭행, 추행, 불법적인 회유 등의 튜터의 의무에 맞지 않는 행위를 확인하여, 해당 사실이 발견되는 경우 형사 고발 및 법적인 조치를 가할 수 있습니다. 또한, 튜터의 회원자격을 정지 또는 서비스 이용을 제한하는 조치를 취할 수 있습니다. 
						<br><br>
						④ 약관에 규정된 회사의 탈잉안전결제서비스가 종료된 후 수업의 환불 등과 관련하여 튜터와 수강생 사이에 분쟁 등이 발생한 경우 원칙상 관련 당사자간에 해결을 우선시하며, 상호 합의 이후 회사는 이에 대한 책임을 보증하지 않습니다.
					</div>
				</div>
        </div>
        <div style="width: 100%; text-align: center;">
        <button onclick="agree1()" id="payAgreeButton">동의하기</button>
        </div>
        <script type="text/javascript">
        function agree1(){
        	
        	//alert("하하");
        	opener.Pagree();
			self.close();
        	
        }
        
        
        
        </script>
        
</body>
</html>