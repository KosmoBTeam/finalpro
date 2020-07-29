<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html dir="ltr" lang="ko">

<%@include file="../header.jsp"%>
<!-- services�� clusterer, drawing ���̺귯�� �ҷ����� -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4ebe4b5dd8c56619a4b9036bc01619aa&libraries=services,clusterer,drawing"></script>


<body class="stretched">



   <!-- Document Wrapper

    ============================================= -->

   <div id="wrapper" class="clearfix">



      <!-- Page Title

        ============================================= -->

      <section id="page-title" class="page-title-parallax"
         style="background-image: url('resources/images/hotel/detail/hoteldetail.jpg'); padding: 120px 0;"
         data-stellar-background-ratio="0.3">

         <div class="container clearfix">

            <h1 style="color: white;">HOTEL</h1>

            <span style="color: white;">���Ͻô� ȣ���� �����ϼ���.</span>

            <ol class="breadcrumb">

               <li><a href="main" style="color: white;">Home</a></li>

               <li class="active" style="color: white;">Hotel</li>

            </ol>

         </div>



      </section>
      <!-- #page-title end -->



      <!-- Content

        ============================================= -->

      <section id="content">



         <div class="content-wrap bgcolor-grey-light">



            <div class="container clearfix">



               <!-- Posts

                    ============================================= -->

               <div id="posts">
                  <h1>${vo.title }</h1>
                  <div class="entry-title">

                     
                  </div>

                  <ul class="entry-meta clearfix">
                     
                  </ul>

                  <div class="entry clearfix">

                     <div class="entry-image">

                        <img src=${vo.img } style="width: 1100px; height: 600px;">

                     </div>



                     <div class="entry-content">

                        <div class="row">
                           <div class="col-xs-6 col-sm-4">
                              <h1>���� �ü�</h1>
                              <ul>
                                 <c:forEach var="e" items="${detail }">
                     <li>${e }</li>
                     
                     </c:forEach>
                              </ul>
                           </div>
                           <div class="col-xs-6 col-sm-4">
                              <h1>�ּ�</h1>
                              <ul>
                                 <li>${vo.address }</li>
                                 
                              </ul>

                           </div>

                           <div class="col-xs-6 col-sm-4">
                              <h1>��ȭ��ȣ</h1>

                              <ul>
                                 <li>${vo.tel }</li>
                                 
                              </ul>
                           </div>


                        </div>





                        <a
                           href="goHotelReserve?title=${vo.title }&num=${vo.num}"
                           class="more-link">�����ϱ�</a>

                     </div>

                  </div>


<div class="divider"><i class="icon-circle"></i></div>
                  <div class="entry clearfix">

                     <table class="table table-striped">
    <thead>
      <tr>
        <th style="font-weight: bold;">��������</th>
        <th style="font-weight: bold;">����</th>
        <th style="font-weight: bold;">����</th>
      </tr>
    </thead>
    <tbody>
      
      <c:forEach var="i" items="${imglist }">
      <tr>
          <td style="font-size: large;"><strong>${i.roomtype }</strong></td>
          <td style="font-size: large; font-weight: bold;" >${i.pay }</td>
           <td style="font-weight: bold;">
           <div class="portfolio-single-image masonry-thumbs col-6"
                           data-big="3" data-lightbox="gallery">
           <a href="${i.img }" data-lightbox="gallery-item" >
           <img class="image_fade" src="${i.img }" alt="${i.roomtype }"></a></div>
                              </td>
        
             </tr>            
      </c:forEach>
       
       
    
      </tbody>
      </table>
 

					<!-- ���� -->
					
					<div class="divider"><i class="icon-circle"></i></div>
					<h1>����ġ</h1>
					<div id="map" style="width: 1140px; height: 760px;"></div>


					
					<!-- ���� -->


               </div>

            </div>

         </div>

      </section>

   </div>
   <!-- #wrapper end -->



   <!-- Go To Top

    ============================================= -->

   <div id="gotoTop" class="icon-angle-up"></div>
	

<script>
console.log(${vo.mapy});
console.log(${vo.mapx});
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
mapOption = { 
    center: new kakao.maps.LatLng(${vo.mapy}, ${vo.mapx}), // ������ �߽���ǥ
    level: 1 // ������ Ȯ�� ����
};

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

//��Ŀ�� ǥ�õ� ��ġ�Դϴ� 
var markerPosition  = new kakao.maps.LatLng(${vo.mapy}, ${vo.mapx}); 

//��Ŀ�� �����մϴ�
var marker = new kakao.maps.Marker({
position: markerPosition
});

//��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
marker.setMap(map);
</script>
   <!-- Footer Scripts

    ============================================= -->

   <script type="text/javascript" src="resources/js/functions.js"></script>



</body>

</html>



<%@ include file="../footer.jsp"%>