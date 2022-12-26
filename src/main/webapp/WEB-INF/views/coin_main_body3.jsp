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
<div class="container-xxl py-5">
    <div class="container py-5 px-lg-5">
        
        <div class="wow fadeInUp" data-wow-delay="0.1s">
            <h1 class="text-center mb-5"><spring:message code="body3.title" text="default text"/></h1>
            <p class="section-title justify-content-center text-dark pp"><spring:message code="body3.subtitle" text="default text"/></p>
        </div>
        
        <div class="row g-4 content_margin4">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="service-item d-flex flex-column text-center borddd">
                            <h5 class="border_draw">STEP 1</h5>
                            <div class="service-icon flex-shrink-0">
                                <i class="fa fa-file-invoice-dollar fa-5x"></i>
                            </div>
                            <p class="font_thick_big"><spring:message code="body3.part1" text="default text"/></p>
                            <p class="m-0 p_font_wei"><spring:message code="body3.content1" text="default text"/></p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="service-item d-flex flex-column text-center borddd">
                        	<h5 class="border_draw">STEP 2</h5>
                            <div class="service-icon flex-shrink-0">
                                <i class="fa fa-coins fa-5x"></i>
                            </div>
                            <p class="font_thick_big"><spring:message code="body3.part2" text="default text"/></p>
                            <p class="m-0 p_font_wei"><spring:message code="body3.content2" text="default text"/></p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="service-item d-flex flex-column text-center borddd">
                        	<h5 class="border_draw">STEP 3</h5>
                            <div class="service-icon flex-shrink-0">
                                <i class="fa fa-piggy-bank fa-5x"></i>
                            </div>
                            <p class="font_thick_big"><spring:message code="body3.part3" text="default text"/></p>
                            <p class="m-0 p_font_wei"><spring:message code="body3.content3" text="default text"/></p>
                        </div>
                    </div>
          </div>
	</div>
	
	
	<div class="container py-5 px-lg-5">
		<div class="wow fadeInUp" data-wow-delay="0.8s">
            <a href="/service" class="section-title justify-content-center underline_p"><spring:message code="see_more" text="default text"/></a>
        </div>
	</div>
	
	</div>
</body>
</html>