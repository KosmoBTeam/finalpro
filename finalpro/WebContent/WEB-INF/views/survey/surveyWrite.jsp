<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.jsp"%>

<body class="stretched">

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

              <div class="col_half">
                 <label for="template-contactform-name">이름 <small>*</small></label>
                 <input type="text" id="template-contactform-name"
                    name="template-contactform-name" value=""
                    class="sm-form-control required" />
              </div>

              <div class="col_half col_last">
                 <label for="template-contactform-email">이메일 <small>*</small></label>
                 <input type="email" id="template-contactform-email"
                    name="template-contactform-email" value=""
                    class="required email sm-form-control" />
              </div>

              <div class="clear"></div>

              <div class="col_half">
                 <label for="template-contactform-phone">전화번호</label> <input
                    type="text" id="template-contactform-phone"
                    name="template-contactform-phone" value=""
                    class="sm-form-control" />
              </div>


              <div class="clear"></div>
              <c:forEach var="e" items="${list}" varStatus="i">
                 <div class="col_full">
                    <c:forEach var="v" items="${e}" varStatus="j">
                       <c:if test="${j.index==0 }">
                          <label for="template-contactform-subject" class="radio-inline"><strong>${i.count} .</strong> ${v.sub}</label>
                          <br>
                       </c:if>

                       <label class="radio-inline"> <input type="radio"
                          id="inlineRadio1" value="${v.subtype}" name="subtype${i.count }">${v.surveytitle}
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
                 <button class="btn button nomargin" type="submit"
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

</body>
</html>
<%@include file="../footer.jsp"%>