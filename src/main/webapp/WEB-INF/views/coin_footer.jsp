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
	<div class="bg-light footer wow fadeIn" data-wow-delay="0.1s">
			<div class="copyright">
				<div class="row">
					<div class="text-center"> 
						<img class="footerimg" src="img/coinchatfooter.png">
					</div>
					<div class="col-md-12 text-center mb-3 mb-md-0">
						<spring:message code="footer.content1" text="default text"/>
						<a href="/private" class="text-dark"><spring:message code="footer.content2" text="default text"/></a> | 
						<a href="/site_map" class="text-dark"><spring:message code="footer.content3" text="default text"/></a><br>
						&copy; <a class="text-dark text-center">CoinChat</a>, All
						Right Reserved. Designed By <a class="border-bottom text-dark">CoinChat</a>
					</div>
					
				</div>
			</div>
	</div>
</body>
</html>