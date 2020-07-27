<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@ include file="../header.jsp"%>
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
            <h1>${name }</h1>
         </div>
      </section>
      <!-- #page-title end -->

      <!-- Content
        ============================================= -->
      <section id="content">
         <div class="content-wrap bgcolor-grey-light">
            <div class="container clearfix">
               <!-- Portfolio Filter
                    ============================================= -->

               <!-- #portfolio-filter end -->


               <!-- 시작  -->


               <div class="section1 noborder nobottommargin bgcolor-grey-light">
                  <div class="container clearfix">
                     <div class="heading-block center nobottommargin">
                        <h3 class="color" data-animate="fadeInDown"
                           style="background-color: #F9F9F9;" >식당</h3>
                        <span data-animate="fadeInUp">스타트립이 추천하는 ${name } 맛집</span>
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
                                       <a><img src="${e.img}"
                                          alt="" style="width: 330px; height: 200px;"></a>
                                    </div>
                                    <br>
                                    <br>
                                    
                                    <div class="testi-content1" >
                                       <p>${e.address }</p>
                                       <div class="testi-meta" style="font-weight: bolder; font-size: 25px; ">${e.title }</div>
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
                           style="background-color: #F9F9F9;">호텔</h3>
                        <span data-animate="fadeInUp">스타트립이 추천하는 ${name } 호텔</span>
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
                                       <a><img src="${e.img}"
                                          alt="" style="width: 330px; height: 200px;"></a>
                                    </div>
                                    <br>
                                    <br>
                                    
                                    <div class="testi-content1">
                                       <p>${e.address }</p>
                                       <div class="testi-meta" style="font-weight: bolder; font-size: 25px; ">${e.title }</div><!--  -->
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
                           style="background-color: #F9F9F9;">액티비티</h3>
                        <span data-animate="fadeInUp">스타트립이 추천하는 ${name } 액티비티</span>
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
                                       <a><img src="${e.img}"
                                          alt="" style="width: 330px; height: 200px;"></a>
                                    </div>
                                    <br>
                                    <br>
                                    
                                    <div class="testi-content1">
                                       <p> ${e.address }</p>
                                       <div class="testi-meta" style="font-weight: bolder; font-size: 25px; ">${e.title }</div>
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

               <!-- 끝  -->
               <ul id="portfolio-filter" class="clearfix">
                  <li class="activeFilter"><a href="#" data-filter="*">All</a></li>
                  <li><a href="#" data-filter=".pf-food">식당</a></li>
                  <li><a href="#" data-filter=".pf-hotel">호텔</a></li>
                  <li><a href="#" data-filter=".pf-act">여행지</a></li>
               </ul>
               <br>
               <br>
               <br>
               <br>

               <!-- Portfolio Items
                    ============================================= -->
               <div id="portfolio" class="portfolio-1 clearfix">
                  <c:forEach var="e" items="${listfood }">

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

                        <div class="portfolio-desc">
                           <h3>${e.title }</h3>
                           <span>${e.address }</a></span>
                           <p>${e.tel }<br>${e.detail }
                           </p>
                        </div>
                        <!-- Portfolio Single - Share
                           ============================================= -->

                        <!-- Portfolio Single - Share End -->
                     </article>
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

                           <div class="portfolio-desc">
                              <h3>${e.title }</h3>
                              <span>${f.address }</span>
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
                        <!-- Portfolio Single - Share
                           ============================================= -->

                        <!-- Portfolio Single - Share End -->
                     </article>

                  </c:forEach>




                  <c:forEach var="e" items="${listact }">

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

                        <div class="portfolio-desc">
                           <h3>${e.title }</h3>
                           <span>${e.address }</a></span>
                           <p>${e.tel }<br>${e.detail }
                           </p>
                        </div>
                        <!-- Portfolio Single - Share
                           ============================================= -->

                        <!-- Portfolio Single - Share End -->
                     </article>
                  </c:forEach>
               </div>
               <!-- #portfolio end -->

               <ul class="pager nomargin">

                     <li class="previous"><c:if test="${paging.startPage != 1 }">
                           <a
                              href="goLocalDetail?locnum=${e.locnum }&nowPage=${paging.nowPage-1}&cntPerPage=${paging.cntPerPage}">&larr;
                              Older</a>
                        </c:if> <c:if test="${paging.startPage==1}">
                           <a href="#">&larr; Older</a>
                        </c:if></li>
                     <c:forEach begin="${paging.startPage }" end="${paging.endPage }"
                        var="p">
                        <c:choose>
                           <c:when test="${p == paging.nowPage }">
                              <b>${p }</b>
                              <!-- 현재 페이지 일 경우 링크 해제 -->
                           </c:when>
                           <c:when test="${p != paging.nowPage }">
                              <!-- 다른 페이지 링크 -->
                              <a
                                 href="goLocalDetail?locnum=${e.locnum }&nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
                           </c:when>
                        </c:choose>
                     </c:forEach>

                     <li class="next"><c:if
                           test="${paging.endPage != paging.lastPage}">
                           <a
                              href="goLocalDetail?locnum=${e.locnum }&nowPage=${paging.nowPage+1 }&cntPerPage=${paging.cntPerPage}">Newer
                              &rarr;</a>
                        </c:if> <c:if test="${paging.endPage == paging.lastPage}">
                           <a href="#">Newer &rarr;</a>
                        </c:if></li>

                  </ul>
                  <!-- .pager end -->
                  
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