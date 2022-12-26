<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="coinchat.title" text="default text"/></title>

	<link href="img/favicon-32x32.png" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500&family=Jost:wght@500;600;700&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- <link href="css/bootstrap.min.css" rel="stylesheet"> 위에꺼 아래껄로 바꿔치기-->

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <script src="js/modernizr-2.6.2.min.js"></script>
    <script type="text/javascript">
/*     if(location.hostname != "localhost") {
        if (window.location.protocol != "https:") {
            //window.location.href = "https:" + window.location.href.substring(window.location.protocol.length);
            console.log('https.....');
        }

        if (document.location.protocol == 'http:') {
            //document.location.href = document.location.href.replace('http:', 'https:');
            console.log('https.....')
        }
    }else {
    	console.log('https...This is Local...');
    } */

    	function login() {
    		location.href = "/login";
    	}
    	function join() {
    		location.href = "/join";
    	}
    </script>
</head>
<body>

        <div class="container-xxl position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <a href="/" class="navbar-brand p-0">
                    <!-- <h1 class="m-0"><font style="color:#ababab;">Coin</font>Chat</h1> -->
                    <img src="img/coinchat_logo.png" alt="Logo">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav mx-auto py-0">
                        
                        <div class="nav-item dropdown">
                            <a href="/intro" onclick="" class="nav-link" data-bs-toggle="dropdown"><spring:message code="nav1" text="default text"/></a>
                            <div class="dropdown-menu m-0">
                                <a href="/intro" class="dropdown-item"><spring:message code="nav1.drop1" text="default text"/></a>
                                <a href="/mining_intro" class="dropdown-item"><spring:message code="nav1.drop2" text="default text"/></a>
                                <a href="/map" class="dropdown-item"><spring:message code="nav1.drop3" text="default text"/></a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="/service" onclick="location.href='/service';" class="nav-link" data-bs-toggle="dropdown"><spring:message code="nav2" text="default text"/></a>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="/notice" onclick="" class="nav-link" data-bs-toggle="dropdown"><spring:message code="nav3" text="default text"/></a>
                            <div class="dropdown-menu m-0">
                                <a href='<spring:message code="go.notice" text="default text"/>' class="dropdown-item"><spring:message code="nav3.drop1" text="default text"/></a>
                                <a href='<spring:message code="go.news" text="default text"/>' class="dropdown-item"><spring:message code="nav3.drop2" text="default text"/></a>
                                <a href='<spring:message code="go.faq" text="default text"/>' class="dropdown-item"><spring:message code="nav3.drop3" text="default text"/></a>
                            </div>
                        </div>
                        
                        <a href="#" class="nav-item nav-link invi">로그인</a>
                        <a href="#" class="nav-item nav-link invi">로그인</a>
                        <a href="#" class="nav-item nav-link invi">로그인</a>
                        
                       
                       <% if(session.getAttribute("coin_user_email") == null) { %>
                       	<a href="/login" class="nav-item nav-link"><button class="border_btn"><spring:message code="nav_login" text="default text"/></button></a>
                       	<a href="/join" class="nav-item nav-link"><button class="border_btn"><spring:message code="nav_join" text="default text"/></button></a>
                       <% }else { %>
                        <a href="/my" class="nav-item nav-link"><button class="border_btn">MY</button></a>
                        <a href="/logout" class="nav-item nav-link"><button class="border_btn"><spring:message code="nav_logout" text="default text"/></button></a>
                    	<% } %>
                    </div>
                </div>
            </nav>

        </div>
		<!-- Navbar & Hero End -->
		
		<!-- top btn -->
		<a href="#" class="btn btn-lg btn-secondary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
		
	<!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/isotope/isotope.pkgd.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>
</html>