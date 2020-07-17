<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE html>
<html dir="ltr" lang="ko">
 <%@include file="../header.jsp"%>  <!-- #header end -->

<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

      

        <!-- Page Title
        ============================================= -->
        <section id="page-title" class="page-title-dark">

            <div class="container clearfix">
                <h1>NYC Restaurant Week</h1>
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Events</a></li>
                    <li class="active">Event Single</li>
                </ol>
            </div>

        </section><!-- #page-title end -->

        <section id="slider" class="slider-parallax swiper_wrapper clearfix" style="height: 450px;">

            <div class="swiper-container swiper-parent">
                <div class="swiper-wrapper">
                    <div class="swiper-slide video-wrap">
                    	<video poster="videos/cake.jpg" preload="auto" loop autoplay muted>
                        	<source src='videos/cake.mp4' type='video/mp4' />
                    	</video>
                    </div>                
                    <div class="swiper-slide" style="background-image: url('http://placehold.it/2000x902');"></div>
                    <div class="swiper-slide" style="background-image: url('http://placehold.it/2000x1333');"></div>
                    <div class="swiper-slide" style="background-image: url('http://placehold.it/2000x1333');"></div>
                    <div class="swiper-slide" style="background-image: url('http://placehold.it/2000x1333');"></div>
                </div>
                <div id="slider-arrow-left"><i class="icon-angle-left"></i></div>
                <div id="slider-arrow-right"><i class="icon-angle-right"></i></div>
            </div>

            <script>
                jQuery(document).ready(function($){
                    var swiperSlider = new Swiper('.swiper-parent',{
                        paginationClickable: false,
                        slidesPerView: 1,
                        onSlideChangeEnd: function(swiper){
                            $('#slider .swiper-slide').each(function(){
                                if($(this).find('video').length > 0) { $(this).find('video').get(0).pause(); }
                            });
                            $('#slider .swiper-slide:not(".swiper-slide-active")').each(function(){
                                if($(this).find('video').length > 0) {
                                    if($(this).find('video').get(0).currentTime != 0 ) $(this).find('video').get(0).currentTime = 0;
                                }
                            });
                            if( $('#slider .swiper-slide.swiper-slide-active').find('video').length > 0 ) { $('#slider .swiper-slide.swiper-slide-active').find('video').get(0).play(); }
                        }
                    });

                    $('#slider-arrow-left').on('click', function(e){
                        e.preventDefault();
                        swiperSlider.swipePrev();
                    });

                    $('#slider-arrow-right').on('click', function(e){
                        e.preventDefault();
                        swiperSlider.swipeNext();
                    });
                });
            </script>

        </section><!-- end -->

        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap bgcolor-grey-light">

                <div class="container clearfix">

                    <div class="postcontent nobottommargin col_last clearfix">

                        <div class="single-event">

                            <div class="col_three_fourth">
                                <div class="entry-image nobottommargin">
                                    <a href="#"><img src="http://placehold.it/1000x600" alt=""></a>
                                </div>
                            </div>
                            <div class="col_one_fourth col_last">
                                <div class="panel panel-default events-meta">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Details:</h3>
                                    </div>
                                    <div class="panel-body">
                                        <ul class="iconlist nobottommargin">
                                            <li><i class="icon-calendar3"></i> 17th Nov, 2015</li>
                                            <li><i class="icon-time"></i> 6pm - 10pm</li>
                                            <li><i class="icon-map-marker2"></i> New York, NY</li>
                                            <li><i class="icon-dollar"></i> <strong>29.99</strong></li>
                                        </ul>
                                    </div>
                                </div>
                                <a href="#" class="btn btn-warning btn-block btn-md">RSVP</a>
                            </div>

                            <div class="clear"></div>

                            <div class="col_three_fourth">

                                <h3>NYC Restaurant Week</h3>

                                <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>

                                    <p>Nullam id dolor id nibh ultricies vehicula ut id elit. <a href="#">Curabitur blandit tempus porttitor</a>. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Vestibulum id ligula porta felis euismod semper.</p>

                                    <blockquote><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper.</p></blockquote>

                                    <p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Donec id elit non mi porta gravida at eget metus.</p>

                                    <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean lacinia bibendum nulla sed consectetur. Cras justo odio, dapibus ac facilisis in, egestas eget quam. <a href="#">Nullam quis risus eget urna</a> mollis ornare vel eu leo. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>

                            </div>

                        </div>

                    </div>

                    <div class="sidebar nobottommargin clearfix">
                        <div class="sidebar-widgets-wrap">

                            <div class="widget clearfix">

                                <h4>Other Events</h4>
                                <div id="post-list-footer">

                                    <div class="spost clearfix">
                                        <div class="entry-image">
                                            <a href="#" class="nobg"><img src="http://placehold.it/100x100" alt=""></a>
                                        </div>
                                        <div class="entry-c">
                                            <div class="entry-title">
                                                <h4><a href="#">NYC Restaurant Week</a></h4>
                                                <p class="nobottommargin">Lorem ipsum dolor sit amet consectetur adipis...</p>
                                            </div>
                                            <ul class="entry-meta">
                                                <li>17th Dec 2015</li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="spost clearfix">
                                        <div class="entry-image">
                                            <a href="#" class="nobg"><img src="http://placehold.it/100x100" alt=""></a>
                                        </div>
                                        <div class="entry-c">
                                            <div class="entry-title">
                                                <h4><a href="#">Kids Food Fest</a></h4>
                                                <p class="nobottommargin">Lorem ipsum dolor sit amet consectetur adipis...</p>
                                            </div>
                                            <ul class="entry-meta">
                                                <li>8th June 2015</li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="spost clearfix">
                                        <div class="entry-image">
                                            <a href="#" class="nobg"><img src="http://placehold.it/100x100" alt=""></a>
                                        </div>
                                        <div class="entry-c">
                                            <div class="entry-title">
                                                <h4><a href="#">Taste of the Old World</a></h4>
                                                <p class="nobottommargin">Lorem ipsum dolor sit amet consectetur adipis...</p>
                                            </div>
                                            <ul class="entry-meta">
                                                <li>22nd Sept 2015</li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>

                            </div>

                            <div class="widget quick-contact-widget clearfix">

                                <h4>Get in Touch</h4>
                                <div id="quick-contact-form-result" data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>
                                <form id="quick-contact-form" name="quick-contact-form" action="include/quickcontact.php" method="post" class="quick-contact-form nobottommargin">
                                    <div class="form-process"></div>
                                    
                                    <input type="text" class="required sm-form-control input-block-level" id="quick-contact-form-name" name="quick-contact-form-name" value="" placeholder="Full Name" />
                                    <input type="text" class="required sm-form-control email input-block-level" id="quick-contact-form-email" name="quick-contact-form-email" value="" placeholder="Email Address" />
                                    <textarea class="required sm-form-control input-block-level short-textarea" id="quick-contact-form-message" name="quick-contact-form-message" rows="4" cols="30" placeholder="Message"></textarea>
                                    <input type="text" class="hidden" id="quick-contact-form-botcheck" name="quick-contact-form-botcheck" value="" />
                                    <button type="submit" id="quick-contact-form-submit" name="quick-contact-form-submit" class="btn button button-small nomargin" value="submit">Send Email</button>
                                </form>

                                <script type="text/javascript">

                                    $("#quick-contact-form").validate({
                                        submitHandler: function(form) {
                                            $(form).find('.form-process').fadeIn();
                                            $(form).ajaxSubmit({
                                                target: '#quick-contact-form-result',
                                                success: function() {
                                                    $(form).find('.form-process').fadeOut();
                                                    $(form).find('.sm-form-control').val('');
                                                    $('#quick-contact-form-result').attr('data-notify-msg', $('#quick-contact-form-result').html()).html('');
                                                    IGNITE.widget.notifications($('#quick-contact-form-result'));
                                                }
                                            });
                                        }
                                    });

                                </script>

                            </div>

                        </div>
                    </div>

                </div>

            </div>

        </section><!-- #content end -->

        <!-- Footer
        ============================================= -->
       

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