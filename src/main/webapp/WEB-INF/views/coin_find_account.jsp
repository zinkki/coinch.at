<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<!-- 아이디 찾기 -->
		<div class="container-xxl py-5">
			<div class="container py-5 px-lg-5">
				<div class="wow fadeInUp" data-wow-delay="0.1s">
					<br><br><br>
					<h2 class="text-center mb-5"><spring:message code="find.findid" text="default text"/></h2>
				</div>
				<div class="row justify-content-center">
					<div class="col-lg-7">
						<div class="wow fadeInUp" data-wow-delay="0.3s">
							<form>
								<div class="row g-3">
									<div class="col-12">
										<div class="form-floating">
											<input type="text" class="form-control" 
												id="coin_user_name" name="coin_user_name" placeholder="Your Name">
											<label for="name"><spring:message code="find.name" text="default text"/>
											<span class="check_check font_red check_name"><spring:message code="find.e_name" text="default text"/></span>
											<span class="check_check font_red check_phone_and_name"><spring:message code="find.e_mismatch" text="default text"/></span></label>
										</div>
									</div>
									<div class="col-12">
										<div class="form-floating">
											<input type="text" class="form-control" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
												 id="coin_user_phone" name="coin_user_phone" placeholder="Your Name" maxlength="11"> 
											<label for="email"><spring:message code="find.phone" text="default text"/>
											<span class="check_check font_red check_phone"><spring:message code="find.e_phone" text="default text"/></span>
											<span class="check_check font_red check_phone_and_name"><spring:message code="find.e_mismatch" text="default text"/></span></label>
										</div>
									</div>
									<p><spring:message code="find.findp1" text="default text"/></p>
									<div class="col-12">
										<button class="btn btn-primary w-100 py-3" id="send_btn" onclick="email_send(); return false;" type="submit"><spring:message code="find.findbtn1" text="default text"/></button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			
		<!-- 비밀번호 찾기 -->
			<div class="container py-5 px-lg-5">
				<div class="wow fadeInUp" data-wow-delay="0.1s">
					<br><br><br>
					<h2 class="text-center mb-5"><spring:message code="find.findpw" text="default text"/></h2>
				</div>
				<div class="row justify-content-center">
					<div class="col-lg-7">
						<div class="wow fadeInUp" data-wow-delay="0.3s">
							<form>
								<div class="row g-3">
									<div class="col-12">
										<div class="form-floating">
											<input type="email" class="form-control" id="coin_user_email" name="coin_user_email"
												placeholder="Your Name">
												<label for="name"><spring:message code="find.email" text="default text"/>
												<span class="check_check font_red email_test"><spring:message code="find.e_email" text="default text"/></span>
												<span class="check_check font_red no_info"><spring:message code="find.e_mismatch2" text="default text"/></span></label>
										</div>
									</div>
									<div class="col-12">
										<div class="form-floating">
											<input type="text" class="form-control" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" 
												id="coin_user_phone1" name="coin_uiser_phone1" maxlength="11" 
												placeholder="Your Email"> <label for="email"><spring:message code="find.phone" text="default text"/>
												<span class="check_check font_red phone_test"><spring:message code="find.e_phone" text="default text"/></span>
												<span class="check_check font_red no_info"><spring:message code="find.e_mismatch2" text="default text"/></span></label>
										</div>
									</div>
									<p><spring:message code="find.findp2" text="default text"/></p>
									<div class="col-12">
										<button class="btn btn-primary w-100 py-3" onclick="pw_send(); return false;" type="submit"><spring:message code="find.findbtn2" text="default text"/></button>
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

<a href="/account?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
<a href="/account?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>

<script src="js/coin_account.js"></script>
</body>
</html>