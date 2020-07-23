<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE html>
<html dir="ltr" lang="ko">
 <%@include file="header.jsp" %>

<body class="stretched">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4ebe4b5dd8c56619a4b9036bc01619aa&libraries=services,clusterer,drawing"></script>
    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

       

        <!-- Page Title
        ============================================= -->
        <section id="page-title" class="page-title-dark">

            <div class="container clearfix">
                <h1>StarTrip이 추천하는 Package 여행!</h1>
                <span>숙박! 음식! 액티비티!</span>
             
            </div>

        </section><!-- #page-title end -->

        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap">

                <div id="events" class="single-event header-stick footer-stick clearfix">
<!-- 패키지 1번  -->
                    <div class="event entry-image parallax nobottommargin" style="background-image: url('http://placehold.it/2000x1333'); height:600px" data-stellar-background-ratio="0.3">
                        <div class="entry-overlay-meta">
                            <h2><a href="goHotelDetail?num=2">[제주 신라호텔][연돈+플라잉+제주 신라호텔]</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>일정 : </strong> 1박 2일</li>
                                <li><i class="icon-time"></i> <strong>총 이동 시간 : </strong> 12:00 ~ 20:00</li>
                                <li><i class="icon-map-marker2"></i> <strong>위치 : </strong> 제주도 서귀포시</li>
                                <li><i class="icon-dollar"></i> <strong>예상 경비 : </strong> 157,850원</li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown1" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate1 = new Date(2020, 06, 25);
                                $('#event-countdown1').countdown({until: eventStartDate1});
                            });
                            
                        </script>
                    </div>
                    <form style="margin: 0 auto;" action="" method="get">
		  			<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>제주도 패키지 1번</h3>
                            	<span>패키지 어쩌구 저쩌구 샬랴샬랴</span>                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>위치 모아보기</h3>
                            	<br>
                            	     <!-- 지도 start -->
  								<div id="map1" style="width: 1180px; height: 400px; margin: 0 auto;"></div>
    <script>
		var container = document.getElementById('map1');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 7
		};

		var map = new kakao.maps.Map(container, options); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
		    {
		        title: '카카오', 
		        latlng: new kakao.maps.LatLng(33.450705, 126.570677)
		    },
		    {
		        title: '생태연못', 
		        latlng: new kakao.maps.LatLng(33.450936, 126.569477)
		    },
		    {
		        title: '텃밭', 
		        latlng: new kakao.maps.LatLng(33.450879, 126.569940)
		    },
		    {
		        title: '근린공원',
		        latlng: new kakao.maps.LatLng(33.451393, 126.570738)
		    }
		];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i=0; i<positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		}
	</script>

 								<!-- 지도 end -->            
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>가능 방법</h3>
                            	<span>패키지 어쩌구 저쩌구 샬라샬랴</span>                       
                            </div>
                    	</div>
           	  		</div> 
           	  		</form>
<!-- 패키지 2번  -->           	  		
                     <div class="event entry-image parallax overlay-left nobottommargin" style="background-image: url('http://placehold.it/2000x1333'); height:600px" data-stellar-background-ratio="0.3">
                        <div class="entry-overlay-meta">
                            <h2><a href="#">Coffee &amp; Tea Festival</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>Date:</strong> 11th July, 2015</li>
                                <li><i class="icon-time"></i> <strong>Timing:</strong> 2pm - 4pm</li>
                                <li><i class="icon-map-marker2"></i> <strong>Location:</strong> New York, NY</li>
                                <li><i class="icon-dollar"></i> <strong>29.00</strong></li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown2" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate2 = new Date(2020, 06, 25);
                                $('#event-countdown2').countdown({until: eventStartDate2});
                            });
                        </script>
                    </div>
                    
		  			<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>제주도 패키지 1번</h3>
                            	<span>패키지 어쩌구 저쩌구 샬랴샬랴</span>                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>위치 모아보기</h3>
                            	<!-- 지도 start -->
  								<div id="map2" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
 								<!-- 지도 end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>가능 방법</h3>
                            	<span>패키지 어쩌구 저쩌구 샬라샬랴</span>                       
                            </div>
                    	</div>
           	  		</div>   
           	  		  
