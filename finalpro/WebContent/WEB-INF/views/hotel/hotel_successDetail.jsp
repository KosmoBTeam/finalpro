<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    <!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp" %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

      <!-- #header end -->

        <!-- Page Title
        ============================================= -->
        <section id="page-title" class="page-title-parallax" style="background-image: url(&quot;resources/images/survey/surveymain.png&quot;); padding: 120px 0;" data-stellar-background-ratio="0.3">

            <div class="container clearfix">
                <h1>호텔 예약 확인</h1>
                
                <ol class="breadcrumb">
                    <li><a href="main">Home</a></li>
                    <li><a href="goHotelMain">호텔 메인</a></li>
                </ol>
            </div>

        </section><!-- #page-title end -->

        <!-- Contact Form & Map Overlay Section
        ============================================= -->
        <section id="map-overlay">

            <div class="container clearfix">

                <!-- Contact Form Overlay
                ============================================= -->
                <div id="contact-form-overlay" class="clearfix bgcolor-grey" style="width: 85%">

                    <div class="fancy-title title-dotted-border">
                        
                    </div>
               
                    <div></div>

                    <!-- Contact Form
                    ============================================= -->
                    
                    
                    <!-- 예약 정보 출력 -->
                    <form class="form-horizontal"  style="margin: 0 auto;" action="goHotelSuccess" method="get">   
                    <c:forEach items="${list}" var="list">        
               <h1 style="font-size: 30px;">예약 확인하기</h1>
                  <div class="section nobg notopmargin noborder nobottommargin">
                        <div >
                            <img src="resources/images/hotel/${list.img}" alt="" data-animate="fadeInUp">  
                            <div class="divider"><i class="icon-circle"></i></div>
                            <input type="hidden" value="${list.num }" name="num">                      
                        </div>
                       <table class="table table-hover" style="font-size: 20px ">

    <thead>
      <tr>
        <th>아이디</th>
        <th>이름</th>
        <th>전화번호</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${sessionScope['id']}</td>
        <td>${sessionScope['name']}</td>
        <td>${sessionScope['phone']}</td>
        </tr>
    </tbody>
    
    <thead>
      <tr>
        <th>호텔명</th>
        <th>객실 종류</th>
        <th>가격</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${list.honame }</td>
        <td>${list.roomtype }</td>
        <td>${list.pay }</td>
        </tr>
    </tbody>
    
    <thead>
      <tr>
        <th>체크인 날짜</th>
        <th>체크아웃 날짜</th>
        <th>인원수</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${list.checkin }</td>
        <td>${list.checkout }</td>
        <td>${list.people }명</td>
        </tr>
    </tbody>
     
    
    

  </table>
  <div class="divider"><i class="icon-circle"></i></div>
  <!-- 지도 start -->
  <div id="map" style="width: 760px; height: 400px;"></div>
 
    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4ebe4b5dd8c56619a4b9036bc01619aa&libraries=services"></script>
    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = {
            center : new daum.maps.LatLng(33.247418, 126.408039), // 지도의 중심좌표
            level : 5
        // 지도의 확대 레벨
        };
 
        // 지도를 생성합니다    
        var map = new daum.maps.Map(mapContainer, mapOption);
 
        // 주소-좌표 변환 객체를 생성합니다
        var geocoder = new daum.maps.services.Geocoder();
 
        var myAddress = [
                "제주 서귀포시 중문관광로72번길 75", "제주 서귀포시 중문관광로72번길 35 롯데호텔 제주", "제주 서귀포시 색달로 18" ];
 
        function myMarker(address) {
            // 주소로 좌표를 검색합니다
            geocoder
                    .addressSearch(
                            //'주소',
                            address,
                            function(result, status) {
                                // 정상적으로 검색이 완료됐으면 
                                if (status === daum.maps.services.Status.OK) {
 
                                    var coords = new daum.maps.LatLng(
                                            result[0].y, result[0].x);
 
                                    // 결과값으로 받은 위치를 마커로 표시합니다
                                   
                                    var marker = new daum.maps.Marker({
                                        map : map,
                                        position : coords
                                    });
                                     
 
                                    // 인포윈도우로 장소에 대한 설명을 표시합니다
                                   
                                   // var infowindow = new daum.maps.InfoWindow(
                                           // {
                                                // content : '<div style="width:50px;text-align:center;padding:3px 0;">I</div>'
                                               // content : '<div style="color:red;">' + number + '</div>'
                                           // });
                                    //infowindow.open(map, marker);
                                       
 
                                    // 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                                   //var content = '<div class="customoverlay">'
                                            //+ '    <span class="title">'
                                            //+ '<div style="font-style:normal; color:red; font-weight:bold; font-size:2.0em">'
                                            //+ number + '</div>' + '</span>'
                                            //+ '</div>';
 
                                    // 커스텀 오버레이가 표시될 위치입니다 
                                    var position = new daum.maps.LatLng(
                                            result[0].y, result[0].x);
 
                                    // 커스텀 오버레이를 생성합니다
                                    var customOverlay = new daum.maps.CustomOverlay(
                                            {
                                                map : map,
                                                position : position,
                                                content : content,
                                                yAnchor : 1
                                            });
 
                                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                                    map.setCenter(coords);
                                }
                            });
        }
 
        for (i = 0; i < myAddress.length; i++) {
            myMarker(myAddress[i]);
        }
    </script>
  
  <!-- 지도 end -->
  <div class="divider"><i class="icon-circle"></i></div>
  <div>
      <div style="width: 50%;float: left; margin: 0 auto;">
      <button type="button"
onclick="location.href='deleteReserve?id=${sessionScope['id']}&hrnum=${list.hrnum }'"
class="button button-medium button-reveal button-3d button-rounded tright nomargin"
style="color: black; text-align: center;">
<span>취소하기</span> <i class="icon-angle-right"></i>
                  </button>
<button type="button"
onclick="location.href='goHotelDetail?num=${list.num }'"
class="button button-medium button-reveal button-3d button-rounded tright nomargin"
style="color: black; text-align: center;">
<span>상세 페이지</span> <i class="icon-angle-right"></i>
                  </button>
      
      </div>
      <div style=""></div>
      </div>
                     </div>                       
               </c:forEach>   
                    </form>
                    <!-- 예약 정보 출력 끝 -->
                    <div class="line"></div>

                    <!-- Contact Info
                    ============================================= -->
                    <div class="col_one_third nobottommargin notopmargin">
                       
             
                        <strong>Ps)</strong>문의 사항이 있으시면 챗봇으로 문의해주세요<br>
                    </div><!-- Contact Info End -->

                    
                </div><!-- Contact Form Overlay End -->

            </div>

           
        </section><!-- Contact Form & Map Overlay Section End -->
        
                

        

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