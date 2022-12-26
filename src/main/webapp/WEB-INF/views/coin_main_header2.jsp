<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- header start-->
        <div class="container-xxl bg-white hero-header">
                <div class="container px-lg-5">
                    <div class="row g-5">
                    
                        <div class="col-lg-4 text-center text-lg-start">
                            <p class="animated slideInLeft content_margin5 text-dark pp"><spring:message code="header_up" text="default text"/></p>
                            <h1 class="animated slideInLeft h1h1"><spring:message code="header_main" text="default text"/>
                            <font style="font-size:4rem;"><spring:message code="header_main_big" text="default text"/></font><br><spring:message code="header_main2" text="default text"/></h1>
                            <br>
                           <a data-toggle="modal" href="#myModal"class="btn btn-light py-sm-3 px-sm-5 animated slideInLeft">
                            <spring:message code="header_btn" text="default text"/></a>
                           <%--  <a href="mailto:info@coinch.at?Subject=견적 요청합니다&body=견적요청 감사합니다. 요청시 해당 폼에 맞도록 작성 부탁드립니다.%0D%0A 
                            %0D%0A1.이름: 예)홍길동 %0D%0A2.연락처: 예)010-1234-5678 %0D%0A3.현재 보유 채굴기 수량: 예)3대
                            %0D%0A4.채굴기 및 그래픽카드 추가 구매여부: 예)채굴기1대,그래픽카드4개 구매필요 %0D%0A5.채굴기 조합 필요여부: 예) O/X %0D%0A6.투자예산: 예)500만원
                            %0D%0A7.채굴 희망코인: 예)비트코인,이더리움 %0D%0A8.기타내용: %0D%0A9.희망답변수단: 예)이메일,문자,전화..%0D%0A%0D%0A감사합니다." 
                            class="btn btn-light py-sm-3 px-sm-5 animated slideInLeft">
                            <spring:message code="header_btn" text="default text"/>
                            </a> --%>
                        </div>
                        
                        <div class="col-lg-8 text-center text-lg-start">
                            <img class="img-fluid animated slideInLeft" src="<spring:message code="header.img" text="default text"/>" alt="">
                        </div>
                        
                    </div>
                </div>
          </div>
    <!-- header end-->
    
    
    <!-- 모달 시작... -->
    <!-- Modal-1 start... -->
	<div class="modal myModal modalhidden" id="myModal" role="modal-dialog" data-backdrop="static">
    	<div class="modal-dialog">
      		<!-- Modal content-->
      		<div class="modal-content">
        		<div class="modal-header text-center">
          			<h4 class="modal-title"><spring:message code="modal1.header" text="default text"/></h4>
          			<button type="button" class="close btn btn-default" data-dismiss="modal">X</button>
        		</div>
        	<div class="modal-body">
        	<div class="col-lg-12">
        	
        	<form id="contactForm">
			<div>
          		<p><font class="font_thick">Q.<spring:message code="modal1.q1" text="default text"/><span class="font_red q1"><spring:message code="modal1.essen" text="default text"/></span></font><br>
          		<input type="radio" name="Q1_채굴에대한경험_얼마나?" id="ch1" value="전혀모름"><spring:message code="modal1.a1.ch1" text="default text"/> &nbsp;
          		<input type="radio" name="Q1_채굴에대한경험_얼마나?" id="ch1" value="이론만조금"><spring:message code="modal1.a1.ch2" text="default text"/> &nbsp;
          		<input type="radio" name="Q1_채굴에대한경험_얼마나?" id="ch1" value="채굴경험있음"><spring:message code="modal1.a1.ch3" text="default text"/> &nbsp;
          		<input type="radio" name="Q1_채굴에대한경험_얼마나?" id="ch1" value="전문가"><spring:message code="modal1.a1.ch4" text="default text"/> &nbsp;</p>
          		<p><font class="font_thick">Q.<spring:message code="modal1.q2" text="default text"/><span class="font_red q2"><spring:message code="modal1.essen" text="default text"/></span></font><br>
          		<input type="radio" name="Q2_코인챗서비스_어떤경로?" value="광고"><spring:message code="modal1.a2.ch1" text="default text"/> &nbsp;
          		<input type="radio" name="Q2_코인챗서비스_어떤경로?" value="인터넷서칭"><spring:message code="modal1.a2.ch2" text="default text"/> &nbsp;
          		<input type="radio" name="Q2_코인챗서비스_어떤경로?" value="커뮤니티"><spring:message code="modal1.a2.ch3" text="default text"/> &nbsp;
          		<input type="radio" name="Q2_코인챗서비스_어떤경로?" value="지인소개"><spring:message code="modal1.a2.ch4" text="default text"/> &nbsp;
          		</p>
          		<p><font class="font_thick">Q.<spring:message code="modal1.q3" text="default text"/><span class="font_red q3"><spring:message code="modal1.essen" text="default text"/></span></font><br>
          		<input type="radio" name="Q3_채굴기_보유현황?" value="없다"><spring:message code="modal1.a3.ch1" text="default text"/> &nbsp;
          		<input type="radio" name="Q3_채굴기_보유현황?" value="1-3대"><spring:message code="modal1.a3.ch2" text="default text"/> &nbsp;
          		<input type="radio" name="Q3_채굴기_보유현황?" value="4-7대"><spring:message code="modal1.a3.ch3" text="default text"/> &nbsp;
          		<input type="radio" name="Q3_채굴기_보유현황?" value="8대이상"><spring:message code="modal1.a3.ch4" text="default text"/> &nbsp;
          		</p>
          		<p><font class="font_thick">Q.<spring:message code="modal1.q4" text="default text"/><span class="font_red q4"><spring:message code="modal1.essen" text="default text"/></span></font><br>
          		<input type="radio" name="Q4_그래픽카드_채굴기_필요유무" value="필요없다"><spring:message code="modal1.a4.ch1" text="default text"/>&nbsp;
          		<input type="radio" name="Q4_그래픽카드_채굴기_필요유무" value="그래픽카드_필요"><spring:message code="modal1.a4.ch2" text="default text"/>&nbsp;
          		<input type="radio" name="Q4_그래픽카드_채굴기_필요유무" value="채굴기_필요"><spring:message code="modal1.a4.ch3" text="default text"/>&nbsp;
          		<input type="radio" name="Q4_그래픽카드_채굴기_필요유무" value="둘_다_필요"><spring:message code="modal1.a4.ch4" text="default text"/>&nbsp;
          		</p>
          		<p><font class="font_thick">Q.<spring:message code="modal1.q5" text="default text"/><span class="font_red q5"><spring:message code="modal1.essen" text="default text"/></span></font><br>
          		<input type="radio" name="Q5_채굴기조립_필요유무" value="필요없다"><spring:message code="modal1.a5.ch1" text="default text"/> &nbsp;
          		<input type="radio" name="Q5_채굴기조립_필요유무" value="필요"><spring:message code="modal1.a5.ch2" text="default text"/> &nbsp;
          		</p>
          		<p><font class="font_thick">Q.<spring:message code="modal1.q6" text="default text"/><span class="font_red q6"><spring:message code="modal1.essen" text="default text"/></span></font><br>
          		<input type="radio" name="Q6_예상투자금액" value="0-300만원"><spring:message code="modal1.a6.ch1" text="default text"/>&nbsp;
          		<input type="radio" name="Q6_예상투자금액" value="300-600만원"><spring:message code="modal1.a6.ch2" text="default text"/>&nbsp;
          		<input type="radio" name="Q6_예상투자금액" value="600-1000만원"><spring:message code="modal1.a6.ch3" text="default text"/>&nbsp;
          		<input type="radio" name="Q6_예상투자금액" value="1000만원_이상"><spring:message code="modal1.a6.ch4" text="default text"/>&nbsp;
          		</p>
          		<p><font class="font_thick">Q.<spring:message code="modal1.q7" text="default text"/><span class="font_red q7"><spring:message code="modal1.essen" text="default text"/></span></font><br>
          		<input type="radio" name="Q7_코인종류_선택" value="비트코인"><spring:message code="modal1.a7.ch1" text="default text"/>&nbsp;
          		<input type="radio" name="Q7_코인종류_선택" value="이더리움"><spring:message code="modal1.a7.ch2" text="default text"/>&nbsp;
          		<input type="radio" name="Q7_코인종류_선택" value="이더리움_클래식"><spring:message code="modal1.a7.ch3" text="default text"/>&nbsp;
          		<input type="radio" name="Q7_코인종류_선택" value="기타코인"><spring:message code="modal1.a7.ch4" text="default text"/>&nbsp;
          		</p>
          	</div>

					<div class="row g-3">
						<div class="col-12">
							<div class="form-floating">
								<input type="text" class="form-control" id="coin_user_name"
									name="coin_user_name" placeholder="Your Name"> <label
									for="name"><spring:message code="modal1.name" text="default text"/><span class="check_check font_red err_name"><spring:message code="modal1.essen" text="default text"/></span>
									<span class="font_red err2_name"><spring:message code="modal1.namefm" text="default text"/></span></label>
							</div>
						</div>
						<br>
						<div class="col-12">
							<div class="form-floating">
								<input type="text" class="form-control" id="coin_user_phone"
									name="coin_user_phone" placeholder="Your Name"> <label
									for="name"><spring:message code="modal1.phone" text="default text"/><span class="check_check font_red err_phone"><spring:message code="modal1.essen" text="default text"/></span>
									<span class="font_red err2_phone"><spring:message code="modal1.phonefm" text="default text"/></span></label>
							</div>
						</div>
						<br>
						<div class="col-12">
							<div class="form-floating">
								<input type="email" class="form-control" id="coin_user_email"
									name="coin_user_email" placeholder="Your Name"> <label
									for="name">Email<span class="check_check font_red err_email"><spring:message code="modal1.essen" text="default text"/></span>
									<span class="font_red err2_email"><spring:message code="modal1.emailfm" text="default text"/></span></label>
							</div>
						</div>
						<br>
						<div class="col-12">
							<div class="form-floating">
								<textarea class="form-control" id="message" name="message" placeholder="기타내용" style="height: 150px"></textarea>
								<label for="message"><spring:message code="modal1.msg" text="default text"/></label>
							</div>
						</div>
						<br>
					</div>
				</form>
			</div>
        	</div>
        	<div class="modal-footer">
          		<button type="button" class="btn btn-primary w-100 py-3" id="next_btn" name="next_btn" onclick="request1(); return false;">
          		<!-- <a style="color:#fff;" href='#myModal2' data-toggle="modal" data-dismiss="modal" onclick="request1(); return false;">NEXT➝</a> -->
          		NEXT➝
          		</button>
          		<!-- <a data-toggle="modal" data-dismiss="modal" href="#myModal2" onclick="request1(); return false;">NEXT➝</a> -->
        	</div>
      	</div>
    </div>
  	</div>
  	<!-- Modal-1 end... -->
  	
  	<!-- Modal-2 start... -->
	<div class="modal modal2 myModal2 modalhidden" id="myModal2" role="modal-dialog" data-backdrop="static">
    	<div class="modal-dialog">
      		<!-- Modal content-->
      		<div class="modal-content">
        		<div class="modal-header text-center">
          			<h4 class="modal-title"><spring:message code="modal2.head" text="default text"/></h4>
          			<button type="button" class="close btn btn-default invi" data-dismiss="modal">X</button>
        		</div>
        	<div class="modal-body">
          		<div class="row justify-content-center">
					<div class="col-lg-12">
						<div>
							<p><spring:message code="modal2.content" text="default text"/></p>
						</div>
					</div>
				</div>
        	</div>
        	<!-- <div class="modal-footer invi">
          		<button type="button" class="btn close btn-primary w-100 py-3" data-dismiss="modal">완료</button>
        	</div> -->
      	</div>
    </div>
  	</div>
	<!-- Modal-3 start... -->
    <!-- 모달 끝... -->
    
    <!-- JS -->
	<!-- <script src="js/modal_action.js"></script> : 원래 모달 -->
	<script src="js/modal_action2.js"></script>
</body>
</html>