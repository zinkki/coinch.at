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
					<h1 class="text-center mb-5"><br><br><spring:message code="changephone.head" text="default text"/><br><br><br></h1>
				</div>
				<div class="row justify-content-center">
					<div class="col-lg-7">
						<div class="wow fadeInUp" data-wow-delay="0.3s">
							<form>
								<input type="hidden" value="<%= (String)session.getAttribute("coin_user_email") %>" name="coin_user_email" id="coin_user_email">
								<div class="row g-3">
									<div class="col-md-8">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                                            id="coin_user_phone" name="coin_user_phone" maxlength="11">
                                            <label for="coin_user_phone"><spring:message code="changephone.phone" text="default text"/>
                                            <span class="check_check check_phone font_red"><spring:message code="changephone.e_1" text="default text"/></span>
                                            <span class="check_check check_phone_double font_red"><spring:message code="changephone.e_2" text="default text"/></span></label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating">
                                        	<button type="button" class="btn btn-primary w-100 py-3" onclick="send_auth_number(); return false;"
                                        	id="auth_number_btn" name="auth_number_btn">
                                        		<spring:message code="changephone.sendbtn" text="default text"/>
                                        	</button>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                                            id="auth_number" name="auth_number" maxlength="4">
                                            <label for="auth_number"><spring:message code="changephone.auth" text="default text"/>
                                            <span class="check_check check_auth_number font_red"><spring:message code="changephone.e_3" text="default text"/></span></label>
                                        </div>
                                    </div>
									<div class="col-md-6">
										<button class="btn btn-primary w-100 py-3" onclick="no_change(); return false;" type="submit"><spring:message code="changephone.cbtn" text="default text"/></button>
									</div>
									<div class="col-md-6">
										<button class="btn btn-primary w-100 py-3" onclick="phone_change(); return false;" type="submit"><spring:message code="changephone.ubtn" text="default text"/></button>
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

	<a href="/phone_change_page?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
	<a href="/phone_change_page?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>

<script src="js/coin_change_phone.js"></script>
</body>
</html>