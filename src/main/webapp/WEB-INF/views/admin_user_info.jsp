<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
</head>
<body>
<div class="container-xxl bg-white p-0">

   <!-- Navbar-->
   <jsp:include page="coin_nav.jsp"></jsp:include>
		
		
	<!-- Contact Start -->
       <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
                <div class="wow fadeInUp" data-wow-delay="0.1s">
                    <h1 class="text-center mb-5"><br><br>코인챗 회원정보</h1>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="wow fadeInUp" data-wow-delay="0.3s">
                        	<input type="hidden" id="check_admin" value='<%= session.getAttribute("check_admin") %>'/>
                            <table class="table animated fadeIn">
								<tr>
									<th>NO</th>
									<th>ID</th>
									<th>NAME</th>
									<th>PHONE</th>
								</tr>
								<tbody>
									<c:forEach var="i" items="${list }" varStatus="st">
										<tr>
											<td>${ (pageMaker.totalCount-st.index)-((pageMaker.cri.page-1)*10) }</td>
											<td><a href="/user_info_detail?coin_user_seq=${i.coin_user_seq }&page=${pageMaker.cri.page}">${i.coin_user_email }</a></td>
											<td>${i.coin_user_name }</td>
											<td>${i.coin_user_phone }</td>
										</tr>
									</c:forEach>
								</tbody>
                            </table>
                        </div>
                        
                        
                        <!-- PAGING -->
						<div class="pagination justify-content-center text-center">
				
							<c:if test="${pageMaker.prev }">
								<li><a href='<c:url value="/admin_user_info?page=${pageMaker.startPage-1 }"/>'>
									<i class="fa-chevron-left"></i></a></li>
							</c:if>
				
							<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
								<li><a class="page-link" href='<c:url value="/admin_user_info?page=${pageNum }"/>'>
									<i class="fa-solid fa-1x">${pageNum }</i></a></li>
							</c:forEach>
				
							<c:if test="${pageMaker.next && pageMaker.endPage >0 }">
								<li><a href='<c:url value="/admin_user_info?page=${pageMaker.endPage+1 }"/>'>
									<i class="fa-chevron-right"></i></a></li>
							</c:if>
						</div>


	
						<div class="text-center content_margin4">
							<a href="/admin_manage" class="btn btn-light py-sm-3 px-sm-5 rounded-pill animated slideInDown">관리자 페이지 가기</a>
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