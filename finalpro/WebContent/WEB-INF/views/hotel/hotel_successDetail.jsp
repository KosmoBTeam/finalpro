<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html dir="ltr" lang="ko">
<%@include file="../header.jsp" %>
<body class="stretched">

   <!-- List 만들어서 결과 확인할수 있게 출력 -->


    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

     <!-- #header end -->
		
        <section id="slider" class="full-screen">
         <img src="resources/images/hotel/hotel111.jpg" style="width: 100%;" >
            <div class="container clearfix vertical-middle dark">

                <div class="heading-block title-center nobottomborder topmargin-md">
                    <p style="color: white; font-size: 50px; text-align: center; font-weight: bold;">이용해 주셔서 감사합니다.</p>
                    
                      
                      
                      
                
   
      
      <!-- 값 받아오기 -->
    
    </div>
       		
               <form class="form-horizontal"  style="margin: 0 auto;" action="goHotelSuccess" method="get">   
              <c:forEach items="${list}" var="list">           
            <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label" style="color: white;">이름</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" value="${sessionScope['name']}" id="name" name="name">
    </div>
  </div>
  
 <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label" style="color: white;">전화번호</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" value="${sessionScope['phone']}" id="phone" name="phone" >
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label" style="color: white;">호텔명</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" value="${list.honame }" id="honame" name="honame" >
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label" style="color: white;">주소</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" value="${list.address }" id="address" name="address">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label" style="color: white;">전화번호</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" value="${list.tel }" id="tel" name="tel">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label" style="color: white;">예약번호</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" value="${list.hrnum }" id="hrnum" name="hrnum">
    </div>
  </div>
  
 <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label" style="color: white;">객실종류</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" value="${list.roomtype }" id="roomtype" name="roomtype" >
    </div>
  </div>
  
  
  
   <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label" style="color: white;">체크인 날짜</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="checkin" name="checkin" value="${list.checkin }">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label" style="color: white;">체크아웃 날짜</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="checkout" name="checkout" value="${list.checkout }">
    </div>
  </div>
  
 
  
   <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label" style="color: white;">인원수</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="people" name="people" value="${list.people }">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label" style="color: white;">가격</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" value="${list.pay }" id="pay" name="pay">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label" style="color: white;">부가세 포함 총 가격</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" value="${list.totalpay }" id="totalpay" name="totalpay">
    </div>
  </div>
  <div class="form-group">
   
    <div class="col-sm-12 text-center" >
     <button type="button" class="btn btn-primary" onclick="location='main'">HOME</button>
    </div>
  </div>
  </c:forEach>
   </form>
  
        </div> </section>
          
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