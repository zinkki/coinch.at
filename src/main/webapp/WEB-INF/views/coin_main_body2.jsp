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
      <div class="container-xxl py-5 bg-light">
            <div class="container py-5 px-lg-5">
                <div class="wow fadeInUp" data-wow-delay="0.1s">
                    <h1 class="text-center mb-5"><spring:message code="body2.title" text="default text"/></h1>
                    <p class="section-title justify-content-center text-dark pp"><spring:message code="body2.subtitle" text="default text"/></p>
                </div>
                <div class="row g-4 content_margin4">
                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item rounded">
                            <div class="text-start p-4">
                                <img class="img-fluid mb-4" src="img/main4_1.png" alt="">
                                <p class="font_thick_big"><spring:message code="body2.part1" text="default text"/></p>
                                <span class="text-dark p_font_wei">
                                	<spring:message code="body2.content1" text="default text"/>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="team-item rounded">
                            <div class="text-start p-4">
                                <img class="img-fluid mb-4" src="img/main4_2.png" alt="">
                                <p class="font_thick_big"><spring:message code="body2.part2" text="default text"/></p>
                                <span class="text-dark p_font_wei">
                                	<spring:message code="body2.content2" text="default text"/>
                                </span>
                            </div>
                        </div>
                    </div>
                   </div><br>
                   <div class="row g-4">
                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item rounded">
                            <div class="text-start p-4">
                                <img class="img-fluid mb-4" src="img/main4_3.png" alt="">
                                <p class="font_thick_big"><spring:message code="body2.part3" text="default text"/></p>
                                <span class="text-dark p_font_wei">
                                	<spring:message code="body2.content3" text="default text"/>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item rounded">
                            <div class="text-start p-4">
                                <img class="img-fluid mb-4" src="img/main4_4.png" alt="">
                                <p class="font_thick_big"><spring:message code="body2.part4" text="default text"/></p>
                                <span class="text-dark p_font_wei">
                                	<spring:message code="body2.content4" text="default text"/>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="container py-5 px-lg-5">
				<div class="wow fadeInUp" data-wow-delay="0.8s">
            		<a href="/service#mining_service" class="section-title justify-content-center underline_p">
            			<spring:message code="see_more" text="default text"/>
            		</a>
        		</div>
			</div>
            
        </div>
</body>
</html>