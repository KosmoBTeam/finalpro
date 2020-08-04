<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">

<%@include file="header.jsp"%>

<style>
.testimonial {
   height: 145px;
}
</style>
<body class="stretched">
   <!-- Document Wrapper
    ============================================= -->
   <div class="clearfix">

      <section id="slider" class="slider-parallax revoslider-wrap clearfix">

         <!--
            #################################
                - Revolution Slider -
            #################################
            -->
         <div class="tp-banner-container">

            <div class="tp-banner">
               <ul>

                  <!-- SLIDE  -->
                  <li data-transition="slideup" data-slotamount="1"
                     data-masterspeed="1500"
                     data-thumb="resources/images/main/trippermain.jpg"
                     data-delay="10000" data-saveperformance="off"
                     data-title="StarTrip"><img
                     src="resources/images/main/trippermain.jpg" alt=""
                     data-bgposition="left top" data-kenburns="on"
                     data-duration="10000" data-ease="Linear.easeNone"
                     data-bgfit="130" data-bgfitend="100"
                     data-bgpositionend="right bottom">
                     <div
                        class="tp-caption customin ltl tp-resizeme revo-slider-caps-text uppercase"
                        data-x="200" data-y="200"
                        data-customin="x:-200;y:0;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800" data-start="1500" data-easing="easeOutQuad"
                        data-splitin="none" data-splitout="none"
                        data-elementdelay="0.01" data-endelementdelay="0.1"
                        data-endspeed="1000" data-endeasing="Power4.easeIn"
                        style="font-size: 38px z-index: 3; color: #ffffff;">STARTRIP</div>

                     <div
                        class="tp-caption customin ltl tp-resizeme revo-slider-emphasis-text nopadding noborder"
                        data-x="197" data-y="240"
                        data-customin="x:10;y:0;z:0;rotationY:120;rotationZ:0;scaleX:0.8;scaleY:0.8;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 50%;"
                        data-speed="300" data-start="1700" data-easing="easeOutQuad"
                        data-splitin="chars" data-splitout="none"
                        data-elementdelay="0.1" data-endelementdelay="0.1"
                        data-endspeed="1000" data-endeasing="Power4.easeIn"
                        style="z-index: 3; color: #ffffff; line-height: 1.2; max-width: 580px; width: 580px; white-space: normal;">여행을
                        도와주는 가이드</div>

                     <div class="tp-caption customin ltl" data-x="200" data-y="525"
                        data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800" data-start="1800" data-easing="easeOutQuad"
                        data-splitin="none" data-splitout="none"
                        data-elementdelay="0.01" data-endelementdelay="0.1"
                        data-endspeed="1300" data-endeasing="Power4.easeIn"
                        style="z-index: 11;">
                        <a href="goSurveyWrite"
                           class="button button-medium button-reveal button-3d button-rounded tright nomargin"
                           style="color: #FFF" > <span>시작하기</span> <i
                           class="icon-angle-right" ></i></a>
                     </div> <!-- END SLIDE  --> <!-- SLIDE  -->
                  <li data-transition="slideup" data-slotamount="1"
                     data-masterspeed="1000"
                     data-thumb="resources/images/main/main2.jpg"
                     data-fstransition="fade" data-fsmasterspeed="1000"
                     data-fsslotamount="7" data-saveperformance="off"
                     data-title="Start!"><img
                     src="resources/images/main/main2.jpg" alt=""
                     data-bgposition="left top" data-kenburns="on"
                     data-duration="10000" data-ease="Linear.easeNone"
                     data-bgfit="130" data-bgfitend="100"
                     data-bgpositionend="right bottom">

                     <!-- <div
                        class="tp-caption customin ltl tp-resizeme revo-slider-caps-text"
                        data-x="200" data-y="170"
                        data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800" data-start="1200" data-easing="easeOutQuad"
                        data-splitin="none" data-splitout="none"
                        data-elementdelay="0.01" data-endelementdelay="0.1"
                        data-endspeed="1000" data-endeasing="Power4.easeIn"
                        style="z-index: 11; color: #222;">StarTrip</div> -->

                     <div
                        class="tp-caption customin ltl tp-resizeme revo-slider-caps-text uppercase"
                        data-x="200" data-y="200"
                        data-customin="x:-200;y:0;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800" data-start="1500" data-easing="easeOutQuad"
                        data-splitin="none" data-splitout="none"
                        data-elementdelay="0.01" data-endelementdelay="0.1"
                        data-endspeed="1000" data-endeasing="Power4.easeIn"
                        style="z-index: 3; color: #ffffff;">여행도 맞춤으로!</div>

                  
                     <div
                        class="tp-caption customin ltl tp-resizeme revo-slider-emphasis-text nopadding noborder"
                        data-x="197" data-y="240"
                        data-customin="x:10;y:0;z:0;rotationY:120;rotationZ:0;scaleX:0.8;scaleY:0.8;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="600" data-start="1700" data-easing="easeOutQuad"
                        data-splitin="chars" data-splitout="none"
                        data-elementdelay="0.1" data-endelementdelay="0.1"
                        data-endspeed="1000" data-endeasing="Power4.easeIn"
                        style="z-index: 11; color: #ffffff; line-height: 3.2; white-space: normal;">나만의 여행지를 찾고싶다면?</div>

                     <div class="tp-caption customin ltl" data-x="200" data-y="525"
                        data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800" data-start="1800" data-easing="easeOutQuad"
                        data-splitin="none" data-splitout="none"
                        data-elementdelay="0.01" data-endelementdelay="0.1"
                        data-endspeed="1300" data-endeasing="Power4.easeIn"
                        style="z-index: 11;">
                        <a href="goSurveyWrite"
                           class="button button-medium button-reveal button-3d button-rounded tright nomargin"
                           style="color: #FFF"><span>여행지 추천 받기</span> <i
                           class="icon-angle-right"></i></a>
                     </div></li>
                  <!-- END SLIDE  -->

                  <!-- SLIDE  -->
                  <li data-transition="slideup" data-slotamount="1"
                     data-masterspeed="1500"
                     data-thumb="resources/images/main/main3.jpg" data-delay="10000"
                     data-saveperformance="off" data-title="Trip!"><img
                     src="resources/images/main/main3.jpg" alt=""
                     data-bgposition="left top" data-kenburns="on"
                     data-duration="10000" data-ease="Linear.easeNone"
                     data-bgfit="130" data-bgfitend="100"
                     data-bgpositionend="right bottom">

                     <div
                        class="tp-caption customin ltl tp-resizeme revo-slider-caps-text uppercase"
                        data-x="200" data-y="200"
                        data-customin="x:-200;y:0;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800" data-start="1500" data-easing="easeOutQuad"
                        data-splitin="none" data-splitout="none"
                        data-elementdelay="0.01" data-endelementdelay="0.1"
                        data-endspeed="1000" data-endeasing="Power4.easeIn"
                        style="z-index: 3; color: #ffffff;">여행은 가볍게!</div>

                  
                     <div
                        class="tp-caption customin ltl tp-resizeme revo-slider-emphasis-text nopadding noborder"
                        data-x="197" data-y="240"
                        data-customin="x:10;y:0;z:0;rotationY:120;rotationZ:0;scaleX:0.8;scaleY:0.8;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="600" data-start="1700" data-easing="easeOutQuad"
                        data-splitin="chars" data-splitout="none"
                        data-elementdelay="0.1" data-endelementdelay="0.1"
                        data-endspeed="1000" data-endeasing="Power4.easeIn"
                        style="z-index: 11; color: #ffffff; line-height: 3.2; white-space: normal;">
                        <p>패키지로 여행 어떠신가요?</p></div>

                     <div class="tp-caption customin ltl" data-x="200" data-y="525"
                        data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                        data-speed="800" data-start="1800" data-easing="easeOutQuad"
                        data-splitin="none" data-splitout="none"
                        data-elementdelay="0.01" data-endelementdelay="0.1"
                        data-endspeed="1300" data-endeasing="Power4.easeIn"
                        style="z-index: 11;">
                        <a href="goLocalMain"
                           class="button button-medium button-reveal button-3d button-rounded tright nomargin"
                           style="color: #FFF"><span>여행 패키지 둘러보기</span> <i
                           class="icon-angle-right"></i></a>
                     </div></li>
                  <!-- END SLIDE  -->

               </ul>

            </div>
         </div>

         <script type="text/javascript">
            var tpj = jQuery;
            tpj.noConflict();

            tpj(document).ready(function() {

               var apiRevoSlider = tpj('.tp-banner').show().revolution({
                  dottedOverlay : "none",
                  delay : 9000,
                  startwidth : 1140,
                  startheight : 700,
                  hideThumbs : 200,

                  thumbWidth : 100,
                  thumbHeight : 50,
                  thumbAmount : 3,

                  navigationType : "none",
                  navigationArrows : "solo",
                  navigationStyle : "preview4",

                  touchenabled : "on",
                  onHoverStop : "off",

                  swipe_velocity : 0.7,
                  swipe_min_touches : 1,
                  swipe_max_touches : 1,
                  drag_block_vertical : false,

                  parallax : "mouse",
                  parallaxBgFreeze : "on",
                  parallaxLevels : [ 8, 7, 6, 5, 4, 3, 2, 1 ],
                  parallaxDisableOnMobile : "on",

                  keyboardNavigation : "on",

                  navigationHAlign : "center",

                  navigationVAlign : "bottom",
                  navigationHOffset : 0,
                  navigationVOffset : 20,

                  soloArrowLeftHalign : "left",
                  soloArrowLeftValign : "center",
                  soloArrowLeftHOffset : 20,
                  soloArrowLeftVOffset : 0,

                  soloArrowRightHalign : "right",
                  soloArrowRightValign : "center",
                  soloArrowRightHOffset : 20,
                  soloArrowRightVOffset : 0,

                  shadow : 0,
                  fullWidth : "off",
                  fullScreen : "on",

                  spinner : "spinner0",

                  stopLoop : "off",
                  stopAfterLoops : -1,
                  stopAtSlide : -1,

                  shuffle : "off",

                  forceFullWidth : "off",
                  fullScreenAlignForce : "off",
                  minFullScreenHeight : "400",

                  hideThumbsOnMobile : "on",
                  hideNavDelayOnMobile : 1500,
                  hideBulletsOnMobile : "on",
                  hideArrowsOnMobile : "on",
                  hideThumbsUnderResolution : 0,

                  hideSliderAtLimit : 0,
                  hideCaptionAtLimit : 0,
                  hideAllCaptionAtLilmit : 0,
                  startWithSlide : 0,
                  fullScreenOffsetContainer : ".header"
               });

            }); //ready
         </script>

         <!-- END REVOLUTION SLIDER -->

      </section>
