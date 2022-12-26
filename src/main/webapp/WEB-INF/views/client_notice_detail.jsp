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
</head>
<body>
 	<div class="container-xxl bg-white p-0">

        <!-- Navbar-->
        <jsp:include page="coin_nav.jsp"></jsp:include>
		
		<div class="container-xxl py-5 hero-header">
          <div class="container my-5 py-5 px-lg-5">
            <div class="col-12">
              <br><br><br><br><br>
              <input type="hidden" value="${dto.board_seq }" id="board_seq" name="board_seq">
              <input type="hidden" name="coin_user_adminYN" id="coin_user_adminYN" value='<%= (String)session.getAttribute("check_admin") %>'>
            <table class="table">
			    <thead>
				<tr>
					<td style="width: 75%; font-weight:800; font-size:20px;">${dto.board_title }</td>
					<td style="width: 25%; font-size:15px; text-align: center; "> ${dto.board_date }</td>
				</tr>
			    </thead>
					
				<tbody>
				<tr>
					<td colspan="2">${dto.board_content }</td>
				</tr>
				</tbody>
			 </table>
						
				<br><br><br>
				<div class="text-center">		
				<a href="/notice" class="btn btn-light py-sm-3 px-sm-5 rounded-pill animated slideInDown"><spring:message code="board.list" text="default text"/></a>
				<a href="/client_notice_modifyform?board_seq=${dto.board_seq }" class="btn btn-light py-sm-3 px-sm-5 rounded-pill animated slideInDown" id="admin_space">수정</a>
				<a onclick="notice_delete(); return false;" class="btn btn-light py-sm-3 px-sm-5 rounded-pill animated slideInDown" id="admin_space2">삭제</a>
              	</div>
              </div>
          </div>
        </div>
		
        <!-- Footer-->
        <jsp:include page="coin_footer.jsp"></jsp:include>
        
        <script src="js/board_notice_modify.js"></script>
    </div>
</body>
</html>