<!-- 패키지 3번  -->
                    <div class="event entry-image parallax nobottommargin" style="background-image: url('http://placehold.it/2000x1333'); height:600px" data-stellar-background-ratio="0.3">
                        <div class="entry-overlay-meta">
                            <h2><a href="#">Just Food Conference</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>Date:</strong> 28th July, 2015</li>
                                <li><i class="icon-time"></i> <strong>Timing:</strong> 2pm - 4pm</li>
                                <li><i class="icon-map-marker2"></i> <strong>Location:</strong> New York, NY</li>
                                <li><i class="icon-dollar"></i> <strong>29.00</strong></li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown3" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate3 = new Date(2020, 06, 25);
                                $('#event-countdown3').countdown({until: eventStartDate3});
                            });
                        </script>
                    </div>
                    
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>제주도 패키지 1번</h3>
                            	<span>패키지 어쩌구 저쩌구 샬랴샬랴</span>                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>위치 모아보기</h3>
                            	<!-- 지도 start -->
  								<div id="map3" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
 								<!-- 지도 end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>가능 방법</h3>
                            	<span>패키지 어쩌구 저쩌구 샬라샬랴</span>                       
                            </div>
                    	</div>
           	  		</div>                  
<!-- 패키지 4번  -->
                    <div class="event entry-image parallax overlay-left nobottommargin" style="background-image: url('http://placehold.it/2000x1333'); height:600px" data-stellar-background-ratio="0.3">
                        <div class="entry-overlay-meta">
                            <h2><a href="#">Coffee &amp; Tea Festival</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>Date:</strong> 11th July, 2015</li>
                                <li><i class="icon-time"></i> <strong>Timing:</strong> 2pm - 4pm</li>
                                <li><i class="icon-map-marker2"></i> <strong>Location:</strong> New York, NY</li>
                                <li><i class="icon-dollar"></i> <strong>29.00</strong></li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown4" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate4 = new Date(2020, 06, 25);
                                $('#event-countdown4').countdown({until: eventStartDate4});
                            });
                        </script>
                    </div>
                    
		  			<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>제주도 패키지 1번</h3>
                            	<span>패키지 어쩌구 저쩌구 샬랴샬랴</span>                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>위치 모아보기</h3>
                            	<!-- 지도 start -->
  								<div id="map4" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
 								<!-- 지도 end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>가능 방법</h3>
                            	<span>패키지 어쩌구 저쩌구 샬라샬랴</span>                       
                            </div>
                    	</div>
           	  		</div> 
<!-- 패키지 5번  -->          	  		              
						<div class="event entry-image parallax nobottommargin" style="background-image: url('http://placehold.it/2000x1333'); height:600px" data-stellar-background-ratio="0.3">
                        <div class="entry-overlay-meta">
                            <h2><a href="#">Just Food Conference</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>Date:</strong> 28th July, 2015</li>
                                <li><i class="icon-time"></i> <strong>Timing:</strong> 2pm - 4pm</li>
                                <li><i class="icon-map-marker2"></i> <strong>Location:</strong> New York, NY</li>
                                <li><i class="icon-dollar"></i> <strong>29.00</strong></li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown5" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate5 = new Date(2020, 06, 25);
                                $('#event-countdown5').countdown({until: eventStartDate5});
                            });
                        </script>
                    </div>
                    
		  			<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>제주도 패키지 1번</h3>
                            	<span>패키지 어쩌구 저쩌구 샬랴샬랴</span>                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>위치 모아보기</h3>
                            	<!-- 지도 start -->
  								<div id="map5" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
 								<!-- 지도 end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>가능 방법</h3>
                            	<span>패키지 어쩌구 저쩌구 샬라샬랴</span>                       
                            </div>
                    	</div>
           	  		</div>              

                </div>

            </div>

        </section><!-- #content end -->

      

    </div><!-- #wrapper end -->

    <!-- Go To Top
    ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- Footer Scripts
    ============================================= -->
    <script type="text/javascript" src="resources/js/functions.js"></script>
	
</body>

</html>
<%@include file="../footer.jsp"%>

