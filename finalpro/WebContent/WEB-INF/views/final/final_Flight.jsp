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

        <section id="slider" class="full-screen" style="background: url(http://placehold.it/2000x1333) center;">

            <div class="container clearfix vertical-middle dark">

                <div class="heading-block title-center nobottomborder topmargin-md">
                    <h2 class="uppercase">Hello! Our Website is Currently Under Construction</h2>
                    <span>Please check back soon or subscribe below to get email updates. Thanks.</span>                </div>

                <div id="countdown-ex1" class="countdown countdown-medium coming-soon divcenter bottommargin" style="max-width:500px;"></div>

                <div id="widget-subscribe-form-result" data-notify-type="success" data-notify-msg=""></div>
                <form id="widget-subscribe-form" action="include/subscribe.php" role="form" method="post" class="nobottommargin">
                    <div class="input-group input-group-md divcenter" style="max-width:400px;">
                        <input type="email" name="widget-subscribe-form-email" class="form-control required email" placeholder="Enter your Email">
                        <span class="input-group-btn"><button class="btn btn-default" type="submit">Subscribe Now</button></span>                    </div>
                </form>

                <script>
                    jQuery(document).ready( function($){
                        var newDate = new Date(2015, 5, 15);
                        $('#countdown-ex1').countdown({until: newDate});
                    });
                    $("#widget-subscribe-form").validate({
                        submitHandler: function(form) {
                            $(form).find('.input-group-addon').find('.icon-email2').removeClass('icon-email2').addClass('icon-line-loader icon-spin');
                            $(form).ajaxSubmit({
                                target: '#widget-subscribe-form-result',
                                success: function() {
                                    $(form).find('.input-group-addon').find('.icon-line-loader').removeClass('icon-line-loader icon-spin').addClass('icon-email2');
                                    $('#widget-subscribe-form').find('.form-control').val('');
                                    $('#widget-subscribe-form-result').attr('data-notify-msg', $('#widget-subscribe-form-result').html()).html('');
                                    IGNITE.widget.notifications($('#widget-subscribe-form-result'));
                                }
                            });
                        }
                    });
                </script>
            	</div>

      </section>

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