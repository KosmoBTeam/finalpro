<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@ include file="../header.jsp"%>
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4ebe4b5dd8c56619a4b9036bc01619aa&libraries=services,clusterer,drawing"></script>
<body class="stretched">

   <!-- <link rel="stylesheet" type="text/css" href="resources/css/style.css?after" /> -->
   <!-- Document Wrapper
    ============================================= -->
   <div id="wrapper" class="clearfix">
      <!-- #header end -->

      <!-- Page Title
        ============================================= -->
      <section id="page-title" class="page-title-dark">
         <div class="container clearfix">
            <h1 style="font-size: 30px">${name }</h1>
         </div>
      </section>
      <!-- #page-title end -->

      <!-- Content
        ============================================= -->
        <!-- 영상 -->
         <section id="content">

            <div class="content-wrap">

                <div class="container clearfix">

                    <!-- Portfolio Single Video
                    ============================================= -->
                    <div class="col_two_third portfolio-single-image nobottommargin">
                        <video width="800" height="300" autoplay>
 						 <source src="resources/videos/localvideo2.mp4" type="video/mp4">
 						 <source src="resources/videos/localvideo2.mp3" type="video/mp3"></video>
                    </div><!-- .portfolio-single-image end -->

                    <!-- Portfolio Single Content
                    ============================================= -->
                    <div class="col_one_third portfolio-single-content col_last nobottommargin">

                        <!-- Portfolio Single - Description
                        ============================================= -->
                        <div class="fancy-title title-bottom-border">
                            <h2>죽기 전에 가봐야 할 국내여행지 베스트 EP.1</h2>
                        </div>
                        <ol>
                        	<li><p><a href="https://youtu.be/Sj0jrDp9YZE">죽기 전에 가봐야 할 국내여행지 베스트 EP.2</a></p></li>
							<li><p><a href="https://youtu.be/QrJ-m1LLrVw">죽기 전에 가봐야 할 국내여행지 베스트 EP.3</a></p></li>
                        </ol>
                        
                        <p>지리산 노고단 운해, 경남 합천 황매산 은하수, 전남 화순 세량지, 여행지추천, 여행유튜버</p>
                        <p>[출처]킴스트래블 Kim's Travel</p>
                        <!-- Portfolio Single - Description End -->
                        </div>
                        </div>
                        </section>
        <!-- 영상 끝 -->
        
        
      <section id="content">
         <div class="content-wrap bgcolor-grey-light">
            <div class="container clearfix">

               <!-- 시작  -->


               <div class="section1 noborder nobottommargin bgcolor-grey-light">
                  <div class="container clearfix">
                     <div class="heading-block center nobottommargin">
                        <h3 class="color" data-animate="fadeInDown"
                           style="background-color: #F9F9F9; font-size: 50px; font-weight: bold;">식당</h3>
                        <span data-animate="fadeInUp" style="font-weight: bold;">StarTrip이 추천하는 ${name } 맛집</span>
                     </div>
                  </div>
               </div>

               <div
                  class="section1 parallax notopmargin nobottommargin notopborder"
                  style="background-image: url(&amp;quot;resources/images/main/main5.jpg&amp;quot;); padding: 50px 0;"
                  data-stellar-background-ratio="0.3">
                  <div class="container clearfix">
                     <div class="row">
                        <div id="oc-testi" class="owl-carousel testimonials-carousel">
                           <c:forEach var="e" items="${listfood }">
                              <div class="oc-item pf-food">
                                 <div class="testimonial">
                                    <div class="testi-image1">
                                       <a><img src="${e.img}" alt=""
                                          style="width: 330px; height: 200px;"></a>
                                    </div>
                                    <br> <br>

                                    <div class="testi-content1">
                                       <p>${e.address }</p>
                                       <div class="testi-meta"
                                          style="font-weight: bolder; font-size: 25px;">${e.title }</div>
                                    </div>
                                 </div>
                              </div>
                           </c:forEach>
                        </div>

                        <script type="text/javascript">
                           jQuery(document).ready(function($) {
                              var ocTesti = $("#oc-testi");
                              ocTesti.owlCarousel({
                                 margin : 20,
                                 nav : true,
                                 dots : true,
                                 responsive : {
                                    0 : {
                                       items : 1
                                    },
                                    768 : {
                                       items : 2
                                    },
                                    992 : {
                                       items : 3
                                    }
                                 }
                              });
                           });
                        </script>
                     </div>
                  </div>
               </div>


               <div class="section1 noborder nobottommargin bgcolor-grey-light">
                  <div class="container clearfix">
                     <div class="heading-block center nobottommargin">
                        <h3 class="color" data-animate="fadeInDown"
                           style="background-color: #F9F9F9; font-size: 50px; font-weight: bold;" >호텔</h3>
                        <span data-animate="fadeInUp" style="font-weight: bold;">StarTrip이 추천하는 ${name } 호텔</span>
                     </div>
                  </div>
               </div>

               <div
                  class="section1 parallax notopmargin nobottommargin notopborder"
                  style="background-image: url(&amp;quot;resources/images/main/main5.jpg&amp;quot;); padding: 50px 0;"
                  data-stellar-background-ratio="0.3">
                  <div class="container clearfix">
                     <div class="row">
                        <div id="oc-testi1" class="owl-carousel testimonials-carousel">
                           <c:forEach var="e" items="${listhotel }">
                              <div class="oc-item pf-hotel">
                                 <div class="testimonial">
                                    <div class="testi-image1">
                                       <a><img src="${e.img}" alt=""
                                          style="width: 330px; height: 200px;"></a>
                                    </div>
                                    <br> <br>

                                    <div class="testi-content1">
                                       <p>${e.address }</p>
                                       <div class="testi-meta"
                                          style="font-weight: bolder; font-size: 25px;">${e.title }</div>
                                       <!--  -->
                                    </div>
                                 </div>
                              </div>
                           </c:forEach>
                        </div>

                        <script type="text/javascript">
                           jQuery(document).ready(function($) {
                              var ocTesti = $("#oc-testi1");
                              ocTesti.owlCarousel({
                                 margin : 20,
                                 nav : true,
                                 dots : true,
                                 responsive : {
                                    0 : {
                                       items : 1
                                    },
                                    768 : {
                                       items : 2
                                    },
                                    992 : {
                                       items : 3
                                    }
                                 }
                              });
                           });
                        </script>
                     </div>
                  </div>
               </div>



               <div class="section1 noborder nobottommargin bgcolor-grey-light">
                  <div class="container clearfix">
                     <div class="heading-block center nobottommargin">
                        <h3 class="color" data-animate="fadeInDown"
                           style="background-color: #F9F9F9; font-size: 50px; font-weight: bold;" >관광지</h3>
                        <span data-animate="fadeInUp" style="font-weight: bold;" >StarTrip이 추천하는 ${name } 관광지</span>
                     </div>
                  </div>
               </div>

               <div
                  class="section1 parallax notopmargin nobottommargin notopborder"
                  style="background-image: url(&amp;quot;resources/images/main/main5.jpg&amp;quot;); padding: 50px 0;"
                  data-stellar-background-ratio="0.3">
                  <div class="container clearfix">
                     <div class="row">
                        <div id="oc-testi2" class="owl-carousel testimonials-carousel">
                           <c:forEach var="e" items="${listact }">
                              <div class="oc-item pf-act">
                                 <div class="testimonial">
                                    <div class="testi-image1">
                                       <a><img src="${e.img}" alt=""
                                          style="width: 330px; height: 200px;"></a>
                                    </div>
                                    <br> <br>

                                    <div class="testi-content1">
                                       <p>${e.address }</p>
                                       <div class="testi-meta"
                                          style="font-weight: bolder; font-size: 25px;">${e.title }</div>
                                    </div>
                                 </div>
                              </div>
                           </c:forEach>
                        </div>

                        <script type="text/javascript">
                           jQuery(document).ready(function($) {
                              var ocTesti = $("#oc-testi2");
                              ocTesti.owlCarousel({
                                 margin : 20,
                                 nav : true,
                                 dots : true,
                                 responsive : {
                                    0 : {
                                       items : 1
                                    },
                                    768 : {
                                       items : 2
                                    },
                                    992 : {
                                       items : 3
                                    }
                                 }
                              });
                           });
                        </script>
                     </div>
                  </div>
               </div>
            <br><br>
               <!-- 끝  -->
               <ul id="portfolio-filter" class="clearfix">
                  <li class="activeFilter"><a href="#" data-filter="*">All</a></li>
                  <li><a href="#" data-filter=".pf-food">식당</a></li>
                  <li><a href="#" data-filter=".pf-hotel">호텔</a></li>
                  <li><a href="#" data-filter=".pf-act">여행지</a></li>
               </ul>
               <br> <br> <br> <br>

               <!-- Portfolio Items
                    ============================================= -->
               <div id="portfolio" class="portfolio-1 clearfix">
                  <c:forEach var="e" items="${listfood }" varStatus="status">
                     <article class="portfolio-item pf-classes pf-food alt clearfix">
                        <div class="portfolio-image">
                           <div class="fslider" data-arrows="false">
                              <div class="flexslider">
                                 <div class="slider-wrap">
                                    <div class="slide">
                                       <img src="${e.img }" alt="">
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>

                        <div class="portfolio-desc" style=" padding: 0px;">
                           <h3 style="font-size: 29px; font-weight: bold;">${e.title }</h3>
                           <span>${e.address }</span>
                           <p>${e.tel }<br>${e.detail }
                           </p>
                              <div id="mapf${status.count}"
                                 style="height: 260px; width: 100%; border: 1px solid black;">
                              </div>
                        </div>

                     </article>
