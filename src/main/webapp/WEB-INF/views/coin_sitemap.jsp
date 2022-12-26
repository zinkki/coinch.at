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
	
	<div class="container-xxl py-5">
    <div class="container py-5 px-lg-5">
        
        <!-- site Map -->
	<div class="container-xxl py-5">
		<div class="container py-5 px-lg-5">
				
		</div>
	</div>
        
        <div class="wow fadeInUp" data-wow-delay="0.1s">
            <h1 class="text-center mb-5"><spring:message code="sitemap.sitemap" text="default text"/><br><br></h1>
        </div>
        
        <div class="row g-4 content_margin2">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="service-item d-flex flex-column text-center borddd">
                            <div class="service-icon flex-shrink-0">
                                <i class="fa fa-city fa-7x"></i>
                            </div>
                            <br><br>
                            <p class="font_thick_big2"><spring:message code="nav1" text="default text"/></p>
                            <p class="m-0 p_font_wei p_font_msize"><a href="/intro">-<spring:message code="nav1.drop1" text="default text"/></a></p>
                            <p class="m-0 p_font_wei p_font_msize"><a href="/mining_intro">-<spring:message code="nav1.drop2" text="default text"/></a></p>
                            <p class="m-0 p_font_wei p_font_msize"><a href="/map">-<spring:message code="nav1.drop3" text="default text"/></a></p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="service-item d-flex flex-column text-center borddd">
                            <div class="service-icon flex-shrink-0">
                                <i class="fa fa-cubes fa-7x"></i>
                            </div>
                            <br><br>
                            <p class="font_thick_big2"><spring:message code="nav2" text="default text"/></p>
                            <p class="invi m-0 p_font_wei p_font_msize"><a href="#">-코인챗 소개</a></p>
                            <p class="m-0 p_font_wei p_font_msize"><a href="/service">-<spring:message code="nav2.drop1" text="default text"/></a></p>
                            <p class="invi m-0 p_font_wei p_font_msize"><a href="#">-코인챗 소개</a></p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="service-item d-flex flex-column text-center borddd">
                            <div class="service-icon flex-shrink-0">
                                <i class="fa fa-users fa-7x"></i>
                            </div>
                            <br><br>
                            <p class="font_thick_big2"><spring:message code="nav3" text="default text"/></p>
                            <p class="m-0 p_font_wei p_font_msize"><a href="/notice">-<spring:message code="nav3.drop1" text="default text"/></a></p>
                            <p class="m-0 p_font_wei p_font_msize"><a href="/news">-<spring:message code="nav3.drop2" text="default text"/></a></p>
                            <p class="m-0 p_font_wei p_font_msize"><a href="/faq">-<spring:message code="nav3.drop3" text="default text"/></a></p>
                        </div>
                    </div>
          </div>
	</div>
	
	
	<div class="container py-5 px-lg-5">
		<div class="wow fadeInUp" data-wow-delay="0.8s">
			<br><br>
            <a href="/" class="section-title justify-content-center underline_p"><spring:message code="sitemap.gohome" text="default text"/></a>
        </div>
	</div>
	
	</div>
	
	<!-- footer -->
	<jsp:include page="coin_footer.jsp"></jsp:include>
</div>

	<a href="/site_map?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
	<a href="/site_map?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>

</body>
</html>