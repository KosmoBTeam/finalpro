<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    <!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp" %>

<!-- <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
    function oneCheckbox(option){
        var obj = document.getElementsByName("checkbox1");
        for(var i=0; i<obj.length; i++){
            if(obj[i] != a){
                obj[i].checked = false;
            }
        }
    }
</script> -->

<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

      <!-- #header end -->

        <!-- Page Title
        ============================================= -->
        <section id="page-title" class="page-title-parallax" style="background-image: url(&quot;resources/images/survey/surveymain.png&quot;); padding: 120px 0;" data-stellar-background-ratio="0.3">

            <div class="container clearfix">
                <h1>여행 가이드</h1>
                <span>StarTrip Trip Guide</span>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="active">설문조사</li>
                </ol>
            </div>

        </section><!-- #page-title end -->

        <!-- Contact Form & Map Overlay Section
        ============================================= -->
        <section id="map-overlay">

            <div class="container clearfix bgcolor-grey" style="width: 1200px">

                <!-- Contact Form Overlay
                ============================================= -->
                <div id="contact-form-overlay" class="clearfix bgcolor-grey" style="width: ">

                    <div class="fancy-title title-dotted-border">
                        <h3>설문조사</h3>
                    </div>
               <!-- submit후 완료 메세지 장소 -->
                    <div></div>

                    <!-- Contact Form
                    ============================================= -->
                    <form class="nobottommargin" id="template-contactform" name="template-contactform" action="" method="post" >
               <h1>설문조사 결과지</h1>
                  <div class="section nobg notopmargin noborder nobottommargin">
                        <div class="col_half nobottommargin center">
                            <img src="resources/images/main/tripper.jpg" alt="" data-animate="fadeInUp">                        
                        </div>
                        <div class="col_half nobottommargin col_last">
                            <div class="heading-block" style="padding-top: 0px;">
                                <h3 data-animate="fadeInDown">Trip Guide</h3>
                                <span data-animate="fadeInUp">설문조사를 통한 여행지 추천</span>                            
                            </div>
                            <p>설문 조사를 통한 추천 여행지는 '<strong style="font-size: 20px; color: orange;">${loc}</strong>' 입니다!</p>
                            <a href="goLocalDetail?locnum=${locnum}" 
                            class="button button-rounded button-reveal button-large button-3d topmargin-sm noleftmargin tright" 
                            style="color:#FFF"><i class="icon-angle-right"></i><span>추천 여행지로 이동하기</span></a> 
                            <a href="goChartDetail?locnum=${locnum}" 
                            class="button button-rounded button-reveal button-large button-3d topmargin-sm noleftmargin tright" 
                            style="color:#FFF"><i class="icon-angle-right"></i><span>전체 투표결과 보러가기</span></a>                          

                        </div>
                     </div>                       
                  
                    </form>
                    <div class="line"></div>

                    <!-- Contact Info
                    ============================================= -->
                    <div class="col_one_third nobottommargin notopmargin">
                       
                        <strong>Email:</strong> yoonjea@naver.com<br>
                        <strong>Ps)</strong> 자세한 문의는 메일주세요<br>
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