<!-- Services ===== -->
                <div class="section nobottommargin bgcolor-grey-light">
                <div class="container clearfix">
                
                    <div class="heading-block center">
                   		<h3 class="color" data-animate="fadeInDown">StarTrip?</h3>
                        <span data-animate="fadeInUp">StarTrip은 여행지를 고르기 힘드신 분을 위해 여행취향을 분석 후<br> 알맞는 여행지를 추천해주는 서비스를 제공해드립니다!</span>                    
                    </div>                

                    <div class="col_one_fourth nobottommargin">
						<div class="feature-box fbox-center fbox-effect fbox-light">
                            <div class="fbox-icon">
                                <a href="goSurveyWrite"><i class="icon-atom"></i></a>                            
                            </div>
                            <h3>여행자 취향 분석</h3>
                            <p>취향을 분석하여 사용자가 원하는 여행지를 추천 해드리고 있습니다!</p>
                        </div>                        
                    </div>

                    <div class="col_one_fourth nobottommargin">
						<div class="feature-box fbox-center fbox-effect fbox-light">
                            <div class="fbox-icon">
                                <a href="#"><i class="icon-compass"></i></a>                            
                            </div>
                            <h3>네비게이션</h3>
                            <p>여행지를 바로바로 등록해 떠날 수 있는 네비게이션을 제공해 드립니다!</p>
                        </div>
                    </div>

                    <div class="col_one_fourth nobottommargin">
						<div class="feature-box fbox-center fbox-effect fbox-light">
                            <div class="fbox-icon">
                                <a href="gosearchmap"><i class="icon-map"></i></a>                            
                            </div>
                            <h3>주변 검색</h3>
                            <p>주변의 맛집, 숙박, 관광지를 검색하는 서비스를 제공해 드립니다!</p>
                        </div>
                    </div>

                    <div class="col_one_fourth nobottommargin col_last">
						<div class="feature-box fbox-center fbox-effect fbox-light">
                            <div class="fbox-icon">
                                <a href="goLogin"><i class="icon-user"></i></a>                            
                            </div>
                            <h3>지금 시작해보세요!</h3>
                            <p>회원가입을 통해 다양한 서비스를 제공 받으세요!</p>
                        </div>
                    </div>

                    <div class="clear"></div>
                 	</div>
                </div>
                <!-- End Services ===== -->                     
      <!-- Content
        ============================================= -->
      <section id="content">
         <div class="content-wrap">

            <!-- Promo -->
            
            <div class="divider"><i class="icon-circle"></i></div>
            <!-- End Promo -->
