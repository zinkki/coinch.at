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
		
		
		<!-- About Start -->
        <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
				<div class="wow fadeInUp" data-wow-delay="0.1s">
					<h1 class="text-center mb-5"><br><br><spring:message code="map.title" text="default text"/></h1>
				</div>
            </div>
            
            <div class="row">
            	<div class="mapmapmap col-lg-8 col-md-11 col-sm-11 col-xs-10" id="map"></div>
            	<div class="wow fadeInUp col-lg-3 col-md-11 col-sm-11 col-xs-10 mapmapmap2" data-wow-delay="0.1s">
            		<div class="skill">
                       <div class="d-flex">
                           <i class="fa fa-map-pin fa-2x text-dark mb-4"></i>&nbsp;&nbsp;&nbsp;
                           <p class="font_thick_nor"><spring:message code="body6.part1" text="default text"/></p>
                       </div>
                 	   <p class="text-dark"><spring:message code="body6.content1" text="default text"/></p>
                     </div>
                     <div class="skill">
                       <div class="d-flex">
                           <i class="fa fa-phone fa-2x text-dark mb-4"></i>&nbsp;&nbsp;&nbsp;
                           <p class="font_thick_nor"><spring:message code="body6.part2" text="default text"/></p>
                       </div>
                       <p class="text-dark"><spring:message code="body6.content2" text="default text"/></p>
                     </div>
                     <div class="skill">
                       <div class="d-flex">
                           <i class="fa fa-envelope fa-2x text-dark mb-4"></i>&nbsp;&nbsp;&nbsp;
                           <p class="font_thick_nor"><spring:message code="body6.part3" text="default text"/></p>
                       </div>
                       <p class="text-dark"><spring:message code="body6.content3" text="default text"/></p>
                     </div>
            	</div>
        	</div>
        </div>
        <!-- About End -->
        
        <!-- MAP END -->
        
		<!-- Project details-->
		<script type="text/javascript" 
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=804c5cbbeb3d0a25f0221585763cb0dd"></script>
		<script>
			var container1 = document.getElementById('map');
			var options = {
				center : new kakao.maps.LatLng(
						37.25909513587063, 127.05906421429809),
				level : 2
						};

			var map = new kakao.maps.Map(container1, options);
			var markerPosition = new kakao.maps.LatLng(
					37.25909513587063, 127.05906421429809);

			var marker = new kakao.maps.Marker({
				position : markerPosition
						});
							
			var iwContent = '<div style="width:80px; height:28px; margin-bottom:2px;"><a href="https://map.kakao.com/link/map/코인챗,37.25909513587063, 127.05906421429809" style="color:#222;" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;코인챗</a></div>', 
				iwPosition = new kakao.maps.LatLng(37.25909513587063, 127.05906421429809); //인포윈도우 표시 위치입니다

			// 인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
				position : iwPosition, 
				content : iwContent 
					});
							
			infowindow.open(map, marker);
						    
			marker.setMap(map);
		</script>
		
		
        
		

        <!-- Footer-->
        <jsp:include page="coin_footer.jsp"></jsp:include>
    </div>
    
    <a href="/map?lang=ko" class="btn btn-lg btn-primary_1 btn-lg-square lang_kr">kor</a>
	<a href="/map?lang=en" class="btn btn-lg btn-primary_1 btn-lg-square lang_eng">eng</a>
    
</body>
</html>