<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp"%>
<!-- #header end -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4ebe4b5dd8c56619a4b9036bc01619aa&libraries=services,clusterer,drawing"></script>
<body class="stretched">

	<!-- Document Wrapper
    ============================================= -->
	<div id="wrapper" class="clearfix">



		<!-- Page Title
        ============================================= -->
			<section id="page-title" class="page-title-parallax page-title-dark"
			style="background-image: url('resources/images/main/gps.jpg'); padding: 120px 0; margin: 0 auto;"
			data-stellar-background-ratio="0.3">

			<div class="container clearfix">
				<h1 style="color:#3b2e5a">GPS Service</h1>
				<span style="color: #ffffff">주변 검색 서비스</span>
			</div>

		</section>
		<!-- end -->

		<!-- Content
        ============================================= -->
		<section id="content">

			<div class="content-wrap bgcolor-grey-light">

				<div class="container clearfix">
				
					<!-- 위치 검색 폼 start -->
				
				<form class="form-inline">
  					<div class="form-group">
    					<label for="exampleInputName2">검색 할 위치: </label> &nbsp;
    					<input type="text" class="form-control" id="keyword" placeholder="ex)가산동 맛집, 가산동 호텔" style="width: 300px;">
  					</div>
  					<button type="button" class="btn btn-primary" id="search">검색 하기</button>
				</form>
				
					<!-- 위치 검색 폼 end -->
				
					<!-- 지도 start -->
					<div id="map" style="width: 1180px; height: 700px; margin: 0 auto;"></div>					
					
					<script>
					//키워드 변수 지정
					window.onload = function() { document.getElementById('search').onclick = function() { 
						var keyword = document.getElementById('keyword').value;
						
						// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
						var infowindow = new kakao.maps.InfoWindow({zIndex:1});
						
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					    	mapOption = { 
					        center: new kakao.maps.LatLng(37.478684, 126.878646), // 지도의 중심좌표
					        level: 5 // 지도의 확대 레벨
					    };  

					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

					// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	    	    	var mapTypeControl = new kakao.maps.MapTypeControl();

	    	    	// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	    	    	// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	    	    	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

	    	    	// 지도 확대 축소를 제어할 수 있는 줌 컨트롤을 생성합니다
	    	    	var zoomControl = new kakao.maps.ZoomControl();
	    	    	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
					
	    	    	// 장소 검색 객체를 생성합니다
	    	    	var ps = new kakao.maps.services.Places(); 

	    	    	// 키워드로 장소를 검색합니다
	    	    	ps.keywordSearch(keyword, placesSearchCB); 

	    	    	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	    	    	function placesSearchCB (data, status, pagination) {
	    	    	    if (status === kakao.maps.services.Status.OK) {

	    	    	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	    	    	        // LatLngBounds 객체에 좌표를 추가합니다
	    	    	        var bounds = new kakao.maps.LatLngBounds();

	    	    	        for (var i=0; i<data.length; i++) {
	    	    	            displayMarker(data[i]);    
	    	    	            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
	    	    	        }       

	    	    	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	    	    	        map.setBounds(bounds);
	    	    	    } 
	    	    	}

	    	    	// 지도에 마커를 표시하는 함수입니다
	    	    	function displayMarker(place) {
	    	    	    
	    	    	    // 마커를 생성하고 지도에 표시합니다
	    	    	    var marker = new kakao.maps.Marker({
	    	    	        map: map,
	    	    	        position: new kakao.maps.LatLng(place.y, place.x) 
	    	    	    });

	    	    	    // 마커에 클릭이벤트를 등록합니다
	    	    	    kakao.maps.event.addListener(marker, 'click', function() {
	    	    	        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
	    	    	        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
	    	    	        infowindow.open(map, marker);
	    	    	    });
	    	    	}
						
						} 
					};
					
					// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
					var infowindow = new kakao.maps.InfoWindow({zIndex:1});
					
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    	mapOption = { 
				        center: new kakao.maps.LatLng(37.478684, 126.878646), // 지도의 중심좌표
				        level: 5 // 지도의 확대 레벨
				    };  

				var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

				// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
    	    	var mapTypeControl = new kakao.maps.MapTypeControl();

    	    	// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
    	    	// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
    	    	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

    	    	// 지도 확대 축소를 제어할 수 있는 줌 컨트롤을 생성합니다
    	    	var zoomControl = new kakao.maps.ZoomControl();
    	    	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
				
    	    	// 장소 검색 객체를 생성합니다
    	    	var ps = new kakao.maps.services.Places(); 

    	    	// 키워드로 장소를 검색합니다
    	    	ps.keywordSearch(keyword, placesSearchCB); 

    	    	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
    	    	function placesSearchCB (data, status, pagination) {
    	    	    if (status === kakao.maps.services.Status.OK) {

    	    	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
    	    	        // LatLngBounds 객체에 좌표를 추가합니다
    	    	        var bounds = new kakao.maps.LatLngBounds();

    	    	        for (var i=0; i<data.length; i++) {
    	    	            displayMarker(data[i]);    
    	    	            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
    	    	        }       

    	    	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    	    	        map.setBounds(bounds);
    	    	    } 
    	    	}

    	    	// 지도에 마커를 표시하는 함수입니다
    	    	function displayMarker(place) {
    	    	    
    	    	    // 마커를 생성하고 지도에 표시합니다
    	    	    var marker = new kakao.maps.Marker({
    	    	        map: map,
    	    	        position: new kakao.maps.LatLng(place.y, place.x) 
    	    	    });

    	    	    // 마커에 클릭이벤트를 등록합니다
    	    	    kakao.maps.event.addListener(marker, 'click', function() {
    	    	        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
    	    	        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
    	    	        infowindow.open(map, marker);
    	    	    });
    	    	}
					</script>
					<!-- 지도 end -->


				</div>

			</div>

		</section>
		<!-- #content end -->

		<!-- Footer
        ============================================= -->


	</div>
	<!-- #wrapper end -->

	<!-- Go To Top
    ============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- Footer Scripts
    ============================================= -->
	<script type="text/javascript" src="resources/js/functions.js"></script>

</body>
</html>
<%@include file="../footer.jsp"%>