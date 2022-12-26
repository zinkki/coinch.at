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
                    <h1 class="text-center mb-5"><br><br><spring:message code="my.head" text="default text"/></h1>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="wow fadeInUp" data-wow-delay="0.3s">
                            <form>
                            <input type="hidden" id="session_email" name="session_email" value='<%= session.getAttribute("coin_user_email") %>'/>
                                <div class="row g-3">
                                	
                                	<div class="col-12">
                                		<div class="form-floating" id="admin_space">
                                			<a href="/admin_manage">관리자페이지로</a>
                                			<input type="hidden" id="check_admin" value='<%= session.getAttribute("check_admin") %>'/>
                                		</div>
                                	</div>
                                	<div class="col-md-8">
                                        <div class="form-floating">
                                            <h3><%= session.getAttribute("coin_user_email") %></h3>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating text-end">
                                            <a href="/my_info" class="btn btn-light rounded-pill animated slideInRight"><spring:message code="my.btn" text="default text"/></a>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" disabled="disabled" id="message" style="height: 150px"><spring:message code="my.ready" text="default text"/></textarea>
                                            <label for="message"><spring:message code="my.mining" text="default text"/></label>
                                        </div>
                                    </div>
                                   <div class="col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" disabled="disabled"  id="message" style="height: 150px"><spring:message code="my.ready" text="default text"/></textarea>
                                            <label for="message"><spring:message code="my.property" text="default text"/></label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" disabled="disabled" id="message" style="height: 150px"><spring:message code="my.ready" text="default text"/></textarea>
                                            <label for="message"><spring:message code="my.service" text="default text"/></label>
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
    
    <a href="/my?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
	<a href="/my?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>
    
    <!-- JS -->
    <script src="js/my_check_admin.js"></script>
</body>
</html>