<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="coinchat.title" text="default text"/></title>
<link href="img/favicon-32x32.png" rel="icon">
</head>
<body>

<div class="container-xxl bg-white p-0">
	<!-- nav -->
	<jsp:include page="coin_nav.jsp"></jsp:include>
	
	<!-- site Map -->
	<div class="container-xxl py-5">
		<div class="container py-5 px-lg-5">
				<div class="wow fadeInUp" data-wow-delay="0.1s">
					<br><br><br>
					<h2 class="text-center mb-5"><spring:message code="private.head" text="default text"/></h2>
				</div>
				<div class="row justify-content-center">
                    <div class="col-lg-10">
                        <div class="wow fadeInUp" data-wow-delay="0.3s">
                            <p class="text-start mb-4">
                            	<spring:message code="private.content" text="default text"/>
                            </p>
                        </div>
                    </div>
                </div>
		</div>
	</div>
	
	<!-- footer -->
	<jsp:include page="coin_footer.jsp"></jsp:include>
</div>

<a href="/private?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
<a href="/private?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>

</body>
</html>