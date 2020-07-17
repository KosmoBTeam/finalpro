<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html dir="ltr" lang="ko">
<%@include file="../header.jsp" %>
<body class="stretched" style="text-align: center;">

   <!-- List 만들어서 결과 확인할수 있게 출력 -->


    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

     <!-- #header end -->
		<form action="goHotelSuccess" method="post">
			<c:forEach var="e" items="${list}">
        <section id="slider" class="full-screen">
         <img src="resources/images/hotel/hotel111.jpg" style="width: 100%;" >
            <div class="container clearfix vertical-middle dark">

                <div class="heading-block title-center nobottomborder topmargin-md">
                    <p style="color: white; font-size: 50px; text-align: center; font-weight: bold;">이용해 주셔서 감사합니다.</p>
                    <input type="hidden" value="${e.hrnum }" name="hrnum">

                      
                      
                
   
      
      <!-- 값 받아오기 -->
    
    </div>
    <button type="button" class="btn btn-primary" onclick="location='main'">HOME</button>
    <input type="submit" class="btn btn-primary" value="예약확인" >
  
        </div> </section></c:forEach></form>
          
       </div>
                       
                
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