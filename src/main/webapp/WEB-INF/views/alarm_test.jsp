<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet prefetch' href='https://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/css/bootstrap.css'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="css/alarm_css.css">
</head>
<body>
<div class="container-xxl bg-white p-0">
	<!-- Navbar-->
    <jsp:include page="coin_nav.jsp"></jsp:include>
   
   <!-- Contact Start -->
       <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
                <div class="wow fadeInUp" data-wow-delay="0.1s">
                    <h1 class="text-center mb-5"><br><br>개인정보 관리</h1>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="wow fadeInUp" data-wow-delay="0.3s">
                            <form>
                                <div class="row g-3">
                                	
                                	<div class="col-md-8">
                                        <div class="form-floating">
                                            이메일(아이디)
                                            <h3><%= session.getAttribute("coin_user_email") %></h3>
                                        </div>
                                    </div>
                                    <input type="hidden" value="${sessionScope.coin_user_email }" name="coin_user_email" id="coin_user_email">
                                    <div class="col-md-8">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="coin_user_pw" name="coin_user_pw" value="************" disabled="disabled">
                                            <label for="subject">비밀번호</label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating text-end">
                                            <a href="/pw_change_page" class="btn btn-light rounded-pill animated slideInRight">비밀번호변경</a>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="coin_user_name" name="coin_user_name">
                                            <label for="subject">이름</label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating text-end">
                                            <a onclick="coin_user_name_change(); return false;" class="btn btn-light rounded-pill animated slideInRight">이름 변경</a>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" disabled="disabled" id="coin_user_birth" name="coin_user_birth">
                                            <label for="subject">생년월일</label>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="coin_user_phone" name="coin_user_phone" disabled="disabled">
                                            <label for="subject">핸드폰번호</label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating text-end">
                                            <a href="/phone_change_page" class="btn btn-light rounded-pill animated slideInRight">전화번호 변경</a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <p>알림설정</p>
                                    </div>
                                    <div class="col-md-6">
                                    <div class="text-end">
										<label class="label-switch switch-info"> 
										<input type="checkbox" class="switch switch-bootstrap status"
											name="status" id="status" value="1" checked="checked">
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
</body>
</html>