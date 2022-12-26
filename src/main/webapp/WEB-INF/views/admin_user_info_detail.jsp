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
                    <h1 class="text-center mb-5"><br><br>사용자 개인정보 관리</h1>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="wow fadeInUp" data-wow-delay="0.3s">
                            <form>
                            	<input type="hidden" id="check_admin" value='<%= session.getAttribute("check_admin") %>'/>
                                <div class="row g-3">
                                	
                                	<div class="col-md-8">
                                        <div class="form-floating">
                                            이메일(아이디)
                                            <h3>${dto.coin_user_email }</h3>
                                        </div>
                                    </div>
                                    <input type="hidden" value='${dto.coin_user_email }' name="coin_user_email" id="coin_user_email">
                                    <div class="col-md-8">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="coin_user_pw" name="coin_user_pw" value="${dto.coin_user_pw }">
                                            <label for="subject">비밀번호</label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating text-end">
                                            <a onclick="admin_pwChange(); return false;" class="btn btn-light rounded-pill animated slideInRight">비밀번호변경</a>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" value='${dto.coin_user_name }' id="coin_user_name" name="coin_user_name">
                                            <label for="subject">이름</label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating text-end">
                                            <a onclick="admin_nameChange(); return false;" class="btn btn-light rounded-pill animated slideInRight">이름 변경</a>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" value='${dto.coin_user_birth }' disabled="disabled" id="coin_user_birth" name="coin_user_birth">
                                            <label for="subject">생년월일</label>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" value='${dto.coin_user_phone }' id="coin_user_phone" name="coin_user_phone" disabled="disabled">
                                            <label for="subject">핸드폰번호</label>
                                        </div>
                                    </div>
                                    
                                     <div class="col-md-6">
                                        <p>알림설정</p>
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

	<!-- JS -->
    <script src="js/admin_personal_info.js"></script>

</body>
</html>