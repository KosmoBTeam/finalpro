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

                <!-- Portfolio Items
                ============================================= -->
                <div id="portfolio" class="portfolio-1 clearfix">
                <c:forEach var="e" items="${list}">
                <c:choose>
                   <c:when test="${e.locnum eq '1'}">
                  <article class="portfolio-item pf-jeju alt clearfix">
                </c:when>
                   <c:when test="${e.locnum eq '2'}">
                  <article class="portfolio-item pf-incheon alt clearfix">
                </c:when>
                   </c:choose>
                <form action="goHotelReserve" method="post">
                <input type="hidden" value="${e.title}" name="title">
                <input type="hidden" value="${e.num}" name="num">
                        <div class="portfolio-image">
                            <img src="resources/images/local/detail/${e.img}" alt="">

                        </div>
                        <div class="portfolio-desc">
                            <h3>${e.title }</h3>
                            <p>${e.detail }</p>
                            <button type="submit" class="btn button button-light noleftmargin">예약 하기</button>                                                                
                            <a href="goHotelDetail?num=${e.num}" class="btn button button-light noleftmargin">상세 보기</a>
                        </div>                          
                    </form>
                 </article>
                    </c:forEach>
                </div><!-- #portfolio end -->

                <!-- Portfolio Script
                ============================================= -->
                <script type="text/javascript">
					
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