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
			<div class="container py-5 px-lg-5">
				<div class="wow fadeInUp" data-wow-delay="0.1s">
					<h1 class="text-center mb-5"><br><br><spring:message code="changepw.head" text="default text"/><br><br><br></h1>
				</div>
				<div class="row justify-content-center">
					<div class="col-lg-7">
						<div class="wow fadeInUp" data-wow-delay="0.3s">
							<form>
								<input type="hidden" value="<%= (String)session.getAttribute("coin_user_email") %>" name="coin_user_email" id="coin_user_email">
								<div class="row g-3">
									<div class="col-12">
										<div class="form-floating">
											<input type="password" class="form-control" id="coin_now_pw" name="coin_now_pw">
											<label for="email"><spring:message code="changepw.nowpw" text="default text"/>
											<span class="check_check check_now_pw font_red"><spring:message code="changepw.mis" text="default text"/></span>
											<span class="check_check okok1 font_skyblue"><spring:message code="changepw.good" text="default text"/></span></label>
										</div>
									</div>
									<div class="col-12">
										<div class="form-floating">
											<input type="password" class="form-control" id="coin_new_pw" name="coin_new_pw">
											<label for="email"><spring:message code="changepw.newpw1" text="default text"/>
											<span class="check_check check_new_pw font_red"><spring:message code="changepw.e_1" text="default text"/></span>
											<span class="check_check okok2 font_skyblue"><spring:message code="changepw.e_2" text="default text"/></span>
											<span class="check_check check_double font_red"><spring:message code="changepw.e_3" text="default text"/></span></label>
										</div>
									</div>
									<div class="col-12">
										<div class="form-floating">
											<input type="password" class="form-control" id="coin_new_pw2" name="coin_new_pw2">
											<label for="email"><spring:message code="changepw.newpw2" text="default text"/>
											<span class="check_check check_new_pw2 font_red"><spring:message code="changepw.e_4" text="default text"/></span>
											<span class="check_check okok3 font_skyblue"><spring:message code="changepw.e_5" text="default text"/></span></label>
										</div>
									</div>
									<div class="col-md-6">
										<button class="btn btn-primary w-100 py-3" onclick="no_change(); return false;" type="submit">
										<spring:message code="changepw.cbtn" text="default text"/></button>
									</div>
									<div class="col-md-6">
										<button class="btn btn-primary w-100 py-3" onclick="pw_change(); return false;" type="submit">
										<spring:message code="changepw.ubtn" text="default text"/></button>
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

	<a href="/pw_change_page?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
	<a href="/pw_change_page?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>

<script src="js/coin_change_pw.js"></script>
</body>
</html>