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
				<span style="color: #ffffff">�ֺ� �˻� ����</span>
			</div>

		</section>
		<!-- end -->

		<!-- Content
        ============================================= -->
		<section id="content">

			<div class="content-wrap bgcolor-grey-light">

				<div class="container clearfix">
				
					<!-- ��ġ �˻� �� start -->
				
				<form class="form-inline">
  					<div class="form-group">
    					<label for="exampleInputName2">�˻� �� ��ġ: </label> &nbsp;
    					<input type="text" class="form-control" id="keyword" placeholder="ex)���굿 ����, ���굿 ȣ��" style="width: 300px;">
  					</div>
  					<button type="button" class="btn btn-primary" id="search">�˻� �ϱ�</button>
				</form>
				
					<!-- ��ġ �˻� �� end -->
				
					<!-- ���� start -->
					<div id="map" style="width: 1180px; height: 700px; margin: 0 auto;"></div>					
					
					<script>
					//Ű���� ���� ����
					window.onload = function() { document.getElementById('search').onclick = function() { 
						var keyword = document.getElementById('keyword').value;
						
						// ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ǥ���� ���������� �Դϴ�
						var infowindow = new kakao.maps.InfoWindow({zIndex:1});
						
						var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
					    	mapOption = { 
					        center: new kakao.maps.LatLng(37.478684, 126.878646), // ������ �߽���ǥ
					        level: 5 // ������ Ȯ�� ����
					    };  

					var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

					// �Ϲ� ������ ��ī�̺�� ���� Ÿ���� ��ȯ�� �� �ִ� ����Ÿ�� ��Ʈ���� �����մϴ�
	    	    	var mapTypeControl = new kakao.maps.MapTypeControl();

	    	    	// ������ ��Ʈ���� �߰��ؾ� �������� ǥ�õ˴ϴ�
	    	    	// kakao.maps.ControlPosition�� ��Ʈ���� ǥ�õ� ��ġ�� �����ϴµ� TOPRIGHT�� ������ ���� �ǹ��մϴ�
	    	    	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

	    	    	// ���� Ȯ�� ��Ҹ� ������ �� �ִ� �� ��Ʈ���� �����մϴ�
	    	    	var zoomControl = new kakao.maps.ZoomControl();
	    	    	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
					
	    	    	// ��� �˻� ��ü�� �����մϴ�
	    	    	var ps = new kakao.maps.services.Places(); 

	    	    	// Ű����� ��Ҹ� �˻��մϴ�
	    	    	ps.keywordSearch(keyword, placesSearchCB); 

	    	    	// Ű���� �˻� �Ϸ� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
	    	    	function placesSearchCB (data, status, pagination) {
	    	    	    if (status === kakao.maps.services.Status.OK) {

	    	    	        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
	    	    	        // LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
	    	    	        var bounds = new kakao.maps.LatLngBounds();

	    	    	        for (var i=0; i<data.length; i++) {
	    	    	            displayMarker(data[i]);    
	    	    	            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
	    	    	        }       

	    	    	        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
	    	    	        map.setBounds(bounds);
	    	    	    } 
	    	    	}

	    	    	// ������ ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
	    	    	function displayMarker(place) {
	    	    	    
	    	    	    // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
	    	    	    var marker = new kakao.maps.Marker({
	    	    	        map: map,
	    	    	        position: new kakao.maps.LatLng(place.y, place.x) 
	    	    	    });

	    	    	    // ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
	    	    	    kakao.maps.event.addListener(marker, 'click', function() {
	    	    	        // ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ���������쿡 ǥ��˴ϴ�
	    	    	        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
	    	    	        infowindow.open(map, marker);
	    	    	    });
	    	    	}
						
						} 
					};
					
					// ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ǥ���� ���������� �Դϴ�
					var infowindow = new kakao.maps.InfoWindow({zIndex:1});
					
					var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
				    	mapOption = { 
				        center: new kakao.maps.LatLng(37.478684, 126.878646), // ������ �߽���ǥ
				        level: 5 // ������ Ȯ�� ����
				    };  

				var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

				// �Ϲ� ������ ��ī�̺�� ���� Ÿ���� ��ȯ�� �� �ִ� ����Ÿ�� ��Ʈ���� �����մϴ�
    	    	var mapTypeControl = new kakao.maps.MapTypeControl();

    	    	// ������ ��Ʈ���� �߰��ؾ� �������� ǥ�õ˴ϴ�
    	    	// kakao.maps.ControlPosition�� ��Ʈ���� ǥ�õ� ��ġ�� �����ϴµ� TOPRIGHT�� ������ ���� �ǹ��մϴ�
    	    	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

    	    	// ���� Ȯ�� ��Ҹ� ������ �� �ִ� �� ��Ʈ���� �����մϴ�
    	    	var zoomControl = new kakao.maps.ZoomControl();
    	    	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
				
    	    	// ��� �˻� ��ü�� �����մϴ�
    	    	var ps = new kakao.maps.services.Places(); 

    	    	// Ű����� ��Ҹ� �˻��մϴ�
    	    	ps.keywordSearch(keyword, placesSearchCB); 

    	    	// Ű���� �˻� �Ϸ� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
    	    	function placesSearchCB (data, status, pagination) {
    	    	    if (status === kakao.maps.services.Status.OK) {

    	    	        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
    	    	        // LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
    	    	        var bounds = new kakao.maps.LatLngBounds();

    	    	        for (var i=0; i<data.length; i++) {
    	    	            displayMarker(data[i]);    
    	    	            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
    	    	        }       

    	    	        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
    	    	        map.setBounds(bounds);
    	    	    } 
    	    	}

    	    	// ������ ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
    	    	function displayMarker(place) {
    	    	    
    	    	    // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
    	    	    var marker = new kakao.maps.Marker({
    	    	        map: map,
    	    	        position: new kakao.maps.LatLng(place.y, place.x) 
    	    	    });

    	    	    // ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
    	    	    kakao.maps.event.addListener(marker, 'click', function() {
    	    	        // ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ���������쿡 ǥ��˴ϴ�
    	    	        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
    	    	        infowindow.open(map, marker);
    	    	    });
    	    	}
					</script>
					<!-- ���� end -->


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