<script>
console.log(${e.mapy});
console.log(${e.mapx});
var mapContainer = document.getElementById('mapf${status.count}'), // 지도를 표시할 div
mapOption = { 
    center: new kakao.maps.LatLng(${e.mapy}, ${e.mapx}), // 지도의 중심좌표
    level: 1 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(${e.mapy}, ${e.mapx}); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);
</script>
                  </c:forEach>

                  <c:forEach var="e" items="${listhotel }">


                     <article class="portfolio-item pf-classes pf-hotel alt clearfix">
                        <form action="goHotelReserve" method="post">
                           <input type="hidden" value="${e.title}" name="title"> <input
                              type="hidden" value="${e.num}" name="num">
                           <div class="portfolio-image">
                              <div class="fslider" data-arrows="false">
                                 <div class="flexslider">
                                    <div class="slider-wrap">
                                       <div class="slide">
                                          <img src="${e.img }" alt="">
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>

                           <div class="portfolio-desc" style=" padding: 0px;">
                              <h3 style="font-size: 29px;">${e.title }</h3>
                              <span>${e.address }</span>
                              <p>${e.tel }<br>${e.detail }
                              </p>
                              <br> <br> <br> <br> <br> <br> <br>
                              <br>
                              <button type="submit"
                                 class="btn button button-light noleftmargin">예약하러 가기</button>
                              <a href="goHotelDetail?num=${e.num}"
                                 class="btn button button-light noleftmargin">상세페이지</a>
                           </div>
                        </form>
                     </article>

                  </c:forEach>

                  <c:forEach var="e" items="${listact }" varStatus="status">
                     <article class="portfolio-item pf-classes pf-act alt clearfix">
                        <div class="portfolio-image">
                           <div class="fslider" data-arrows="false">
                              <div class="flexslider">
                                 <div class="slider-wrap">
                                    <div class="slide">
                                       <img src="${e.img }" alt="">
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>

                        <div class="portfolio-desc" style=" padding: 0px;">
                           <h3 style="font-size: 29px;">${e.title }</h3>
                           <span>${e.address }</span>
                           <p>${e.tel }<br>${e.detail }
                           </p>
                           <div id="mapa${status.count}"
                              style="height: 260px; width: 100%; border: 1px solid black;">
                           </div>
                        </div>
                        <!-- Portfolio Single - Share
                           ============================================= -->

                        <!-- Portfolio Single - Share End -->
                     </article>
