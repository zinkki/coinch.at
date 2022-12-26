<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="coinchat.title" text="default text"/></title>

		<link rel="stylesheet" href="css_img_slide/swiper.min.css">
       	<link rel="stylesheet" href="css_img_slide/animate.css">
        <link rel="stylesheet" href="css_img_slide/bootstrap.min.css">
        <link rel="stylesheet" href="css_img_slide/magnific-popup.css">
        <link rel="stylesheet" href="css_img_slide/style.css">
        <link rel="stylesheet" href="css_img_slide/responsive.css" />
        
        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<link href="img/favicon-32x32.png" rel="icon">
</head>
<body>
    <div class="container-xxl bg-white p-0">

        <!-- Navbar-->
        <jsp:include page="coin_nav.jsp"></jsp:include>
		
		<!-- Testimonial Start -->
        <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container py-5 px-lg-5">
                <h1 class="text-center mb-5"><br><br><spring:message code="station.title" text="default text"/></h1>
					<div class="row py-5 px-lg-5">
								<div class="swiper-container">
									<div class="swiper-wrapper">
										<div class="swiper-slide"
											style="background-image: url(img/mi1.png)"></div>
										<div class="swiper-slide"
											style="background-image: url(img/mi2.png)"></div>
										<div class="swiper-slide"
											style="background-image: url(img/mi3.jpg)"></div>
										<div class="swiper-slide"
											style="background-image: url(img/mi4.jpg)"></div>
									</div>
									<!-- If we need navigation buttons -->
									<div class="swiper-button-prev"></div>
									<div class="swiper-button-next"></div>
								</div>
					</div>
			</div>
			
			<!-- 밑에 4조각 start-->
			<div class="row">
                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item rounded">
                            <div class="text-start p-4">
                                <p class="font_thick_big back_sky"><spring:message code="station.part1" text="default text"/></p>
                                <span><spring:message code="station.content1" text="default text"/></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="team-item rounded">
                            <div class="text-start p-4">
                                <p class="font_thick_big back_dark"><spring:message code="station.part2" text="default text"/></p>
                                <span><spring:message code="station.content2" text="default text"/></span>
                            </div>
                        </div>
                    </div>
                   </div><br>
                   <div class="row g-4">
                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item rounded">
                            <div class="text-start p-4">
                                <p class="font_thick_big back_dark"><spring:message code="station.part3" text="default text"/></p>
                                <span><spring:message code="station.content3" text="default text"/></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item rounded">
                            <div class="text-start p-4">
                                <p class="font_thick_big back_sky"><spring:message code="station.part4" text="default text"/></p>
                                <span><spring:message code="station.content4" text="default text"/></span>
                            </div>
                        </div>
                    </div>
                </div>
			 <!-- 밑에 4조각 end -->
			
        </div>
        <!-- Testimonial End -->
        
        
        
       
        
        <!-- Footer-->
        <jsp:include page="coin_footer.jsp"></jsp:include>
		</div>
    
    <script src="img_slide_js/vendor/jquery-1.11.2.min.js"></script>
    <script src="img_slide_js/vendor/bootstrap.min.js"></script>

    <script src="img_slide_js/jquery.magnific-popup.js"></script>
    <script src="img_slide_js/jquery.easing.1.3.js"></script>
    <script src="img_slide_js/swiper.min.js"></script>
    <script src="img_slide_js/jquery.collapse.js"></script>

    <script src="img_slide_js/plugins.js"></script>
    <script src="img_slide_js/main.js"></script>
    
    <a href="/mining_intro?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
	<a href="/mining_intro?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>
    
</body>
</html>