<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="coinchat.title" text="default text"/></title>

<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script type="text/javascript">
   
</script>
<link href="img/favicon-32x32.png" rel="icon">
</head>
<body>
<div class="container-xxl bg-white p-0">

<jsp:include page="coin_nav.jsp"></jsp:include>

		<div class="container-xxl py-5">
			<div class="container py-5 px-lg-5 content_margin5">
				<div class="wow fadeInUp" data-wow-delay="0.1s">
					<br><br><br>
					<h2 class="text-center mb-5"><spring:message code="join.head" text="default text"/></h2>
				</div>
				<div class="row justify-content-center">
					<div class="col-lg-7">
						<div class="wow fadeInUp" data-wow-delay="0.3s">
							<form name="join_form">
							<input type="hidden" id="session_email" name="session_email" value='<%= session.getAttribute("coin_user_email") %>'/>
								<div class="row g-3">
									<div class="col-md-8">
										<div class="form-floating">
											<input type="email" class="form-control" id="coin_user_email" name="coin_user_email" placeholder="Your Name">
											<label for="coin_user_email"><spring:message code="join.email_label" text="default text"/>
											<span class="check_check check_double_email font_red"><spring:message code="join.e1" text="default text"/></span>
											<span class="check_check check_email font_red"><spring:message code="join.e2" text="default text"/></span></label>
										</div>
									</div>
									<div class="col-md-4">
                                        <div class="form-floating">
                                        	<button type="button" class="btn btn-primary w-100 py-3" onclick="check_double_email(); return false;"
                                        	id="double_btn" name="double_btn">
                                        		<spring:message code="join.id_dup_btn" text="default text"/>
                                        	</button>
                                        </div>
                                    </div>
									<div class="col-12">
										<div class="form-floating">
											<input type="password" class="form-control" id="coin_user_pw" name="coin_user_pw" placeholder="Your Name">
											<label for="coin_user_pw"><spring:message code="join.pw1_label" text="default text"/>
											<span class="check_check check_pw font_red"><spring:message code="join.e3" text="default text"/></span></label>
										</div>
									</div>
									<div class="col-12">
										<div class="form-floating">
											<input type="password" class="form-control" id="coin_user_pw2" name="coin_user_pw2" placeholder="Your Name"> 
											<label for="coin_user_pw2"><spring:message code="join.pw2_label" text="default text"/>
											<span class="check_check check_pw2 font_red"><spring:message code="join.e4" text="default text"/></span></label>
										</div>
									</div>
									<div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="coin_user_name" name="coin_user_name" placeholder="Your Name">
                                            <label for="coin_user_name"><spring:message code="join.name_label" text="default text"/>
                                            <span class="check_check check_name font_red"><spring:message code="join.e5" text="default text"/></span></label>
                                        </div>
                                    </div>
									<div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                                            id="coin_user_birth" name="coin_user_birth" maxlength="8" placeholder="Your Name">
                                            <label for="coin_user_birth"><spring:message code="join.birth_label" text="default text"/>
                                            <span class="check_check check_birth font_red"><spring:message code="join.e6" text="default text"/></span></label>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                                            id="coin_user_phone" name="coin_user_phone" maxlength="11" placeholder="Your Name">
                                            <label for="coin_user_phone"><spring:message code="join.phone_label" text="default text"/>
                                            <span class="check_check check_phone font_red"><spring:message code="join.e7" text="default text"/></span>
                                            <span class="check_check check_phone_double font_red"><spring:message code="join.e8" text="default text"/></span></label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating">
                                        	<button type="button" class="btn btn-primary w-100 py-3" onclick="send_auth_number(); return false;"
                                        	id="auth_number_btn" name="auth_number_btn">
                                        		<spring:message code="join.auth_btn" text="default text"/>
                                        	</button>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                                            id="auth_number" name="auth_number" maxlength="4" placeholder="Your Name">
                                            <label for="auth_number"><spring:message code="join.authnum_label" text="default text"/>
                                            <span class="check_check check_auth_number font_red"><spring:message code="join.e9" text="default text"/></span></label>
                                        </div>
                                    </div>

									<div class="panel panel-default">
									
										<div class="panel-heading" role="tab">
											<input type="checkbox" name="check" id="check0" class="allcheck">
											 <a class="allcheck">&nbsp;<spring:message code="join.checkbox1" text="default text"/></a>
										</div>

											<div class="panel-body">
												<input type="checkbox" name="check" id="check1">
												&nbsp;<spring:message code="join.checkbox2" text="default text"/><span class="font_red"><spring:message code="join.checkbox_red" text="default text"/></span>
												<br>
												<input type="checkbox" name="check" id="check2">
												&nbsp;<spring:message code="join.checkbox3" text="default text"/><span class="font_red"><spring:message code="join.checkbox_red" text="default text"/></span>
												<br> 
												<input type="checkbox" name="check" id="check3">
												&nbsp;<spring:message code="join.checkbox4" text="default text"/><span class="font_red"><spring:message code="join.checkbox_red" text="default text"/></span>
												<br> 
												<input type="checkbox" name="check" id="check4">
												&nbsp;<spring:message code="join.checkbox5" text="default text"/>
												<br> 
												<input type="checkbox" name="check" id="check5">
												&nbsp;<spring:message code="join.checkbox6" text="default text"/>
												<br>
											</div>
											<div>
											<p class="check_check check_check_box font_red"><spring:message code="join.e10" text="default text"/></p>
											</div>
									</div>

									<div class="col-12">
										<button class="btn btn-primary w-100 py-3" type="button" id="joinbtn" name="joinbtn" onclick="check_join(); return false;">
											<spring:message code="join.joinbtn" text="default text"/>
										</button>
									</div>
									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>


		<jsp:include page="coin_footer.jsp"></jsp:include>

</div>

<a href="/join?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
<a href="/join?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>

<script src="js/coin_join.js"></script>
</body>
</html>