<script>
console.log(${e.mapy});
console.log(${e.mapx});
var mapContainer = document.getElementById('mapa${status.count}'), // 지도를 표시할 div
mapOption = { 
    center: new kakao.maps.LatLng(${e.mapy}, ${e.mapx}), // 지도의 중심좌표
    level: 1 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(${e.mapy}, ${e.mapx}); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);
</script>   
                  
                  </c:forEach>
               </div>
               <!-- #portfolio end -->

               <div style="text-align: center;">
                  <ul class="pagination">

                     <li class="previous"><c:if test="${paging.startPage != 1 }">
                           <a
                              href="goLocalDetail?locnum=${paging.locnum }&nowPage=${paging.nowPage-1}&cntPerPage=${paging.cntPerPage}">&larr;
                              Older</a>
                        </c:if> <c:if test="${paging.startPage==1}">
                           <a href="#">&larr; Older</a>
                        </c:if></li>
                     <c:forEach begin="${paging.startPage }" end="${paging.endPage }"
                        var="p">
                        <c:choose>
                           <c:when test="${p == paging.nowPage }">
                              <li><a>${p }</a></li>
                              <!-- 현재 페이지 일 경우 링크 해제 -->
                           </c:when>
                           <c:when test="${p != paging.nowPage }">
                              <!-- 다른 페이지 링크 -->
                              <li><a
                                 href="goLocalDetail?locnum=${paging.locnum }&nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p }</a></li>
                           </c:when>
                        </c:choose>
                     </c:forEach>

                     <li class="next"><c:if
                           test="${paging.endPage != paging.lastPage}">
                           <a
                              href="goLocalDetail?locnum=${paging.locnum }&nowPage=${paging.nowPage+1 }&cntPerPage=${paging.cntPerPage}">Newer
                              &rarr;</a>
                        </c:if> <c:if test="${paging.endPage == paging.lastPage}">
                           <a href="#">Newer &rarr;</a>
                        </c:if></li>

                  </ul>
                  <ul style="text-align: center; list-style: none;">
                     <li><form action="goLocalDetail?locnum=${paging.locnum }" method="post">
                           <%-- <input type="hidden" name="page" value="${param.page }"> --%>
                           <select name="searchType">
                              <option value="1">상호명</option>
                           </select>&nbsp;<input type="text" name="searchValue"> <input
                              type="submit" value="Search">
                        </form></li>
                  </ul>
               </div>


               <!-- Portfolio Script
                    ============================================= -->
               <script type="text/javascript">
                  jQuery(window)
                        .load(
                              function() {
                                 var $container = $('#portfolio');
                                 $container.isotope({
                                    transitionDuration : '0.65s'
                                 });
                                 $('#portfolio-filter a')
                                       .click(
                                             function() {
                                                $(
                                                      '#portfolio-filter li')
                                                      .removeClass(
                                                            'activeFilter');
                                                $(this)
                                                      .parent(
                                                            'li')
                                                      .addClass(
                                                            'activeFilter');
                                                var selector = $(
                                                      this)
                                                      .attr(
                                                            'data-filter');
                                                $container
                                                      .isotope({
                                                         filter : selector
                                                      });
                                                return false;
                                             });
                                 $('#portfolio-shuffle')
                                       .click(
                                             function() {
                                                $container
                                                      .isotope(
                                                            'updateSortData')
                                                      .isotope(
                                                            {
                                                               sortBy : 'random'
                                                            });
                                             });
                                 $(window).resize(function() {
                                    $container.isotope('layout');
                                 });
                              });
               </script>
               <!-- Portfolio Script End -->
            </div>
         </div>
      </section>
      <!-- #content end -->

      <!-- Footer
        ============================================= -->

      <!-- #footer end -->

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