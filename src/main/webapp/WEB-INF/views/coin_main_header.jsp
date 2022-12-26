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
                            <img class="img-fluid animated slideInLeft" src="img/main1.png" alt="">
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
          			<h4 class="modal-title">견적요청하기</h4>
          			<button type="button" class="close btn btn-default" data-dismiss="modal">X</button>
        		</div>
        	<div class="modal-body">
        	<div class="col-lg-12">
			<div class="wow fadeInUp">
          		<p><font class="font_thick">Q. 채굴에 대한 경험 또는 지식이 있으신가요?<span class="font_red q1">*필수</span></font><br>
          		<input type="radio" name="ch1" id="ch1" value="전혀모름">전혀모른다 &nbsp;
          		<input type="radio" name="ch1" id="ch1" value="이론만조금">이론만 알고있다 &nbsp;
          		<input type="radio" name="ch1" id="ch1" value="채굴경험있음">채굴경험이있다 &nbsp;
          		<input type="radio" name="ch1" id="ch1" value="전문가">전문가다 &nbsp;</p>
          		<p><font class="font_thick">Q. 코인챗의 위탁채굴 서비스를 어떻게 알게 되셨나요?<span class="font_red q2">*필수</span></font><br>
          		<input type="radio" name="ch2" value="1">광고 &nbsp;
          		<input type="radio" name="ch2" value="2">인터넷서칭 &nbsp;
          		<input type="radio" name="ch2" value="3">커뮤니티 &nbsp;
          		<input type="radio" name="ch2" value="4">지인소개 &nbsp;
          		</p>
          		<p><font class="font_thick">Q. 현재 채굴기를 가지고 계신가요?<span class="font_red q3">*필수</span></font><br>
          		<input type="radio" name="ch3" value="1">없다 &nbsp;
          		<input type="radio" name="ch3" value="2">1~3대 &nbsp;
          		<input type="radio" name="ch3" value="3">4~7대 &nbsp;
          		<input type="radio" name="ch3" value="4">8대 이상 보유 &nbsp;
          		</p>
          		<p><font class="font_thick">Q. 그래픽카드 또는 채굴기의 신규(추가)구매가 필요하신가요?<span class="font_red q4">*필수</span></font><br>
          		<input type="radio" name="ch4" value="1">필요없다 &nbsp;
          		<input type="radio" name="ch4" value="2">그래픽카드 필요 &nbsp;
          		<input type="radio" name="ch4" value="3">채굴기 필요&nbsp;
          		<input type="radio" name="ch4" value="4">둘 다 필요 &nbsp;
          		</p>
          		<p><font class="font_thick">Q. 채굴기의 조립이 필요하신가요?<span class="font_red q5">*필수</span></font><br>
          		<input type="radio" name="ch5" value="1">필요없다 &nbsp;
          		<input type="radio" name="ch5" value="2">필요해요 &nbsp;
          		</p>
          		<p><font class="font_thick">Q. 현재 위탁채굴에 사용하실 예상 투자금액이 어떻게 되시나요?<span class="font_red q6">*필수</span></font><br>
          		<input type="radio" name="ch6" value="1">0~300만원&nbsp;
          		<input type="radio" name="ch6" value="2">300~600만원&nbsp;
          		<input type="radio" name="ch6" value="3">600~1000만원&nbsp;
          		<input type="radio" name="ch6" value="4">1000만원 이상&nbsp;
          		</p>
          		<p><font class="font_thick">Q. 어떤 코인의 채굴을 원하시나요?<span class="font_red q7">*필수</span></font><br>
          		<input type="radio" name="ch7" value="1">비트코인&nbsp;
          		<input type="radio" name="ch7" value="2">이더리움&nbsp;
          		<input type="radio" name="ch7" value="3">이더리움 클래식&nbsp;
          		<input type="radio" name="ch7" value="4">이 외의 코인&nbsp;
          		</p>
          	</div>

				<form class="wow fadeInUp" data-wow-delay="0.5s">
					<div class="row g-3">
						<div class="col-12">
							<div class="form-floating">
								<input type="text" class="form-control" id="coin_user_name"
									name="coin_user_name" placeholder="Your Name"> <label
									for="name">이름<span class="check_check font_red">*필수</span></label>
							</div>
						</div>
						<br>
						<div class="col-12">
							<div class="form-floating">
								<input type="text" class="form-control" id="coin_user_phone"
									name="coin_user_phone" placeholder="Your Name"> <label
									for="name">연락처<span class="check_check font_red">*필수</span></label>
							</div>
						</div>
						<br>
						<div class="col-12">
							<div class="form-floating">
								<input type="email" class="form-control" id="coin_user_email"
									name="coin_user_email" placeholder="Your Name"> <label
									for="name">Email<span class="check_check font_red">*필수</span></label>
							</div>
						</div>
						<br>
						<div class="col-12">
							<div class="form-floating">
								<textarea class="form-control" id="message" name="message" placeholder="기타내용" style="height: 150px"></textarea>
								<label for="message">기타내용</label>
							</div>
						</div>
						<br>
					</div>
				</form>
			</div>
        	</div>
        	<div class="modal-footer">
          		<button type="button" class="btn btn-primary w-100 py-3" id="next_btn" data-toggle="modal2" data-dismiss="modal" name="next_btn" onclick="request1(); return false;">
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
          			<h4 class="modal-title">견적요청이 완료되었습니다!</h4>
          			<button type="button" class="close btn btn-default" data-dismiss="modal">X</button>
        		</div>
        	<div class="modal-body">
          		<div class="row justify-content-center">
					<div class="col-lg-12">
						<div class="wow fadeInUp" data-wow-delay="0.3s">
							<p>고객님의 문의 내용을 바탕으로 빠른 시일내에 상담원이 연락을 드리도록 하겠습니다.
								이용해주셔서 감사합니다.</p>
						</div>
					</div>
				</div>
        	</div>
        	<div class="modal-footer">
          		<button type="button" class="btn close btn-primary w-100 py-3" data-dismiss="modal">완료</button>
        	</div>
      	</div>
    </div>
  	</div>
	<!-- Modal-3 start... -->
    <!-- 모달 끝... -->
    
    <!-- JS -->
	<script src="js/modal_action.js"></script>
</body>
</html>