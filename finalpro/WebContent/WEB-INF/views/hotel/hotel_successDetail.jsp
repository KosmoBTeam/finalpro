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
        <section id="page-title" class="page-title-parallax" 
        style="background-image: url('resources/images/hotel/detail/hoteldetail.jpg'); 
        padding: 120px 0;" data-stellar-background-ratio="0.3">

            <div class="container clearfix">
                <h1 style="color: #ffffff">ȣ�� ���� Ȯ��</h1>
                
                <ol class="breadcrumb">
                    <li><a href="main">Home</a></li>
                    <li><a href="goHotelMain">ȣ�� ����</a></li>
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
                    
                    
                    <!-- ���� ���� ��� -->
                    <form class="form-horizontal"  style="margin: 0 auto;" action="goHotelSuccess" method="get">           
               <h1 style="font-size: 30px;">���� Ȯ���ϱ�</h1>
                  <div class="section nobg notopmargin noborder nobottommargin">
                        <div >
                            <img src="${list.img}" alt="" data-animate="fadeInUp">  
                            <div class="divider"><i class="icon-circle"></i></div>
                            <input type="hidden" value="${list.num }" name="num">                      
                        </div>
                       <table class="table table-hover" style="font-size: 20px ">

    <thead>
      <tr>
        <th>���̵�</th>
        <th>�̸�</th>
        <th>��ȭ��ȣ</th>
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
        <th>ȣ�ڸ�</th>
        <th>���� ����</th>
        <th>����</th>
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
        <th>üũ�� ��¥</th>
        <th>üũ�ƿ� ��¥</th>
        <th>�ο���</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${list.checkin }</td>
        <td>${list.checkout }</td>
        <td>${list.people }��</td>
        </tr>
    </tbody>
     
    
    

  </table>
  <div class="divider"><i class="icon-circle"></i></div>
  <!-- ���� start -->
  <div id="map" style="width: 760px; height: 400px;"></div>
 
    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4ebe4b5dd8c56619a4b9036bc01619aa&libraries=services"></script>
    <script>
      var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
      mapOption = { 
          center: new kakao.maps.LatLng(${list.mapy}, ${list.mapx}), // ������ �߽���ǥ
          level: 3 // ������ Ȯ�� ����
      };

  var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

  // ��Ŀ�� ǥ�õ� ��ġ�Դϴ� 
  var markerPosition  = new kakao.maps.LatLng(${list.mapy}, ${list.mapx}); 

  // ��Ŀ�� �����մϴ�
  var marker = new kakao.maps.Marker({
      position: markerPosition
  });

  // ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
  marker.setMap(map);

      </script>
  
  <!-- ���� end -->
  <div class="divider"><i class="icon-circle"></i></div>
  <div>
      <div style="width: 50%;float: left; margin: 0 auto;">
      <button type="button"
onclick="location.href='deleteReserve?id=${sessionScope['id']}&hrnum=${list.hrnum }'"
class="button button-medium button-reveal button-3d button-rounded tright nomargin"
style="color: black; text-align: center;">
<span>����ϱ�</span> <i class="icon-angle-right"></i>
                  </button>
<button type="button"
onclick="location.href='goHotelDetail?num=${list.num }'"
class="button button-medium button-reveal button-3d button-rounded tright nomargin"
style="color: black; text-align: center;">
<span>�� ������</span> <i class="icon-angle-right"></i>
                  </button>
      
      </div>

      </div>
                     </div>                       
          
                    </form>
                    <!-- ���� ���� ��� �� -->
                    <div class="line"></div>

                    <!-- Contact Info
                    ============================================= -->
                    <div class="col_one_third nobottommargin notopmargin">
                       
             
                        <strong>Ps)</strong>���� ������ �����ø� ê������ �������ּ���<br>
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