<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp" %>
<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">
	
        <!-- #header end -->
        
        <!-- Page Title
        ============================================= -->
        <section id="page-title" class="page-title-dark">

            <div class="container clearfix">
                <h1>국내 여행지</h1>
                <span>국내의 다양한 여행지를 만나보세요</span>
            </div>

   	  </section><!-- #page-title end -->        

        <!-- Content
        ============================================= -->
        <section id="content">
            <div class="content-wrap bgcolor-grey-light">
                <div class="container clearfix">

                    <!-- Portfolio Items
                    ============================================= -->
                    <div id="portfolio" class="portfolio-2 portfolio-masonry portfolio-nomargin clearfix">
                    <c:forEach var="e" items="${list}">
                        <article class="portfolio-item pf-food pf-drinks">
                            <div class="portfolio-image">
                                <img src="resources/images/local/locmain/${e.img }" alt="">
                                <div class="portfolio-overlay">
                                    <div class="portfolio-desc">
                                        <h3><a href="goLocalDetail?locnum=${e.locnum }">${e.loc}</a></h3>                  
                                    </div>     
                                </div>
                            </div>
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
      

        </footer><!-- #footer end -->

    </div><!-- #wrapper end -->

    <!-- Go To Top
    ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- Footer Scripts
    ============================================= -->
    <script type="text/javascript" src="resources/js/functions.js"></script>

</body>
</html>
 <%@ include file="../footer.jsp" %>