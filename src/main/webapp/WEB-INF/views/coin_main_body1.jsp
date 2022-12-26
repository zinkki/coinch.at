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
            <h1 class="text-center mb-5"><spring:message code="body1.title" text="default text"/></h1>
            <p class="section-title justify-content-center text-dark pp"><spring:message code="body1.subtitle" text="default text"/></p>
        </div>
        
        <div class="row g-4 content_margin4">
            <div class="col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                <div class="feature-item rounded text-center p-4">
                 <img class="img-fluid animated zoomIn" src="<spring:message code="main.body1" text="default text"/>" alt="">
                 <p class="thick_20 mb-3 content_margin3"><span class="lightPen"><spring:message code="body1.part1" text="default text"/></span></p>
                 <p class="m-0 text-dark p_font_wei">
                 	<spring:message code="body1.content1" text="default text"/>
                 </p>
                </div>
        	</div>
        	<div class="col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
            <div class="feature-item rounded text-center p-4">
             <img class="img-fluid animated zoomIn" src="img/main2_2.png" alt="">
             <p class="thick_20 mb-3 content_margin3"><span class="lightPen"><spring:message code="body1.part2" text="default text"/></span></p>
             <p class="m-0 text-dark p_font_wei">
             	<spring:message code="body1.content2" text="default text"/>
             </p>
            </div>
        	</div>
        	<div class="col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
			 <div class="feature-item rounded text-center p-4">
			 <img class="img-fluid animated zoomIn" src="img/main2_3.png" alt="">
			 <p class="thick_20 mb-3 content_margin3"><span class="lightPen"><spring:message code="body1.part3" text="default text"/></span></p>
			 <p class="m-0 text-dark p_font_wei">
			 	<spring:message code="body1.content3" text="default text"/>
             </p>
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