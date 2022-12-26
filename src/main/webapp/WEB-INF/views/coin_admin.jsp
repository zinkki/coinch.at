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
		
		
	<!-- Contact Start -->
       <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
                <div class="wow fadeInUp" data-wow-delay="0.1s">
                    <h1 class="text-center mb-5"><br><br>관리자 페이지</h1>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="wow fadeInUp" data-wow-delay="0.3s">
                            <form>
                                <div class="row g-3">
                                	
                                	<div class="col-12">
                                		<div class="form-floating">
                                			<a>관리자계정</a>
                                			<input type="hidden" id="check_admin" value='<%= session.getAttribute("check_admin") %>'/>
                                		</div>
                                	</div>
                                	<div class="col-12">
                                        <div class="form-floating">
                                            <h3><%= session.getAttribute("coin_user_email") %></h3>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-floating">
                                            <h3>코인챗 회원정보 관리 ➝</h3>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating text-end">
                                            <a href="/admin_user_info" class="btn btn-light rounded-pill animated slideInRight">코인챗 회원정보 관리</a>
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
    <script src="js/admin_check.js"></script>
</body>
</html>