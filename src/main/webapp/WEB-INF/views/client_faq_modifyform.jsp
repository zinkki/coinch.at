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
     
     		<div class="container-xxl py-5">
    		<div class="container py-5 px-lg-5">
    		
    		<div class="row g-5 py-5">
               <div class="col-12 text-center">
                 <h1 class="animated slideInDown">뉴스 수정</h1>
               </div>
            </div>
    		
				<form name="form" id="form" method="post"
					enctype="multipart/form-data">
					<input type="hidden" value="${dto.board_seq }" id="board_seq" name="board_seq">
					<input type="text" class="form-control" id="board_title"
						name="board_title" value="${dto.board_title }" placeholder="FAQ 제목">

					<div class="btn-toolbar editor" data-role="editor-toolbar"
						data-target="#editor-one">
						<div class="btn dropdown">
							<a href="/intro" class=" dropdown-toggle"
								data-bs-toggle="dropdown" title="Font Size"><i
								class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
							<div class="dropdown-menu m-0">
								<a data-edit="fontSize 5" class="dropdown-item"><p style="font-size: 18px; color: #222;">Huge</p></a> 
								<a data-edit="fontSize 3" class="dropdown-item"><p style="font-size: 15px; color: #222;">Normal</p></a> 
								<a data-edit="fontSize 1" class="dropdown-item"><p style="font-size: 10px; color: #222;">Small</p></a>
							</div>
						</div>
						<div class="btn-group">
							<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i
								class="fa fa-bold"></i></a> <a class="btn" data-edit="italic"
								title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a> <a
								class="btn" data-edit="strikethrough" title="Strikethrough"><i
								class="fa fa-strikethrough"></i></a> <a class="btn"
								data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i
								class="fa fa-underline"></i></a>
						</div>

						<div class="btn-group">
							<a class="btn" data-edit="justifyleft"
								title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
							<a class="btn" data-edit="justifycenter"
								title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
							<a class="btn" data-edit="justifyright"
								title="Align Right (Ctrl/Cmd+R)"><i
								class="fa fa-align-right"></i></a>
						</div>

						<div class="btn-group">
							<input type="file" name="image" id="image" class="files"
								data-role="magic-overlay" data-edit="insertImage" />
						</div>
					</div>

					<div id="editor-one" style="width:100%; height:auto; background-color: #f5f5f5;" class="editor-wrapper">${dto.board_content }</div>
					
					<!-- <div class="form-group" id="file-list">
						<a type="button" onclick="addFile()">첨부파일(클릭시 첨부파일추가)</a>
						<div class="file-group">
							<input type="file" name="file" id="file"><a href='#this'
								name='file-delete'>삭제</a>
						</div>
					</div> -->

					<div class="text-center">
						<button style="margin-top: 10px;" type="button"
							class="btn-primary" onclick="modify(); return false;">수정</button>
						<button style="margin-top: 10px;" type="button"
							class="btn-primary" onclick="goback(); return false;">취소</button>
					</div>
				</form>
			</div>
    	</div>
		
		<!-- javascript... -->
    	<script src="resources/vendors/jquery/dist/jquery.min.js"></script>
    	<script src="resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    	<script src="resources/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    	<script src="resources/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    	<script src="resources/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    	<script src="resources/vendors/starrr/dist/starrr.js"></script>
    	<script src="resources/build/js/custom.min.js"></script>
    	
		<!-- Footer-->
     	<jsp:include page="coin_footer.jsp"></jsp:include>
     	
     	<!-- Ajax -->
     	<script src="js/board_faq_modify.js"></script>
	</div>
</body>
</html>