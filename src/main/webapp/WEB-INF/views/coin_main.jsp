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
    <div class="container-xxl bg-white p-0">

        <!-- Navbar-->
        <jsp:include page="coin_nav.jsp"></jsp:include>
		
		<!-- Header -->
		<%-- <jsp:include page="coin_main_header.jsp"></jsp:include> --%>
		<jsp:include page="coin_main_header2.jsp"></jsp:include>

        <!-- coin_main_body1 (세조각난거) -->
        <jsp:include page="coin_main_body1.jsp"></jsp:include>
        
        <!-- coin_main_body2(네조각난거) -->
        <jsp:include page="coin_main_body2.jsp"></jsp:include>
            
  		<!-- coin_main_body3 (세조각난거 마우스오버시 색반전효과) -->
        <jsp:include page="coin_main_body3.jsp"></jsp:include>
		
		<!-- coin_main_body4 (두조각) -->
		<jsp:include page="coin_main_body4.jsp"></jsp:include>
		
		<!-- coin_main_body5(가운데글자) -->
		<jsp:include page="coin_main_body5.jsp"></jsp:include>
		
		<!-- coin_main_body6(지도) -->
		<jsp:include page="coin_main_body6.jsp"></jsp:include>
		
        <!-- Footer-->
        <jsp:include page="coin_footer.jsp"></jsp:include>
    </div>
    
    <!-- lang_change -->
    <a href="/main?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
	<a href="/main?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>
    
</body>
</html>