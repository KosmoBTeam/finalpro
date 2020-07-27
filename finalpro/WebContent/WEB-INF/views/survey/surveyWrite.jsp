<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.jsp"%>

<body class="stretched">
   <script>
      
   </script>
   <!-- Document Wrapper
-->
   <div id="wrapper" class="clearfix">

      <!-- #header end -->

      <!-- Page Title
    ============================================= -->
      <section id="page-title" class="page-title-parallax"
         style="background-image: url(&quot;resources/images/survey/surveymain.png&quot;); padding: 120px 0;"
         data-stellar-background-ratio="0.3">

         <div class="container clearfix">
            <h1>여행 가이드</h1>
            <span>StarTrip Trip Guide</span>
            <ol class="breadcrumb">
               <li><a href="index.jsp">Home</a></li>
               <li class="active">설문조사</li>
            </ol>
         </div>

      </section>
      <!-- #page-title end -->

      <!-- Contact Form & Map Overlay Section
    ============================================= -->
      <section id="map-overlay">

         <div class="container clearfix">

            <!-- Contact Form Overlay
            ============================================= -->
            <div id="contact-form-overlay" class="clearfix bgcolor-grey">

               <div class="fancy-title title-dotted-border">
                  <h3>설문조사</h3>
               </div>
               <!-- submit후 완료 메세지 장소 -->
               <div></div>

               <!-- Contact Form
                ============================================= -->
               <form class="nobottommargin" id="template-contactform"
                  name="template-contactform" action="goSurveyDetail" method="post">
                  <c:forEach var="e" items="${list}" varStatus="i">
                     <div class="col_full">
                        <c:forEach var="v" items="${e}" varStatus="j">
                           <c:if test="${j.index==0 }">
                              <label for="template-contactform-subject" class="radio-inline"><h4><strong>${i.count}
                                    . ${v.sub}</strong></h4></label>
                              <br>
                           </c:if>

                           <label class="radio"> 
                  <strong>&emsp;&emsp;<input type="radio" id="inlineRadio1" value="${v.subtype}" name="subtype${i.count}">${v.surveytitle}</strong>   
                           </label>
                        
                        </c:forEach>
                     </div>
                  </c:forEach>
                  <div class="col_full hidden">
                     <input type="text" id="template-contactform-botcheck"
                        name="template-contactform-botcheck" value=""
                        class="sm-form-control" />
                  </div>

                  <div class="col_full">
                     <button class="btn button nomargin" type="button"
                        id="template-contactform-submit"
                        name="template-contactform-submit" value="submit">결과 보기</button>
                  </div>
               </form>

               <div class="line"></div>

               <!-- Contact Info
                ============================================= -->
               <div class="col_one_third nobottommargin notopmargin">

                  <strong>Email:</strong> yoonjea@naver.com<br> <strong>Ps)</strong>
                  자세한 문의는 메일주세요

               </div>
               <!-- Contact Info End -->


            </div>
            <!-- Contact Form Overlay End -->

         </div>


      </section>

      <!-- Contact Form & Map Overlay Section End -->
   </div>
   <!-- #wrapper end -->

   <!-- Go To Top
-->
   <div id="gotoTop" class="icon-angle-up"></div>

   <!-- Footer Scripts
-->
   <script type="text/javascript" src="resources/js/functions.js"></script>

   <script>
   $(function() {
      $('#template-contactform-submit').click(
            function() {
                     var flag = 0;
                     var radio_name = []; //array 
                     var radio = $("input[type=radio]");
                     var surveyForm = document
                           .getElementById("template-contactform");
                     $.each(radio, function(key, value) { // input radio의 name 값을 가져옵니다.
                        radio_name.push($(value).attr('name'));
                     });
                     
                     radio_name = $.unique(radio_name); //중복요소 이름을 제거       
                     console.log(radio_name)
                     rr:for (var i = 0; i < radio_name.length; i++) {
                        var e = $('input:radio[name="'+ radio_name[i] + '"]').is(":checked")
                        if (e == false) {
                           flag = 1;
                           alert((i + 1) + '번째 설문문항 항목을 선택해주세요!');
                           break rr;
                        }
                     }
                     if (flag == 0) {
                        surveyForm.submit();
                     }
                  });
   });
   </script>
</body>
</html>
<%@include file="../footer.jsp"%>