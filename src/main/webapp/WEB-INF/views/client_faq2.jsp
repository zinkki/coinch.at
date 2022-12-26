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
<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
</head>
<body>
	<div class="container-xxl bg-white p-0">

		<!-- Navbar-->
		<jsp:include page="coin_nav.jsp"></jsp:include>
	
	<div class="container-xxl py-5 hero-header">
      <div class="container my-5 py-5 px-lg-5">
		<div class="row g-5 py-5 content_margin2">
           <div class="col-12 text-center">
             <h1 class="animated slideInDown"><spring:message code="cus.faq" text="default text"/></h1>
           </div>
        </div>
        
         <input type="hidden" name="coin_user_adminYN" id="coin_user_adminYN" value='<%= (String)session.getAttribute("check_admin") %>'>
      	
      	<div class="col-12 text-center">
				<table class="table animated fadeIn">
				<tr>
					<th>NO</th>
					<th><spring:message code="cus.title" text="default text"/></th>
					<th><spring:message code="cus.date" text="default text"/></th>
				</tr>
				<tbody>
					<c:forEach var="i" items="${list }" varStatus="st">
					<tr>
						<td>${ (pageMaker.totalCount-st.index)-((pageMaker.cri.page-1)*10) }</td>
						<td><a href="faq_detail_e?board_seq=${i.board_seq }&page=${pageMaker.cri.page}">${i.board_title }</a></td>
						<td>${i.board_date }</td>
					</tr>
					</c:forEach>
				</tbody>
				</table>
         </div>
      	
      	<div class="text-end content_margin4" id="admin_space">
			<a href="/faq_write_e" class="btn btn-light py-sm-3 px-sm-5 rounded-pill animated slideInDown">글쓰기</a>
		</div>
      	
      </div>
      
       <!-- PAGING -->
			<div class="pagination justify-content-center text-center">
				
				<c:if test="${pageMaker.prev }">
					<li><a href='<c:url value="/faq_e?page=${pageMaker.startPage-1 }"/>'>
						<i class="fa-chevron-left"></i></a></li>
				</c:if>
				
				<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
					<li><a class="page-link" href='<c:url value="/faq_e?page=${pageNum }"/>'>
						<i class="fa-solid fa-1x">${pageNum }</i></a></li>
				</c:forEach>
				
				<c:if test="${pageMaker.next && pageMaker.endPage >0 }">
					<li><a href='<c:url value="/faq_e?page=${pageMaker.endPage+1 }"/>'>
						<i class="fa-chevron-right"></i></a></li>
				</c:if>
			</div>
      
      
    </div>
		
	
	
	<div class="container my-5 py-5 px-lg-5">
		<div class="wow fadeIn" data-wow-delay="0.1s">
		<table class="col-md-12 table_style">
			<tr>
			<td class="text-center" style="width:30%;"><p class="pp faqth1"><spring:message code="cus.ask" text="default text"/></p></td>
			<td style="border-left: 2px solid #c0bcc6;"><p class="pp faqth2"><spring:message code="cus.content1" text="default text"/><br>
				<a href="mailto:info@coinch.at?Subject=<spring:message code="cus.content2" text="default text"/>"  class="text-info"><spring:message code="cus.content2" text="default text"/></a></p></td>
			</tr>
			
		</table>
		</div>
	</div>

		<!-- Footer-->
		<jsp:include page="coin_footer.jsp"></jsp:include>
	</div>
	
	
	<a href="/faq?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
	<a href="/faq_e?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>
	
	<!-- JS -->
    <script src="js/board_all.js"></script>
</body>
</html>