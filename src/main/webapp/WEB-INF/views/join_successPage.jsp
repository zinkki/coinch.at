<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="coinchat.title" text="default text"/></title>
<link href="img/favicon-32x32.png" rel="icon">
</head>
<body>
<div class="container-xxl bg-white p-0">
	<!-- NAV -->
	<jsp:include page="coin_nav.jsp"></jsp:include>

	<div class="container-xxl py-5">
		<input type="hidden" id="session_email" name="session_email" value='<%= session.getAttribute("coin_user_email") %>'/>
		<div class="container py-5 px-lg-5 content_margin5">
			<div class="wow fadeInUp" data-wow-delay="0.1s">
					<br><br><br>
					<h2 class="text-center mb-5"><spring:message code="joins.header" text="default text"/></h2>
			</div>
			<div class="col-12 text-center">
				<button class="btn btn-primary w-25 py-3" type="button" id="joinbtn" name="joinbtn">
					<a style="color:#fff;" href="/main"><spring:message code="joins.btn" text="default text"/></a>
				</button>
			</div>
		</div>
	</div>
	
	<!-- FOOTER -->
	<jsp:include page="coin_footer.jsp"></jsp:include>
</div>
	<!-- JS -->
	<script src="js/join_success.js"></script>

	<a href="/join_success?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
	<a href="/join_success?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>
</body>
</html>