<div class="section noborder nobottommargin bgcolor-grey-light">

               <div class="container clearfix ">

                  <div class="heading-block center nobottommargin ">

                     <h3 class="color" data-animate="fadeInDown" >Instagram</h3>

                     <span data-animate="fadeInUp" >StarTrip의 Instagram으로 여행지를 확인해보세요!</span>

                  </div>

               </div>

            </div>
   <section><!-- Section -->
            <div class="content-wrap bgcolor-grey-light">
				<div class="container clearfix"><!-- Container -->                                                                  
                      
                      
                   <!-- LightWidget WIDGET -->
                   <script src="https://cdn.lightwidget.com/widgets/lightwidget.js"></script>
                   <iframe src="//lightwidget.com/widgets/b1b7f2c9a09b514eb23d1dbafb5813fb.html" scrolling="no" allowtransparency="true" 
                   class="lightwidget-widget" style="width:100%;border:0;overflow:hidden;">
                   </iframe>


            	</div><!-- Container -->
        	</div><!-- Content Wrap -->
        </section><!-- End Section -->
               <!-- End Feature Boxes -->

            </div>
 <div class="divider"><i class="icon-circle"></i></div>
<!-- 후기 -->
<!-- 후기 끝 -->
              <div class="section nobottommargin notopmargin bgcolor-grey-light">                                                          
                    <div class="container">
                    <div class="fancy-title title-border title-center">
                        <h3>StarTripper의 후기</h3>
                    </div>

                    <div id="oc-team-list" class="owl-carousel team-carousel">
                    <c:forEach var="e" items="${rlist }">
                        <div class="oc-item">
                            <div class="team team-list clearfix">
                                <div class="team-image">
                                    <img src="resources/images/${e.img}" alt=""></div>
                                <div class="team-desc">
                                    <div class="team-title"><h4>${e.title }</h4><span>${e.member.id }</span></div>
                                    <div class="team-content">
                                        <p>${e.detail }</p>
                                    </div>                           
                                </div>
                            </div>
                        </div>
                     </c:forEach>    
                    </div>
                 
                    <script type="text/javascript">

                        jQuery(document).ready(function($) {

                            var ocTeam = $("#oc-team-list");

                            ocTeam.owlCarousel({
                                responsive:{
                                    0:{ items:1 },
                                    600:{ items:1 },
                                    1000:{ items:2 }
                                },
                                margin: 30,
                                nav: false,
                                dots:true
                            });

                        });

                    </script>                    
                    </div>                   
              	</div> 
            <!-- End Section============================================= -->
