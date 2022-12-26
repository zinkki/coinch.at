<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="coinchat.title" text="default text"/></title>
<link rel='stylesheet prefetch' href='https://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/css/bootstrap.css'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="css/alarm_css.css">
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script type="text/javascript">
</script>
<link href="img/favicon-32x32.png" rel="icon">
</head>
<body>
<div class="container-xxl bg-white p-0">

   <!-- Navbar-->
   <jsp:include page="coin_nav.jsp"></jsp:include>
		
	<!-- Contact Start -->
       <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
                <div class="wow fadeInUp" data-wow-delay="0.1s">
                    <h1 class="text-center mb-5"><br><br><spring:message code="info.head" text="default text"/></h1>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="wow fadeInUp" data-wow-delay="0.3s">
                            <form>
                                <div class="row g-3">
                                	
                                	<div class="col-md-8">
                                        <div class="form-floating">
                                            <spring:message code="info.email" text="default text"/>
                                            <h3><%= session.getAttribute("coin_user_email") %></h3>
                                        </div>
                                    </div>
                                    <input type="hidden" value="<%= (String)session.getAttribute("coin_user_email") %>" name="coin_user_email" id="coin_user_email">
                                    <div class="col-md-8">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="coin_user_pw" name="coin_user_pw" value="************" disabled="disabled">
                                            <label for="subject"><spring:message code="info.pw" text="default text"/></label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating text-end">
                                            <a href="/pw_change_page" class="btn btn-light rounded-pill animated slideInRight"><spring:message code="info.btn1" text="default text"/></a>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="coin_user_name" name="coin_user_name">
                                            <label for="subject"><spring:message code="info.name" text="default text"/></label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating text-end">
                                            <a onclick="coin_user_name_change(); return false;" class="btn btn-light rounded-pill animated slideInRight"><spring:message code="info.btn2" text="default text"/></a>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" disabled="disabled" id="coin_user_birth" name="coin_user_birth">
                                            <label for="subject"><spring:message code="info.birth" text="default text"/></label>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="coin_user_phone" name="coin_user_phone" disabled="disabled">
                                            <label for="subject"><spring:message code="info.phone" text="default text"/></label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating text-end">
                                            <a href="/phone_change_page" class="btn btn-light rounded-pill animated slideInRight"><spring:message code="info.btn3" text="default text"/></a>
                                        </div>
                                    </div>
                                     <div class="col-md-6">
                                        <p><spring:message code="info.alarm" text="default text"/></p>
                                    </div>
                                    <div class="col-md-6">
                                    <div class="text-end">
										<label class="label-switch switch-info"> 
										<input type="checkbox" class="switch switch-bootstrap status"
											name="coin_user_alarmYN" id="coin_user_alarmYN" onclick="change_alarm();">
										<span class="lable"></span>
										</label>
									</div>
									</div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->
		

        <!-- Footer-->
        <jsp:include page="coin_footer.jsp"></jsp:include>
    </div>
    
    <a href="/my_info?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
	<a href="/my_info?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>
    
    <script src="js/coin_my.js"></script>
</body>
</html>