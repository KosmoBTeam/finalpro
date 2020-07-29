<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp" %>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4ebe4b5dd8c56619a4b9036bc01619aa&libraries=services,clusterer,drawing"></script>


 
<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">
   
       <!-- #header end -->

        <!-- Page Title
        ============================================= -->
       <section id="page-title" class="page-title-parallax page-title-dark" style="padding: 200px 0; 
        background-image:url('resources/images/hotel/hotelreservemain.jpg'); background-size: cover; 
        background-position: center center;" 
        data-stellar-background-ratio="0.2">

            <div class="container clearfix">
                <h1>호텔 예약하기</h1>
                <span>호텔 예약 </span>
            </div>

        </section><!-- #page-title end -->

        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap bgcolor-grey-light">

                <div class="container clearfix">

                    <div class="postcontent nobottommargin clearfix">
                        <div class="nobottommargin">

                     <!-- Start FAQs -->
                     <div id="faqs" class="faqs">

                            <div id="faqs-list" class="fancy-title title-bottom-border">
                                <h3>예약하기</h3>
                            </div>
                  <!-- 예약 내용 시작 -->
                          <div>
                   <form class="form-horizontal" style="margin: 0 auto;"
                  action="hotelIn" method="post">        
               <div class="container" style="width: 690px">
     
  <table class="table">
    <thead>
      <tr>
        <th>아이디</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td> <input type="text" class="form-control" value="${sessionScope['id']}" id="id" name="id"  placeholder=""></td>
        
        </tr>
    </tbody>
    
    <thead>
      <tr>
        <th>이름</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td> <input type="text" class="form-control"  value="${sessionScope['name']}" id="name" name="name"  placeholder=""
></td>
        </tr>
    </tbody>
    
    <thead>
      <tr>
        <th>전화번호</th>
      </tr>
    </thead>
    <tbody>
      <tr> <td> <input type="text" class="form-control" value="${sessionScope['phone']}" id="phone" name="phone"
                           placeholder=""></td>
      </tr>
    </tbody>
    <thead>
      <tr>
        <th>호텔명</th>
      </tr>
    </thead>
    <tbody>
      <tr> <td> <input type="text" class="form-control" value="${title }" id="honame" name="honame"
                           placeholder="${title }"></td>
      </tr>
    </tbody>
    <thead>
      <tr>
        <th>객실 종류 및 가격</th>
      </tr>
    </thead>
    <tbody>
      <tr>
         <td><c:forEach var="e" items="${list}">
<input type="checkbox" id="roomtype" name="roomtype"
                                 value=${e.roomtype } onclick="doOpenCheck(this);"/>${e.roomtype } : ${e.pay }원
                                 <input type="hidden" value="${e.num }" name="num"> 
                  <br>               
                        </c:forEach>
                                    
</td>
      </tr>
    </tbody>
    
    <thead>
      <tr>
        <th>체크인 날짜</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>   <input type="text" class="form-control" id="checkin"
                           name="checkin" >
                    
</td>
      </tr>
    </tbody>
    
    <thead>
      <tr>
        <th>체크아웃 날짜</th>
      </tr>
    </thead>
    <tbody>
      <tr>
         <td> <input type="text" class="form-control" id="checkout"
                           name="checkout" ></td>
      </tr>
    </tbody>
    
    <thead>
      <tr>
        <th>인원수</th>
      </tr>
    </thead>
    <tbody>
      <tr>
         <td><input type="number" min="1" max="100" class="form-control" id="people"
                           name="people" ></td>
      </tr>
       <thead>
      <tr>
       <th> <button type="submit" id="quick-contact-form-submit" name="quick-contact-form-submit" 
       class="btn button button-small nomargin">예약하기</button>
       </th>
      </tr>
    </thead>
    </tbody>
    
   
    
  </table>
</div>
               
               
                </form> </div> 
                <script>
                function doOpenCheck(chk){
                    var obj = document.getElementsByName("roomtype");
                    for(var i=0; i<obj.length; i++){
                        if(obj[i] != chk){
                            obj[i].checked = false;
                        }
                    }
                }
                $("#checkin").datepicker();
                $("#checkout").datepicker();





                </script>            
                       
                        <!-- 예약 내용 끝 -->

                     <!-- 호텔 사진 -->
                      
      
                        
                     <!-- 호텔 상세 내용 -->

                  
                         

                        </div>
                        <!-- End FAQs -->

                        </div>
                    </div>

                    <!-- Sidebar
                    ============================================= -->
                    <div class="sidebar nobottommargin col_last clearfix">
                        <div class="sidebar-widgets-wrap">
                        
                            <div class="widget quick-contact-widget clearfix">
                     <!-- 여기부터 -->
                     <h3 style="font-weight: bold;">${title }</h3>
                     
                     <img  src="${vo.img }">
                     
                               

                            </div>
                            
                            <div class="widget clearfix" style="height: 100%;">

                                <h3 style="font-weight: bold;">상세 정보</h3>
                                <ul>
                                     <li>${vo.address }</li>
                                     <li>${vo.tel }</li>
                                     <c:forEach var="e" items="${detail }">
                                     <li>${e }</li>
                                     </c:forEach>
                                </ul>

                               

                                
                            </div>                                                   
                        
                            <div class="widget clearfix">

                                

                                  <h3>위치</h3>
                                  <div id="map" style="width: 240px; height: 180px;"></div>
                                  

                                   

                                

                                <script>
                                    $(function() {
                                        $( "#sidebar-tabs" ).tabs({ show: { effect: "fade", duration: 400 } });
                                    });
                                </script>

                            </div>                        

                          

                        

                           
                        </div>
                    </div><!-- .sidebar end -->
                </div>

          </div>

        </section><!-- #content end -->

        <!-- Footer
        ============================================= -->
      <script>
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
      mapOption = { 
          center: new kakao.maps.LatLng(${vo.mapy}, ${vo.mapx}), // 지도의 중심좌표
          level: 3 // 지도의 확대 레벨
      };

  var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

  // 마커가 표시될 위치입니다 
  var markerPosition  = new kakao.maps.LatLng(${vo.mapy}, ${vo.mapx}); 

  // 마커를 생성합니다
  var marker = new kakao.maps.Marker({
      position: markerPosition
  });

  // 마커가 지도 위에 표시되도록 설정합니다
  marker.setMap(map);

      </script>

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