<div class="divider"><i class="icon-circle"></i></div>
 <div class="section noborder nobottommargin " style="background-color:#fff6e1;">

               <div class="container clearfix ">

                  <div class="heading-block center nobottommargin ">

                     <h3 class="color" data-animate="fadeInDown" style="color:#1b1c25">설문조사</h3>

                     <span data-animate="fadeInUp" style="color: #1b1c25">설문조사로 분석하여 여행지를 추천!</span>

                  </div>

               </div>

            </div>

            <div class="section nobg notopmargin noborder nobottommargin bgcolor-grey-light" style="background-color:#ebecf1;">

               <div class="container clearfix">

                  <div class="col_half nobottommargin center">

                     <img src="resources/images/main/tripper.jpg" alt=""
                        data-animate="fadeInUp">

                  </div>

                  <div class="col_half nobottommargin col_last">

                     <div class="heading-block" style="padding-top: 40px;">

                        <h3 data-animate="fadeInDown">여행 가이드</h3>

                        <span data-animate="fadeInUp">설문조사를 통한 여행지 추천</span>

                     </div>

                     <p>여행지 추천과 여행의 코스까지 도와주는 StarTrip의 여행 가이드!</p>

                     <a href="goSurveyWrite"
                        class="button button-rounded button-reveal button-large button-3d topmargin-sm noleftmargin tright"
                        style="color: #FFF"><i class="icon-angle-right"></i><span>설문조사</span></a>

                  </div>

               </div>

            </div>

			<div class="divider"><i class="icon-circle"></i></div>

             <div class="section noborder nobottommargin" style="background-color:#fff6e1;">
               <div class="container clearfix">
                  <div class="heading-block center nobottommargin">
                     <h3 class="color" data-animate="fadeInDown">국내 여행지</h3>
                     <span data-animate="fadeInUp">StarTripper의 최근 추천 여행지</span>
                  </div>
               </div>
            </div>

            <!-- Portfolio Items

                ============================================= -->

            <div id="portfolio"
               class="portfolio-nomargin portfolio-full clearfix">
               <c:forEach var="e" items="${llist }">
                  <article class="portfolio-item pf-media pf-icons">
                     <div class="portfolio-image">
                        <img src="resources/images/local/locmain/${e.img }" alt=""
                           style="height: 365px !important;">
                        <div class="portfolio-overlay">
                           <div class="portfolio-desc">
                              <h3>
                                 <a href="goLocalDetail?locnum=${e.locnum }">${e.loc }</a>
                              </h3>
                              <span></span>
                           </div>
                        </div>
                     </div>
                  </article>



               </c:forEach>

            </div>



         </div>

         <!-- Portfolio Script
                ============================================= -->
         <script type="text/javascript">
            jQuery(window).load(function() {

               var $container = $('#portfolio');

               $container.isotope({
                  transitionDuration : '0.65s'
               });

               $(window).resize(function() {
                  $container.isotope('layout');
               });

            });
         </script>
         <!-- Portfolio Script End -->

         <div class="clear"></div>

         <a href="goLocalMain" class="button button-full button center tright nobottommargin">
            <div class="container clearfix">
               StarTrip이 제공하는 국내 추천 여행지 <strong>더 보기</strong> <i
                  class="icon-chevron-right" style="top: 2px;"></i>
            </div>
         </a>

				<div class="section bgcolor-grey-light notopmargin nobottommargin nobottompadding">
                    <div class="container clearfix">
                    
                        <div id="section-menu" class="heading-block center">
                            <h2 data-animate="fadeInDown" class="color">StarTrip  Service</h2>
                            <span data-animate="fadeInUp">한눈에 알아보는 StarTrip!</span>                        
                        </div>

                        <div class="col_full center">
                        
                        <div class="fancy-title title-border title-center"><h3>Soups &amp; Salads</h3></div>

                        <ul class="nobullets"><li class="color">Tomato Soup</li>
                        <li>Chicken Tortilla Soup</li>
                        <li>New England Clam Chowder</li>
                        <li class="bold italic serif"><a href="#" class="more-link">예약하기</a></li></ul>
                                                

                        <ul class="nobullets"><li class="color">Caprese Salad</li>
                        <li>Mozzarella, Basil, Tomato, Balsamic Vinaigrette</li>
                        <li class="bold italic serif"><h4>12.95</h4></li></ul>
                        
                        <ul class="nobullets"><li class="color">Iceberg Wedge</li>
                        <li>Blue Cheese, Tomato, Bacon Crumbles, Croutons</li>
                        <li class="bold italic serif"><h4>10.95</h4></li></ul>                        
                        
                        <div class="fancy-title title-border title-center"><h3>Entrees</h3></div>  
                        
                        <ul class="nobullets"><li class="color">Classic! Mac &amp; Cheese</li>
                        <li>Applewood Smoked Bacon Crumbles</li>
                        <li class="bold italic serif"><h4>11.75</h4></li></ul>
                        
                        <ul class="nobullets"><li class="color">Beer-Batter Fish &amp; Chips</li>
                        <li>Crispy Grouper Filets, Shoestring Fries, Coleslaw</li>
                        <li class="bold italic serif"><h4>15.25</h4></li></ul>
                        
                        <ul class="nobullets"><li class="color">Fish Tacos</li>
                        <li>White Fish, Shaved Cabbage, Tomatillo Salsa</li>
                        <li class="bold italic serif"><h4>14.75</h4></li></ul>
                                                
                        <div class="fancy-title title-border title-center"><h3>Sandwiches</h3></div>

                        <ul class="nobullets"><li class="color">Prime Rib Melt</li>
                        <li>Thinly-sliced w/Swiss Cheese, Roasted Onion, Chipotle Aioli on Grilled Sourdough</li>
                        <li class="bold italic serif"><h4>16.95</h4></li></ul>
                        
                        <ul class="nobullets"><li class="color">Club Sandwich</li>
                        <li>Turkey Breast, Bacon, Avocado, Lettuce, Tomato, Mayonnaise on Toasted Potato Bread</li>
                        <li class="bold italic serif"><h4>14.50</h4></li></ul>
                        
                        <ul class="nobullets"><li class="color">French Dip Sandwich</li>
                        <li>Thinly-sliced Prime Rib on a Hoagie w/Grilled Onions, Au Jus & Horseradish Sauce</li>
                        <li class="bold italic serif"><h4>16.25</h4></li></ul>
                        </div>
                    </div>

              </div>





      
      <!-- #content end -->

      <%@include file="footer.jsp"%>

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