<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-xxl zinkki_custom_bg py-5 wow fadeInUp"
		data-wow-delay="0.1s">
		<div class="container py-5 px-lg-5">
			<div class="row justify-content-center">
				<div class="col-lg-7 text-center">
					<h1 class="text-center text-white mb-4"><spring:message code="body5.title" text="default text"/></h1>
					<p class="text-white mb-4"><spring:message code="body5.subtitle" text="default text"/></p>
					<div class="position-relative w-100 mt-3">
						<%-- <a href="mailto:info@coinch.at?Subject=견적 요청합니다&body=견적요청 감사합니다. 요청시 해당 폼에 맞도록 작성 부탁드립니다.%0D%0A
						%0D%0A1.이름: 예)홍길동 %0D%0A2.연락처: 예)010-1234-5678 %0D%0A3.현재 보유 채굴기 수량: 예)3대
						%0D%0A4.채굴기 및 그래픽카드 추가 구매여부: 예)채굴기1대,그래픽카드4개 구매필요 %0D%0A5.채굴기 조합 필요여부: 예) O/X %0D%0A6.투자예산: 예)500만원
						%0D%0A7.채굴 희망코인: 예)비트코인,이더리움 %0D%0A8.기타내용: %0D%0A9.희망답변수단: 예)이메일,문자,전화..%0D%0A%0D%0A감사합니다."
							class="btn btn-light2 py-sm-3 px-sm-5 rounded-pill animated slideInRight"><spring:message code="body5.btn" text="default text"/></a> --%>
						<a data-toggle="modal" href="#myModal"class="btn btn-light2 py-sm-3 px-sm-5 rounded-pill animated slideInRight">
                            <spring:message code="header_btn" text="default text"/></a>	
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>