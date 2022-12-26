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
             <div class="row g-5 py-5 content_margin2">
                <div class="col-12 text-center">
                   <h1 class="animated slideInDown"><spring:message code="cus.notice" text="default text"/></h1>
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
							<td><a href="notice_detail?board_seq=${i.board_seq }&page=${pageMaker.cri.page}">${i.board_title }</a></td>
							<td>${i.board_date }</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
                </div>
                 
                <div class="text-end content_margin4" id="admin_space">
					<a href="/notice_write" class="btn btn-light py-sm-3 px-sm-5 rounded-pill animated slideInDown">글쓰기</a>
				</div>
          </div>
          
          <!-- PAGING -->
			<div class="pagination justify-content-center text-center">
				
				<c:if test="${pageMaker.prev }">
					<li><a href='<c:url value="/notice?page=${pageMaker.startPage-1 }"/>'>
						<i class="fa-chevron-left"></i></a></li>
				</c:if>
				
				<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
					<li><a class="page-link" href='<c:url value="/notice?page=${pageNum }"/>'>
						<i class="fa-solid fa-1x">${pageNum }</i></a></li>
				</c:forEach>
				
				<c:if test="${pageMaker.next && pageMaker.endPage >0 }">
					<li><a href='<c:url value="/notice?page=${pageMaker.endPage+1 }"/>'>
						<i class="fa-chevron-right"></i></a></li>
				</c:if>
			</div>
			
        </div>
		
        <!-- Footer-->
        <jsp:include page="coin_footer.jsp"></jsp:include>
    </div>
    
    
    <a href="/notice?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
	<a href="/notice_e?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>
    
    <!-- JS -->
    <script src="js/board_all.js"></script>
</body>
</html>