<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp"%>
<!-- #header end -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4ebe4b5dd8c56619a4b9036bc01619aa&libraries=services,clusterer,drawing"></script>
<body class="stretched">

	<!-- Document Wrapper
    ============================================= -->
	<div id="wrapper" class="clearfix">



		 <!-- Page Title
        ============================================= -->
        <section id="page-title" class="page-title-parallax" style="background-image: url('http://placehold.it/2000x1333'); padding: 120px 0;" data-stellar-background-ratio="0.3">

            <div class="container clearfix">
                <h1>Contact</h1>
                <span>Get in Touch With Us</span>
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">Contact</li>
                </ol>
            </div>

   	  </section><!-- #page-title end -->

        <!-- Contact Form & Map Overlay Section
        ============================================= -->
        <section id="map-overlay">

            <div class="container clearfix">

                <!-- Contact Form Overlay
                ============================================= -->
                <div id="contact-form-overlay" class="clearfix bgcolor-grey">

                    <div class="fancy-title title-dotted-border">
                        <h3>Get in Touch With Us</h3>
                    </div>

                    <div id="contact-form-result" data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>

                    <!-- Contact Form
                    ============================================= -->
                    <form class="nobottommargin" id="template-contactform" name="template-contactform" action="include/sendemail.php" method="post">

                        <div class="col_half">
                            <label for="template-contactform-name">Name <small>*</small></label>
                            <input type="text" id="template-contactform-name" name="template-contactform-name" value="" class="sm-form-control required" />
                        </div>

                        <div class="col_half col_last">
                            <label for="template-contactform-email">Email <small>*</small></label>
                            <input type="email" id="template-contactform-email" name="template-contactform-email" value="" class="required email sm-form-control" />
                        </div>

                        <div class="clear"></div>

                        <div class="col_half">
                            <label for="template-contactform-phone">Phone</label>
                            <input type="text" id="template-contactform-phone" name="template-contactform-phone" value="" class="sm-form-control" />
                        </div>

                        <div class="col_half col_last">
                            <label for="template-contactform-service">Services</label>
                            <select id="template-contactform-service" name="template-contactform-service" class="sm-form-control">
                                <option value="">-- Select One --</option>
                                    <option value="Customer Service">Customer Service</option>
                                    <option value="Manager">Manager</option>
                                    <option value="Advertising">Advertising</option>
                                    <option value="Marketing">Marketing</option>
                            </select>
                        </div>

                        <div class="clear"></div>

                        <div class="col_full">
                            <label for="template-contactform-subject">Subject <small>*</small></label>
                            <input type="text" id="template-contactform-subject" name="template-contactform-subject" value="" class="required sm-form-control" />
                        </div>

                        <div class="col_full">
                            <label for="template-contactform-message">Message <small>*</small></label>
                            <textarea class="required sm-form-control" id="template-contactform-message" name="template-contactform-message" rows="6" cols="30"></textarea>
                        </div>

                        <div class="col_full hidden">
                            <input type="text" id="template-contactform-botcheck" name="template-contactform-botcheck" value="" class="sm-form-control" />
                        </div>

                        <div class="col_full">
                            <button class="btn button nomargin" type="submit" id="template-contactform-submit" name="template-contactform-submit" value="submit">Send Message</button>
                        </div>

                    </form>

                    <script type="text/javascript">
                        $("#template-contactform").validate({
                            submitHandler: function(form) {
                                $('.form-process').fadeIn();
                                $(form).ajaxSubmit({
                                    target: '#contact-form-result',
                                    success: function() {
                                        $('.form-process').fadeOut();
                                        $('#template-contactform').find('.sm-form-control').val('');
                                        $('#contact-form-result').attr('data-notify-msg', $('#contact-form-result').html()).html('');
                                        IGNITE.widget.notifications($('#contact-form-result'));
                                    }
                                });
                            }
                        });
                    </script>

                    <div class="line"></div>

                    <!-- Contact Info
                    ============================================= -->
                    <div class="col_one_third nobottommargin notopmargin">

                        <address>
                            <strong>Address:</strong><br>
                            156 St. James Square<br>
                            New York, NY 64351<br>
                        </address>
                        <strong>Phone:</strong> (341) 457 432678<br>
                        <strong>Fax:</strong> (341) 457 538478<br>
                        <strong>Email:</strong> info@chocolat.com

                    </div><!-- Contact Info End -->

                    <!-- Twitter
                    ============================================= -->
                    <div class="col_two_third col_last nobottommargin notopmargin">

                        <div id="twitter-scroller" class="fslider testimonial twitter-scroll" data-animation="slide" data-arrows="false">
                            <i class="i-plain i-large blue icon-twitter2 nobottommargin"></i>
                            <div class="flexslider" style="width: auto;">
                                <div class="slider-wrap">
                                    <div class="slide"></div>
                                </div>
                            </div>
                        </div>
                        
                        <script type="text/javascript">

                            jQuery(document).ready(function($){
                                $.getJSON('include/twitter/tweets.php?username=envato&count=3', function(tweets){
                                    $("#twitter-scroller .slider-wrap").html(sm_format_twitter3(tweets));
                                });
                            });

                        </script>                        

                    </div><!-- Twitter End -->

                </div><!-- Contact Form Overlay End -->

            </div>

            <!-- Google Map
            ============================================= -->
            <section id="google-map" class="gmap"></section>

            <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
            <script type="text/javascript" src="js/jquery.gmap.js"></script>

            <script type="text/javascript">

                $('#google-map').gMap({

                    address: 'New York, USA',
                    maptype: 'ROADMAP',
                    zoom: 14,
                    doubleclickzoom: false,
                    controls: {
                        panControl: true,
                        zoomControl: true,
                        mapTypeControl: true,
                        scaleControl: false,
                        streetViewControl: false,
                        overviewMapControl: false
                    }

                });

            </script><!-- Google Map End -->

        </section><!-- Contact Form & Map Overlay Section End -->
        
		<div class="section nobottommargin notopmargin bgcolor-grey-light">                                                          
                    <div class="container">
                    <div class="fancy-title title-border title-center">
                        <h3>Chef's</h3>
                    </div>

                    <div id="oc-team-list" class="owl-carousel team-carousel">

                        <div class="oc-item">
                            <div class="team team-list clearfix">
                                <div class="team-image">
                                    <img src="http://placehold.it/400x300" alt="">
                                </div>
                                <div class="team-desc">
                                    <div class="team-title"><h4>John Mitchell</h4><span>Executive Chef</span></div>
                                    <div class="team-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet est sed tellus gravida 
                                        tempus quis malesuada nisi. Maecenas posuere tristique ipsum eget tincidunt. Phasellus in venenatis enim.</p>
                                    </div>
                                    <a href="#" class="social-icon si-light si-small si-facebook">
                                        <i class="icon-facebook"></i>
                                        <i class="icon-facebook"></i></a>
                                    <a href="#" class="social-icon si-light si-small si-twitter">
                                        <i class="icon-twitter"></i>
                                        <i class="icon-twitter"></i></a>
                                    <a href="#" class="social-icon si-light si-small si-gplus">
                                        <i class="icon-gplus"></i>
                                        <i class="icon-gplus"></i></a>                                 
                            	</div>
                            </div>
                        </div>
                        <div class="oc-item">
                            <div class="team team-list">
                                <div class="team-image">
                                    <img src="http://placehold.it/400x300" alt="">                                
                                </div>
                                <div class="team-desc">
                                    <div class="team-title"><h4>Michael Jones</h4><span>Head Chef</span></div>
                                    <div class="team-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet est sed tellus gravida 
                                        tempus quis malesuada nisi. Maecenas posuere tristique ipsum eget tincidunt. Phasellus in venenatis enim.</p>
                                    </div>
                                    <a href="#" class="social-icon si-light si-small si-flickr">
                                        <i class="icon-flickr"></i>
                                        <i class="icon-flickr"></i></a>
                                    <a href="#" class="social-icon si-light si-small si-twitter">
                                        <i class="icon-twitter"></i>
                                        <i class="icon-twitter"></i></a>
                                    <a href="#" class="social-icon si-light si-small si-dribbble">
                                        <i class="icon-dribbble"></i>
                                        <i class="icon-dribbble"></i></a>                             	
                            	</div>
                            </div>
                        </div>
                        <div class="oc-item">
                            <div class="team team-list">
                                <div class="team-image">
                                    <img src="http://placehold.it/400x300" alt="">                                
                                </div>
                                <div class="team-desc">
                                    <div class="team-title"><h4>Sarah Panini</h4><span>Sous-Chef</span></div>
                                    <div class="team-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet est sed tellus gravida 
                                        tempus quis malesuada nisi. Maecenas posuere tristique ipsum eget tincidunt. Phasellus in venenatis enim.</p>
                                    </div>
                                    <a href="#" class="social-icon si-light si-small si-facebook">
                                        <i class="icon-facebook"></i>
                                        <i class="icon-facebook"></i></a>
                                    <a href="#" class="social-icon si-light si-small si-twitter">
                                        <i class="icon-twitter"></i>
                                        <i class="icon-twitter"></i></a>
                                    <a href="#" class="social-icon si-light si-small si-linkedin">
                                        <i class="icon-linkedin"></i>
                                        <i class="icon-linkedin"></i></a>                            	
                            	</div>
                            </div>
                        </div>
                        <div class="oc-item">
                            <div class="team team-list clearfix">
                                <div class="team-image">
                                    <img src="http://placehold.it/400x300" alt="">                                
                                </div>
                                <div class="team-desc">
                                    <div class="team-title"><h4>David Spaghetti</h4><span>Chef de Partie</span></div>
                                    <div class="team-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet est sed tellus gravida 
                                        tempus quis malesuada nisi. Maecenas posuere tristique ipsum eget tincidunt. Phasellus in venenatis enim.</p>
                                    </div>
                                    <a href="#" class="social-icon si-light si-small si-facebook">
                                        <i class="icon-facebook"></i>
                                        <i class="icon-facebook"></i></a>
                                    <a href="#" class="social-icon si-light si-small si-skype">
                                        <i class="icon-skype"></i>
                                        <i class="icon-skype"></i></a>
                                    <a href="#" class="social-icon si-light si-small si-flickr">
                                        <i class="icon-flickr"></i>
                                        <i class="icon-flickr"></i></a>                            	
                            	</div>
                            </div>
                        </div>
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

		<!-- Footer
        ============================================= -->


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