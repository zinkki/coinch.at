<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-xxl bg-white p-0">
	<!-- Navbar-->
    <jsp:include page="coin_nav.jsp"></jsp:include>
	
	<div class="container-xxl py-5">
		<div class="container py-5 px-lg-5">
			<div class="wow fadeInUp" data-wow-delay="0.1s">
                <h1 class="text-center mb-5"><br><br>견적요청-모달띄우기</h1>
            </div>
            
            <div class="row justify-content-center">
            	<div class="col-lg-7">
            		<div class="wow fadeInUp" data-wow-delay="0.3s">
            			<div class="row g-3">
            				<div class="col-md-12">
            				<h2>abcd</h2>
            				<a data-toggle="modal" href="#myModal">모달열기</a>
            				</div>
            			</div>
            		</div>
            	</div>
            </div>		
		</div>
	</div>

	<!-- Footer-->
    <jsp:include page="coin_footer.jsp"></jsp:include>   
</div>


	<!-- Modal-1 start... -->
	<div class="modal" id="myModal" role="modal-dialog" data-backdrop="static">
    	<div class="modal-dialog">
      		<!-- Modal content-->
      		<div class="modal-content">
        		<div class="modal-header text-center">
          			<h4 class="modal-title">견적요청하기</h4>
          			<button type="button" class="close btn btn-default" data-dismiss="modal">X</button>
        		</div>
        	<div class="modal-body">
        	<div class="col-lg-12">
			<div class="wow fadeInUp" data-wow-delay="0.3s">
          		<p>Q. 채굴에 대한 경험 또는 지식이 있으신가요?<br>
          		<input type="radio" name="ch1" value="1">전혀모른다 &nbsp;
          		<input type="radio" name="ch1" value="2">이론만 알고있다 &nbsp;
          		<input type="radio" name="ch1" value="3">채굴경험이있다 &nbsp;
          		<input type="radio" name="ch1" value="4">전문가다 &nbsp;</p>
          		<p>Q. 코인챗의 위탁채굴 서비스를 어떻게 알게 되셨나요?<br>
          		<input type="radio" name="ch2" value="1">광고 &nbsp;
          		<input type="radio" name="ch2" value="2">인터넷서칭 &nbsp;
          		<input type="radio" name="ch2" value="3">커뮤니티 &nbsp;
          		<input type="radio" name="ch2" value="4">지인소개 &nbsp;
          		</p>
          		<p>Q. 현재 채굴기를 가지고 계신가요?<br>
          		<input type="radio" name="ch3" value="1">없다 &nbsp;
          		<input type="radio" name="ch3" value="2">1~3대 &nbsp;
          		<input type="radio" name="ch3" value="3">4~7대 &nbsp;
          		<input type="radio" name="ch3" value="4">8대 이상 보유 &nbsp;
          		</p>
          		<p>Q. 그래픽카드 또는 채굴기의 신규(추가)구매가 필요하신가요?<br>
          		<input type="radio" name="ch4" value="1">필요없다 &nbsp;
          		<input type="radio" name="ch4" value="2">그래픽카드 필요 &nbsp;
          		<input type="radio" name="ch4" value="3">채굴기 필요&nbsp;
          		<input type="radio" name="ch4" value="4">둘 다 필요 &nbsp;
          		</p>
          		<p>Q. 채굴기의 조립이 필요하신가요?<br>
          		<input type="radio" name="ch5" value="1">필요없다 &nbsp;
          		<input type="radio" name="ch5" value="2">필요해요 &nbsp;
          		</p>
          		<p>Q. 현재 위탁채굴에 사용하실 예상 투자금액이 어떻게 되시나요?<br>
          		<input type="radio" name="ch6" value="1">0~300만원&nbsp;
          		<input type="radio" name="ch6" value="2">300~600만원&nbsp;
          		<input type="radio" name="ch6" value="3">600~1000만원&nbsp;
          		<input type="radio" name="ch6" value="4">1000만원 이상&nbsp;
          		</p>
          		<p>Q. 어떤 코인의 채굴을 원하시나요?<br>
          		<input type="radio" name="ch7" value="1">비트코인&nbsp;
          		<input type="radio" name="ch7" value="2">이더리움&nbsp;
          		<input type="radio" name="ch7" value="3">이더리움 클래식&nbsp;
          		<input type="radio" name="ch7" value="4">이 외의 코인&nbsp;
          		</p>
          	</div>
          	</div>
        	</div>
        	<div class="modal-footer">
          		<button type="button" class="btn btn-primary w-100 py-3">
          		<a style="color:#fff;" href="#myModal2" data-toggle="modal" data-dismiss="modal" onclick="request1(); return false;">NEXT➝</a>
          		</button>
          		<!-- <a data-toggle="modal" data-dismiss="modal" href="#myModal2" onclick="request1(); return false;">NEXT➝</a> -->
        	</div>
      	</div>
    </div>
  	</div>
  	<!-- Modal-1 end... -->
  	
  	
	<!-- Modal-2 start... -->
	<div class="modal" id="myModal2" role="modal-dialog" data-backdrop="static">
    	<div class="modal-dialog">
      		<!-- Modal content-->
      		<div class="modal-content">
        		<div class="modal-header text-center">
          			<h4 class="modal-title">견적요청하기</h4>
          			<button type="button" class="close btn btn-default" data-dismiss="modal">X</button>
        		</div>
        	<div class="modal-body">
          		<div class="row justify-content-center">
					<div class="col-lg-12">
						<div class="wow fadeInUp" data-wow-delay="0.3s">
							<form>
								<div class="row g-3">
									<div class="col-12">
										<div class="form-floating">
											<input type="email" class="form-control" id="coin_user_email" name="coin_user_email" placeholder="Your Name">
											<label for="name">이름<span class="check_check font_red">*필수입력사항 입니다.</span></label>
										</div>
									</div><br>
									<div class="col-12">
										<div class="form-floating">
											<input type="email" class="form-control" id="coin_user_email" name="coin_user_email" placeholder="Your Name">
											<label for="name">연락처<span class="check_check font_red">*필수입력사항 입니다.</span></label>
										</div>
									</div><br>
									<div class="col-12">
										<div class="form-floating">
											<input type="email" class="form-control" id="coin_user_email" name="coin_user_email" placeholder="Your Name">
											<label for="name">Email<span class="check_check font_red">*필수입력사항 입니다.</span></label>
										</div>
									</div><br>
									<div class="col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" id="message" placeholder="상세내용" style="height: 150px"></textarea>
                                            <label for="message">상세내용<span class="check_check font_red">*필수입력사항 입니다.</span></label>
                                        </div>
                                    </div><br>
								</div>
							</form>
						</div>
					</div>
				</div>
        	</div>
        	<div class="modal-footer">
          		<button type="button" class="btn btn-primary w-100 py-3">
          			<a style="color:#fff;" href="#myModal3" data-toggle="modal" data-dismiss="modal" onclick="request2(); return false;">견적요청하기</a>
          		</button>
        	</div>
      	</div>
    </div>
  	</div>
  	<!-- Modal-2 end... -->
  	
  	<!-- Modal-2 start... -->
	<div class="modal" id="myModal3" role="modal-dialog" data-backdrop="static">
    	<div class="modal-dialog">
      		<!-- Modal content-->
      		<div class="modal-content">
        		<div class="modal-header text-center">
          			<h4 class="modal-title">견적요청이 완료되었습니다!</h4>
          			<button type="button" class="close btn btn-default" data-dismiss="modal">X</button>
        		</div>
        	<div class="modal-body">
          		<div class="row justify-content-center">
					<div class="col-lg-12">
						<div class="wow fadeInUp" data-wow-delay="0.3s">
							<p>고객님의 문의 내용을 바탕으로 빠른 시일내에 상담원이 연락을 드리도록 하겠습니다.
								이용해주셔서 감사합니다.</p>
						</div>
					</div>
				</div>
        	</div>
        	<div class="modal-footer">
          		<button type="button" class="btn btn-primary w-100 py-3" data-dismiss="modal" onclick="request3(); return false;">완료</button>
        	</div>
      	</div>
    </div>
  	</div>
	<!-- Modal-3 start... -->
	
	
	<!-- JS -->
	<script src="js/modal_action.js"></script>

</body>
</html>