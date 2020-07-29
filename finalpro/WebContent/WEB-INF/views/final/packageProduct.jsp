<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE html>
<html dir="ltr" lang="ko">
 <%@include file="../header.jsp" %>

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
                            <h2><a href="goHotelDetail?num=2">[${infoodvo.title }+${inactvo.title }+${inhotelvo.title}]</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-map-marker2"></i> <strong>${infoodvo.title } : </strong>${infoodvo.address}</li>
                                <li><i class="icon-map-marker2"></i> <strong>${inactvo.title } : </strong>${inactvo.address}</li>
                                <li><i class="icon-map-marker2"></i> <strong>${inhotelvo.title} : </strong>${inhotelvo.address}</li>
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
                    
		  			<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>제주도 패키지 1번</h3>
                            	<br>

                     <div class="row">
                           <div class="col-xs-6 col-sm-4" id="faq-1">
                              <h3>${infoodvo.title }</h3>
                              <ul>
                                 <li>Tel) ${infoodvo.tel }</li>
                                 <li>Addr) ${infoodvo.address }</li>
                              </ul>
                           </div>
                           <div class="col-xs-6 col-sm-4">
                              <h3>${inactvo.title }</h3>
                              <ul>
                                 <li>Tel) ${inactvo.tel}</li>
                                 <li>Addr) ${inactvo.address}</li>
                              </ul>

                           </div>

                           <div class="col-xs-6 col-sm-4">
                              <h3>${inhotelvo.title}</h3>
                              <ul>
                                 <li>Tel) ${inhotelvo.tel}</li>
                                 <li>Addr) ${inhotelvo.address}</li>
                              </ul>
                           </div>


                        </div>
                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>위치 모아보기</h3><br>
                            	<!-- 지도 start -->
  								<div id="map1" style="width: 1100px; height: 400px;"></div>
  								
 								<!-- 지도 end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<!-- Container (Pricing Section) -->
<div id="pricing" class="container-fluid">
  <div class="text-center">
    <h2>경로 찾아보기</h2>
    <h4>출발지에 따라 경로를 계산해 드립니다!</h4>
  </div>
  <div class="row slideanim">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">

          <h1>${inactvo.title }</h1>
        </div>
        <div class="panel-body">

          <div style="width: 377px; height: 300px;"><img src="${inactvo.img}" style="width: 100%; height: 100%;"></div>
          
        </div>
        <div class="panel-footer">
 
          <button class="btn btn-lg btn btn-warning">경로 찾기</button>
          
        </div>
      </div>      
    </div>     
    
    
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>${infoodvo.title }</h1>
        </div>
        <div class="panel-body">

          <div style="width: 377px; height: 300px;"><img src="${infoodvo.img}" style="width: 100%; height: 100%;"></div>
          
        </div>
        <div class="panel-footer">
       
          <button class="btn btn-lg btn btn-warning">경로 찾기</button>
          
        </div>
      </div>      
    </div>    
    
       
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>${inhotelvo.title}</h1>
        </div>
        <div class="panel-body">

          <div style="width: 377px; height: 300px;"><img src="${inhotelvo.img}" style="width: 100%; height: 100%;"></div>
          
        </div>
        <div class="panel-footer">

          <button class="btn btn-lg btn btn-warning">경로 찾기</button>
        </div>
      </div>      
    </div>    
  </div>
</div>
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
  								<div id="map" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
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
  								<div id="map" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
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
  								<div id="map" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
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
  								<div id="map" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
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
<script>
var mapContainer = document.getElementById('map1'), // 지도를 표시할 div  
mapOption = { 
    center: new kakao.maps.LatLng(${infoodvo.mapy}, ${infoodvo.mapx}), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커를 표시할 위치와 title 객체 배열입니다 
var positions = [
{
    title: '을왕리 해수욕장', 
    latlng: new kakao.maps.LatLng(${inactvo.mapy}, ${inactvo.mapx})
},
{
    title: '솔밭회조개구이', 
    latlng: new kakao.maps.LatLng(${infoodvo.mapy}, ${infoodvo.mapx})
},
{
    title: '그랜드 하얏트 인천', 
    latlng: new kakao.maps.LatLng(${inhotelvo.mapy}, ${inhotelvo.mapx})
}
];

//마커 이미지의 이미지 주소입니다
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 

for (var i = 0; i < positions.length; i ++) {

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
    <!-- Go To Top
    ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- Footer Scripts
    ============================================= -->
    <script type="text/javascript" src="resources/js/functions.js"></script>
	
</body>

</html>
<%@include file="../footer.jsp"%>

