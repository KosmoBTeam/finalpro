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
                <h1>StarTrip�� ��õ�ϴ� Package ����!</h1>
                <span>����! ����! ��Ƽ��Ƽ!</span>
             
            </div>

        </section><!-- #page-title end -->

        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap">

                <div id="events" class="single-event header-stick footer-stick clearfix">
<!-- ��Ű�� 1��  -->
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
                            	<h3>���ֵ� ��Ű�� 1��</h3>
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
                            	<h3>��ġ ��ƺ���</h3><br>
                            	<!-- ���� start -->
  								<div id="map1" style="width: 1100px; height: 400px;"></div>
  								
 								<!-- ���� end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<!-- Container (Pricing Section) -->
<div id="pricing" class="container-fluid">
  <div class="text-center">
    <h2>��� ã�ƺ���</h2>
    <h4>������� ���� ��θ� ����� �帳�ϴ�!</h4>
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
 
          <button class="btn btn-lg btn btn-warning">��� ã��</button>
          
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
       
          <button class="btn btn-lg btn btn-warning">��� ã��</button>
          
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

          <button class="btn btn-lg btn btn-warning">��� ã��</button>
        </div>
      </div>      
    </div>    
  </div>
</div>
<!-- ��Ű�� 2��  -->           	  		
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
                            	<h3>���ֵ� ��Ű�� 1��</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ��������</span>                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>��ġ ��ƺ���</h3>
                            	<!-- ���� start -->
  								<div id="map" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
 								<!-- ���� end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>���� ���</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ���󼣷�</span>                       
                            </div>
                    	</div>
           	  		</div>     
<!-- ��Ű�� 3��  -->
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
                            	<h3>���ֵ� ��Ű�� 1��</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ��������</span>                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>��ġ ��ƺ���</h3>
                            	<!-- ���� start -->
  								<div id="map" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
 								<!-- ���� end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>���� ���</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ���󼣷�</span>                       
                            </div>
                    	</div>
           	  		</div>                  
<!-- ��Ű�� 4��  -->
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
                            	<h3>���ֵ� ��Ű�� 1��</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ��������</span>                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>��ġ ��ƺ���</h3>
                            	<!-- ���� start -->
  								<div id="map" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
 								<!-- ���� end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>���� ���</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ���󼣷�</span>                       
                            </div>
                    	</div>
           	  		</div> 
<!-- ��Ű�� 5��  -->          	  		              
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
                            	<h3>���ֵ� ��Ű�� 1��</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ��������</span>                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>��ġ ��ƺ���</h3>
                            	<!-- ���� start -->
  								<div id="map" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
 								<!-- ���� end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>���� ���</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ���󼣷�</span>                       
                            </div>
                    	</div>
           	  		</div>              

                </div>

            </div>

        </section><!-- #content end -->

      

    </div><!-- #wrapper end -->
<script>
var mapContainer = document.getElementById('map1'), // ������ ǥ���� div  
mapOption = { 
    center: new kakao.maps.LatLng(${infoodvo.mapy}, ${infoodvo.mapx}), // ������ �߽���ǥ
    level: 3 // ������ Ȯ�� ����
};

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

//��Ŀ�� ǥ���� ��ġ�� title ��ü �迭�Դϴ� 
var positions = [
{
    title: '���ո� �ؼ�����', 
    latlng: new kakao.maps.LatLng(${inactvo.mapy}, ${inactvo.mapx})
},
{
    title: '�ֹ�ȸ��������', 
    latlng: new kakao.maps.LatLng(${infoodvo.mapy}, ${infoodvo.mapx})
},
{
    title: '�׷��� �Ͼ�Ʈ ��õ', 
    latlng: new kakao.maps.LatLng(${inhotelvo.mapy}, ${inhotelvo.mapx})
}
];

//��Ŀ �̹����� �̹��� �ּ��Դϴ�
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 

for (var i = 0; i < positions.length; i ++) {

// ��Ŀ �̹����� �̹��� ũ�� �Դϴ�
var imageSize = new kakao.maps.Size(24, 35); 

// ��Ŀ �̹����� �����մϴ�    
var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 

// ��Ŀ�� �����մϴ�
var marker = new kakao.maps.Marker({
    map: map, // ��Ŀ�� ǥ���� ����
    position: positions[i].latlng, // ��Ŀ�� ǥ���� ��ġ
    title : positions[i].title, // ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ�
    image : markerImage // ��Ŀ �̹��� 
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

