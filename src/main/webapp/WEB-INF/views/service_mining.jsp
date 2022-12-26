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
    <div class="container-xxl bg-white">

        <!-- Navbar-->
        <jsp:include page="coin_nav.jsp"></jsp:include>
		
		
		<!-- header start-->
        <div class="container-xxl bg-white hero-header_service">
            <div class="container px-lg-5">
                  <div class="text-start">
                   <h1 class="text-light animated slideInDown content_margin8"><spring:message code="service.header" text="default text"/></h1>
                  </div>
            </div>
                
        </div>
    	<!-- header end-->
    	
    	<!-- sub header...start -->
    	<div class="container-xxl concon row">
          	<div class="up_concon col-lg-4 col-md-4 col-sm-6 text-center">
          		<div class="up_concon_div">
          		<h3 class="text-light"><spring:message code="service.subheader1" text="default text"/></h3>
          		</div>
          	</div>
          	<div class="col-lg-8 col-md-8 col-sm-6 text-start under_concon">
          		<div class="under_concon_div">
          		<p class="text-light"><font class="thick_f"><spring:message code="service.subheader2" text="default text"/></font> <spring:message code="service.subheader3" text="default text"/></p>
          		<p class="text-light"><font class="thick_f"><spring:message code="service.subheader4" text="default text"/></font> <spring:message code="service.subheader5" text="default text"/></p>
          		</div>
          	</div>
    	</div>
    	<!-- sub header...end -->
    	
    	<!-- 2조각 붙여진거(나란히) start -->
        <div class="container-xxl service_real_bg py-5">
            <div class="container py-5 px-lg-5">
                <div class="row service_bgbg">
                    <div class="col-lg-6 bgbg1">
                        <img class="img-fluid wow zoomIn invi" data-wow-delay="0.5s">
                    </div>
                    <div class="col-lg-6 wow fadeInUp bgbg2" data-wow-delay="0.1s">
                        <div class="b_g">
                        	<h1 class="mb-5"><font class="text-info"><spring:message code="service1.title1" text="default text"/></font>
                        	<br><spring:message code="service1.title2" text="default text"/></h1>
                        	<p class="mb-4 text-dark lineline2">
                        	<spring:message code="service1.content1" text="default text"/>
                        	<font class="font_thick"><spring:message code="service1.content2" text="default text"/></font><br>
                        	<spring:message code="service1.content3" text="default text"/><br>
                        	<font class="font_thick"><spring:message code="service1.content4" text="default text"/></font><spring:message code="service1.content5" text="default text"/><br><br>
                        	<font class="font_thick"><spring:message code="service1.content6" text="default text"/></font><spring:message code="service1.content7" text="default text"/>
                        	</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 2조각 붙여진거(나란히) end -->
		
		<!-- 2조각 겹쳐진거 START-->
		<div class="container-xxl py-5">
        <div class="container py-5 px-lg-5">
                <div class="wow fadeInUp" data-wow-delay="0.1s">
                    <h1 class="text-center mb-5"><spring:message code="service2.title" text="default text"/></h1>
                    <p class="section-title justify-content-center text-dark pp"><spring:message code="service2.subtitle" text="default text"/></p><br><br>
                </div>
             <div class="row">
                
                <div class="col-lg-6 col-md-6 con-xm-12 con-xs-12 wow fadeInUp o_it1" data-wow-delay="0.1s">
                </div>
                
                <div class="col-lg-6 col-md-6 wow fadeInUp o_it2" data-wow-delay="0.3s">
                   <div class="team-item">
                            <div class="text-start text-light p-4">
                            	<div class="b_g">
                            	<h3 class="text-light"><spring:message code="service2.part" text="default text"/></h3>
                                <p class="text-light lineline"><br><br>
                                	<spring:message code="service2.content" text="default text"/>
                                </p>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        </div>
		<!-- 2조각 겹쳐진거 END-->
		
		<!-- 4조각난거 START-->
		<div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
                <br>
                <div class="row g-4">
                    <div class="col-lg-6 col-md-6 wow fadeInUp t_it1" data-wow-delay="0.1s">
                        <div class="team-item in_tit">
                            <div class="text-center p-4 text-light ttat">
                            	<h2 class="text-light"><spring:message code="service3.part1" text="default text"/></h2>
                                <span><spring:message code="service3.content1" text="default text"/></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 wow fadeInUp t_it2" data-wow-delay="0.3s">
                        <div class="team-item in_tit">
                            <div class="text-center p-4 text-light ttat">
                            	<h2 class="text-light"><spring:message code="service3.part2" text="default text"/></h2>
                                <span><spring:message code="service3.content2" text="default text"/></span>
                            </div>
                        </div>
                    </div>
                   </div>
                   <div class="row g-4">
                    <div class="col-lg-6 col-md-6 wow fadeInUp t_it3" data-wow-delay="0.5s">
                        <div class="team-item in_tit">
                            <div class="text-center p-4 text-light ttat">
                            	<h2 class="text-light"><spring:message code="service3.part3" text="default text"/></h2>
                                <span><spring:message code="service3.content3" text="default text"/></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 wow fadeInUp t_it4" data-wow-delay="0.5s">
                        <div class="team-item in_tit">
                            <div class="text-center p-4 text-light ttat">
                            	<h2 class="text-light font_thick"><spring:message code="service3.part4" text="default text"/></h2>
                                <span><spring:message code="service3.content4" text="default text"/></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!-- 4조각난거 END-->
		
		<!-- 위탁채굴과정 START-->
		<div class="container-xxl py-5" id="mining_service">
            <div class="container py-5 px-lg-5 image-wrapper text-center">
                <div class="wow fadeInUp" data-wow-delay="0.1s">
                    <h1 class="text-center mb-5"><spring:message code="service4.title" text="default text"/></h1>
                </div>
                <img class="imagerrrr" src="<spring:message code="service.img" text="default text"/>">
            </div>
        </div>
		<!-- 위탁채굴과정 END-->
		
		<!-- 고객센터 start -->
		<div class="container-xxl concon1 row">
          	<div class="up_concon1 col-lg-6 col-md-6 col-sm-6 text-center">
          		<div class="up_concon_div1">
          		<h3 class="text-light"><spring:message code="service5.tel" text="default text"/> : 070-4024-3310</h3>
          		</div>
          	</div>
          	<div class="col-lg-6 col-md-6 col-sm-6 under_concon1 text-center">
          		<div class="under_concon_div1">
          		<h3 class="text-light"><spring:message code="service5.mail" text="default text"/> : <a href="mailto:info@coinch.at?Subject=문의하기" class="text-light">info@coinch.at</a></h3>
          	</div>
    		</div>
		<!-- 고객센터 end -->
        </div>
        
        
        <!-- Footer-->
        <jsp:include page="coin_footer.jsp"></jsp:include>
 	</div>
 	
 	<a href="/service?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
	<a href="/service?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>
 	
</body>
</html>