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
		
        <div class="container-xxl bg-info py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container py-5 px-lg-5">
            	
            	<div class="row">
            	
                <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                	<i class="fa fa-3x fa-search text-info mb-4 content_margin5 "></i>
                    <h1 class="text-start mb-5"><spring:message code="body4.title" text="default text"/></h1>
                	<p class="section-title text-dark pp"><spring:message code="body4.subtitle" text="default text"/></p><br>
                	<a href='<spring:message code="go.faq" text="default text"/>' class="btn btn-light py-sm-3 px-sm-5 rounded-pill animated slideInRight">
                		<spring:message code="body4.btn" text="default text"/>
                	</a>
                </div>
                
                <div class="col-lg-6 col-md-6 owl-carousel testimonial-carousel">
                	
                	<a href='<spring:message code="faq1.lang" text="default text"/>'>
                    <div class="testimonial-item body4_round my-4">
                        <div class="d-flex">
                            <div class="ps-4 body4_q">
                                <p class="font_thick_nor"><spring:message code="body4.q1" text="default text"/></p>
                            </div>
                        </div>
                    </div>
                    </a>
                    
                   <a href='<spring:message code="faq2.lang" text="default text"/>'>
                   <div class="testimonial-item body4_round my-4">
                        <div class="d-flex">
                            <div class="ps-4 body4_q">
                                <p class="font_thick_nor"><spring:message code="body4.q2" text="default text"/></p>
                            </div>
                        </div>
                    </div>
                    </a>
                    
                    <a href='<spring:message code="faq3.lang" text="default text"/>'>
                    <div class="testimonial-item body4_round my-4">
                        <div class="d-flex">
                            <div class="ps-4 body4_q">
                                <p class="font_thick_nor"><spring:message code="body4.q3" text="default text"/></p>
                            </div>
                        </div>
                    </div>
                    </a>
                    
                </div>
                </div>
                
            </div>
        </div>
</body>
</html>