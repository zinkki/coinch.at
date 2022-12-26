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
		<!-- Navbar-->
    	<jsp:include page="coin_nav.jsp"></jsp:include>
    	
    	
    	<div class="container-xxl py-5">
    <div class="container py-5 px-lg-5">
        
        <div class="wow fadeInUp" data-wow-delay="0.1s">
            <h1 class="text-center mb-5"><br><br>잘못된 페이지 접근입니다!</h1>
            <p class="section-title justify-content-center text-dark pp">ERROR PAGE!!</p>
        </div>
        
        <div class="row g-4 content_margin4">
            <div class="col-lg-12 wow fadeInUp" data-wow-delay="0.1s">
                <div class="feature-item rounded text-center p-4">
                 <img class="img-fluid animated zoomIn" src="img/warning.png" alt="">
                </div>
        	</div>
    	</div>
    	
    	
	</div>
	<div class="container py-5 px-lg-5">
		<div class="wow fadeInUp" data-wow-delay="0.8s">
            <a href="/" class="section-title justify-content-center underline_p">GO-MAIN</a>
        </div>
	</div>
</div>
    	
    	
    	
    	<!-- Footer-->
        <jsp:include page="coin_footer.jsp"></jsp:include>
	
	</div>
	
	<a href="/page_error?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
	<a href="/page_error?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>
</body>
</html>