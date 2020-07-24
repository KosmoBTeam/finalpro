<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@ include file="../header.jsp" %>
<body class="stretched">

<!-- Document Wrapper
============================================= -->
<div id="wrapper" class="clearfix">


    <!-- #header end -->

    <!-- Page Title
    ============================================= -->
    <section id="page-title" class="page-title-dark">

        <div class="container clearfix">
            <h1>HOTEL</h1>
            <span>원하시는 숙박 장소를 예약하세요.</span>
            <ol class="breadcrumb">
                <li><a href="main.jsp">Home</a></li>
                <li class="active">Portfolio</li>
            </ol>
        </div>

      </section><!-- #page-title end -->        

    <!-- Content
    ============================================= -->
    
    <section id="content">

        <div class="content-wrap bgcolor-grey-light">
      
            <div class="container clearfix">
         
                <!-- Portfolio Filter
                ============================================= -->
                <ul id="portfolio-filter" class="clearfix">

                    <li class="activeFilter"><a href="#" data-filter="*">모두 보기</a></li>
                    <li><a href="#" data-filter=".pf-jeju">제주도</a></li>
                    <li><a href="#" data-filter=".pf-incheon">인천</a></li>

                </ul><!-- #portfolio-filter end -->

                <div class="clear"></div>
               <div class="sidebar nobottommargin col_last clearfix" style="width: 100px;">
                  <div class="sidebar-widgets-wrap">

                     <div class="widget clearfix">

                        <h4 style="width: 167px;">리뷰 TOP 5</h4>
                        <div id="post-list-footer">
                           <c:forEach var="i" items="${reviewlist}">
                              <div class="spost clearfix">
                                 <div class="portfolio-image" style="width: 200px; height: 155px; right: 40px;">
                                           <img src="resources/images/local/detail/${i.img}" alt="" style="width: auto; height: auto;">
                                           <p style="height: 0px;">${i.title }</p>
                                           <p>리뷰 : ${i.cnt }개</p>
                                       </div>
                                       
                                 <div class="entry-c">
                                    <div class="entry-title">
                                       <h4>
                                          <a href=""></a>
                                       </h4>
                                       <p class="nobottommargin"></p>
                                    </div>
                                 </div>
                              </div>
                           </c:forEach>
                        </div>

                     </div>
                  </div>
               </div>
                <!-- Portfolio Items
                ============================================= -->
                <div id="portfolio" class="portfolio-1 clearfix">
                <c:forEach var="e" items="${list}">
                <c:choose>
                   <c:when test="${e.locnum eq '1'}">
                  <article class="portfolio-item pf-jeju alt clearfix" style="width: 79%;">
                </c:when>
                   <c:when test="${e.locnum eq '2'}">
                  <article class="portfolio-item pf-incheon alt clearfix" style="width: 79%;">
                </c:when>
                   </c:choose>
                   
                <form  method="post" name="myform" id="myform">
                <input type="hidden" value="${e.title}" name="title">
                <input type="hidden" value="${e.num}" name="num">

                        <div class="portfolio-image" style="width: 240px; height: 100px;">
                           <p style="font-weight: bold; font-size: 14px; color: red;">최저가 ${e.pay } ~</p>
                            <input type="button" class="btn button button-light noleftmargin" value="객실 선택" onclick="location.href ='goHotelReserve?title=${e.title}&num=${e.num }'">
                            <!-- <a href="goHotelDetail?num=${e.num}" class="btn button button-light noleftmargin">상세 보기</a> -->
                            <input type="button" class="btn button button-light noleftmargin" value="상세 보기" onclick="click2()">                                                                                
                            
                        </div>


                        <div class="portfolio-desc" style="height: 100px;">
                            <h3>${e.title }</h3>
                            <p>${e.detail }</p>
                     <p>리뷰 : ${e.cnt }개</p>
                        </div>
                        
                        <div class="portfolio-image" style="width: 200px; height: auto; right: 40px;">
                            <img src="resources/images/local/detail/${e.img}" alt="" style="width: auto; height: auto;">

                        </div>
                       
                    </form>
                    </article>
                               
                    </c:forEach>
                    
             
                </div>
            
                
                <!-- #portfolio end -->

                <!-- Portfolio Script
                ============================================= -->
                <script type="text/javascript">
               
                /* function click1(){
                  
                  var myform = document.getElementById("myform")
                  myform.action = 'goHotelReserve'
                  myform.submit();

               } */
            function click2(){
                  
                  var myform = document.getElementById("myform")
                  myform.action = 'goHotelDetail?num='+${e.num}
                  myform.submit()
                  
               }
                
                    jQuery(window).load(function(){
                        
                       
                       
                       
                        var $container = $('#portfolio');

                        $container.isotope({ transitionDuration: '0.65s' });

                        $('#portfolio-filter a').click(function(){
                            $('#portfolio-filter li').removeClass('activeFilter');
                            $(this).parent('li').addClass('activeFilter');
                            var selector = $(this).attr('data-filter');
                            $container.isotope({ filter: selector });
                            return false;
                        });

                        $('#portfolio-shuffle').click(function(){
                            $container.isotope('updateSortData').isotope({
                                sortBy: 'random'
                            });
                        });

                        $(window).resize(function() {
                            $container.isotope('layout');
                        });

                    });

                </script><!-- Portfolio Script End -->

            </div>

        </div>

    </section><!-- #content end -->

    <!-- Footer
    ============================================= -->

    <!-- #footer end -->

</div><!-- #wrapper end -->

<!-- Go To Top
============================================= -->
<div id="gotoTop" class="icon-angle-up"></div>

<!-- Footer Scripts
============================================= -->
<script type="text/javascript" src="resources/js/functions.js"></script>

</body>
</html>
<%@include file="../footer.jsp" %>