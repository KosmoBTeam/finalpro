<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE html>
<html dir="ltr" lang="ko">
 <%@include file="../header.jsp" %>

<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

       

        <!-- Page Title
        ============================================= -->
        <section id="page-title" class="page-title-dark">

            <div class="container clearfix">
                <h1>Events Parallax</h1>
                <span>A List of Your Events Utilizing Parallax</span>
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">Events</li>
                </ol>
            </div>

        </section><!-- #page-title end -->

        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap">

                <div id="events" class="single-event header-stick footer-stick clearfix">

                    <div class="event entry-image parallax nobottommargin" style="background-image: url('http://placehold.it/2000x1333'); height:600px" data-stellar-background-ratio="0.3">
                        <div class="entry-overlay-meta">
                            <h2><a href="#">NYC Craft Beer Festival 2015</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>Date:</strong> 12th Oct, 2015</li>
                                <li><i class="icon-time"></i> <strong>Timing:</strong> 2pm - 4pm</li>
                                <li><i class="icon-map-marker2"></i> <strong>Location:</strong> New York, NY</li>
                                <li><i class="icon-dollar"></i> <strong>29.00</strong></li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown1" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate1 = new Date(2015, 10, 12);
                                $('#event-countdown1').countdown({until: eventStartDate1});
                            });
                        </script>
                    </div>
                    
		  			<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>NYC Craft Beer Festival 2015</h3>
                            	<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eleifend nisi augue in fringilla sapien gravida sed. Quisque posuere vel erat ac accumsan. Cras vestibulum mi ac magna porttitor maximus etiam ac libero quis tellus.</span>                       
                            </div>
                    	</div>
           	  		</div>                    

                    <div class="event entry-image parallax overlay-left nobottommargin video-wrap" data-stellar-background-ratio="0.8">
                            <video class="entry-image parallax nobottommargin video-wrap" data-stellar-background-ratio="0.6" 
                            poster="videos/dinner.jpg" preload="auto" loop autoplay muted>
                                <source src='videos/dinner.mp4' type='video/mp4' />
                            </video>
                        <div class="entry-overlay-meta">
                            <h2><a href="#">League of Kitchens</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>Date:</strong> 17th Sept, 2015</li>
                                <li><i class="icon-time"></i> <strong>Timing:</strong> 2pm - 4pm</li>
                                <li><i class="icon-map-marker2"></i> <strong>Location:</strong> New York, NY</li>
                                <li><i class="icon-dollar"></i> <strong>29.00</strong></li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown2" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate2 = new Date(2015, 9, 17);
                                $('#event-countdown2').countdown({until: eventStartDate2});
                            });
                        </script>
                    </div>
                    
		  			<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>League of Kitchens</h3>
                            	<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eleifend nisi augue in fringilla sapien gravida sed. Quisque posuere vel erat ac accumsan. Cras vestibulum mi ac magna porttitor maximus etiam ac libero quis tellus.</span>                       
                            </div>
                    	</div>
           	  		</div>                    

                    <div class="event entry-image parallax nobottommargin" style="background-image: url('http://placehold.it/2000x1333'); height:600px" data-stellar-background-ratio="0.3">
                        <div class="entry-overlay-meta">
                            <h2><a href="#">Just Food Conference</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>Date:</strong> 28th July, 2015</li>
                                <li><i class="icon-time"></i> <strong>Timing:</strong> 2pm - 4pm</li>
                                <li><i class="icon-map-marker2"></i> <strong>Location:</strong> New York, NY</li>
                                <li><i class="icon-dollar"></i> <strong>29.00</strong></li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown3" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate3 = new Date(2015, 7, 28);
                                $('#event-countdown3').countdown({until: eventStartDate3});
                            });
                        </script>
                    </div>
                    
		  			<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>Just Food Conference</h3>
                            	<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eleifend nisi augue in fringilla sapien gravida sed. Quisque posuere vel erat ac accumsan. Cras vestibulum mi ac magna porttitor maximus etiam ac libero quis tellus.</span>                       
                            </div>
                    	</div>
           	  		</div>                    

                    <div class="event entry-image parallax overlay-left nobottommargin" style="background-image: url('http://placehold.it/2000x1333'); height:600px" data-stellar-background-ratio="0.3">
                        <div class="entry-overlay-meta">
                            <h2><a href="#">Coffee &amp; Tea Festival</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>Date:</strong> 11th July, 2015</li>
                                <li><i class="icon-time"></i> <strong>Timing:</strong> 2pm - 4pm</li>
                                <li><i class="icon-map-marker2"></i> <strong>Location:</strong> New York, NY</li>
                                <li><i class="icon-dollar"></i> <strong>29.00</strong></li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown4" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate4 = new Date(2015, 7, 11);
                                $('#event-countdown4').countdown({until: eventStartDate4});
                            });
                        </script>
                    </div>
                    
		  			<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>Coffee &amp; Tea Festival</h3>
                            	<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eleifend nisi augue in fringilla sapien gravida sed. Quisque posuere vel erat ac accumsan. Cras vestibulum mi ac magna porttitor maximus etiam ac libero quis tellus.</span>                       
                            </div>
                    	</div>
           	  		</div>                    

                    <div class="event entry-image parallax overlay-left nobottommargin" style="background-image: url('http://placehold.it/2000x1333'); height:600px" data-stellar-background-ratio="0.3">
                        <div class="entry-overlay-meta">
                            <h2><a href="#">Bacon &amp; Beer Classic</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>Date:</strong> 3rd June, 2015</li>
                                <li><i class="icon-time"></i> <strong>Timing:</strong> 2pm - 4pm</li>
                                <li><i class="icon-map-marker2"></i> <strong>Location:</strong> New York, NY</li>
                                <li><i class="icon-dollar"></i> <strong>29.00</strong></li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown5" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate5 = new Date(2015, 6, 3);
                                $('#event-countdown5').countdown({until: eventStartDate5});
                            });
                        </script>
                    </div>
                    
		  			<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>Bacon &amp; Beer Classic</h3>
                            	<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eleifend nisi augue in fringilla sapien gravida sed. Quisque posuere vel erat ac accumsan. Cras vestibulum mi ac magna porttitor maximus etiam ac libero quis tellus.</span>                       
                            </div>
                    	</div>
           	  		</div>                    

                </div>

            </div>

        </section><!-- #content end -->

      

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

