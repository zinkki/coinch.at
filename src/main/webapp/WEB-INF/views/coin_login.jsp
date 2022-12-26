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

		<div class="container-xxl py-5">
			<div class="container py-5 px-lg-5 content_margin8">
				<div class="wow fadeInUp" data-wow-delay="0.1s">
					<br><br><br>
					<h1 class="text-center mb-5"><spring:message code="login.login" text="default text"/></h1>
				</div>
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<div class="wow fadeInUp" data-wow-delay="0.3s">
							<form>
							<input type="hidden" id="session_email" name="session_email" value='<%= session.getAttribute("coin_user_email") %>'/>
								<div class="row g-3">
									<div class="col-12">
										<div class="form-floating">
											<input type="email" class="form-control" id="coin_user_email" name="coin_user_email" placeholder="Your Name">
											<label for="name">Email<span class="check_check check_login font_red"> <spring:message code="login.e1" text="default text"/></span></label>
										</div>
									</div>
									<div class="col-12">
										<div class="form-floating">
											<input type="password" class="form-control" id="coin_user_pw" name="coin_user_pw" placeholder="Your Name">
											<label for="email">Password<span class="check_check check_login font_red"> <spring:message code="login.e1" text="default text"/></span></label>
										</div>
									</div>
									<div class="col-12">
										<button class="btn btn-primary w-100 py-3" onclick="go_login(); return false;" type="submit"><spring:message code="login.login" text="default text"/></button>
									</div>
									<p class="text-end mb-4">
										<a href="/account"><spring:message code="login.find" text="default text"/></a>
									</p>
									<div class="col-12">
										<button class="btn btn-secondary w-100 py-3" onclick="go_join(); return false;" type="submit"><spring:message code="login.regi" text="default text"/></button>
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

<a href="/login?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
<a href="/login?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>

<script src="js/con_login.js"></script>
</body>
</html>