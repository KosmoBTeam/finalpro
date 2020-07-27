<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<head>

<meta http-equiv="content-type" content="text/html; charset=EUC-KR" />
<meta name="description" content="Bootstrap 3 Website Template" />

<!-- Stylesheets
    ============================================= -->
<link rel="icon" type="image/png" sizes="16x16"
   href="resources/images/favicon/favicon-16x16.png">
  <link rel="stylesheet" href="resources/css/weather-icons.min.css">
<link rel="icon" type="image/png" sizes="32x32"
   href="resources/images/favicon/favicon-32x32.png">
<link
   href="http://fonts.googleapis.com/css?family=PT+Sans:300,400,500,600,700"
   rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="resources/css/bootstrap.css"
   type="text/css" />
<link rel="stylesheet" href="resources/css/style.css" type="text/css" />
<link rel="stylesheet" href="resources/css/dark.css" type="text/css" />
<link rel="stylesheet" href="resources/css/font-icons.css"
   type="text/css" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/animate.css"
   type="text/css" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/magnific-popup.css"
   type="text/css" />

<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/responsive.css"
   type="text/css" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, maximum-scale=1" />
<!--[if lt IE 9]>
       <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->

<!-- External JavaScripts
    ============================================= -->
<script type="text/javascript"
   src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript"
   src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>

<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
<script type="text/javascript"
   src="${pageContext.request.contextPath}/resources/include/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript"
   src="${pageContext.request.contextPath}/resources/include/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/include/rs-plugin/css/settings.css"
   media="screen" />

<!-- Document Title
    ============================================= -->
<title>StarTrip</title>

<style>
.revo-slider-emphasis-text {
   font-size: 70px;
   font-weight: 700;
   letter-spacing: 0px;
   padding: 15px 20px;
   border-top: 2px solid #FFF;
   border-bottom: 2px solid #FFF;
}

.revo-slider-desc-text {
   font-size: 26px;
   width: 650px;
   text-align: center;
   line-height: 1.5;
}

.revo-slider-caps-text {
   font-size: 30px;
   font-weight: 400;
}

.tparrows.preview2 .tp-arr-titleholder {
   text-transform: uppercase;
   font-weight: 600;
}

.form-control {
   width: 900px;
}
</style>
<script type="text/javascript">
   $(document).ready(function() {
      setInterval(function() {
         location.href="logout";
      }, 1800000);
   });
</script>
</head>

<!-- Header
        ============================================= -->
<header id="header" class="transparent-header full-header"
   data-sticky-class="not-dark">
   <div id="header-wrap">
      <div class="container clearfix">
         <div id="primary-menu-trigger">
            <i class="icon-reorder"></i>
         </div>
         <!-- Logo
                    ============================================= -->
         <div id="logo">
            <a href="main" class="standard-logo"
               data-dark-logo="resources/images/logo/logo-dark.png"><img
               src="resources/images/logo/logo.png" alt="Chocolat Logo"></a> <a
               href="index.jsp" class="retina-logo"
               data-dark-logo="resources/images/logo/logo-dark-large.png"><img
               src="resources/images/logo/logo-large.png" alt="Chocolat Logo"></a>
         </div>
         <!-- #logo end -->
         <!-- Primary Navigation
                    ============================================= -->
         <nav id="primary-menu">
            <ul>
               <li class="current"><a href="main"><div>Home</div></a></li>
               <li><a href="#"><div>예약</div></a>
                  <ul>
                     <li><a href="goHotelMain"><div>호텔 예약</div></a></li>
                       
                 
                  

                 
                     <li><!-- <a href="sub-page-dark.jsp"><div>Sub Page Dark</div></a></li> -->
                     <!-- <li><a href="faqs.jsp"><div>FAQs</div></a></li> -->
                     <!-- <li><a href="404.jsp"><div>404</div></a></li> -->
                     <!-- <li><a href="coming-soon.jsp"><div>Coming Soon</div></a></li> -->
                  </ul></li>
                  
                  <li><a href="#"><div>실시간 코로나</div></a> 
                  
               <li><a href="goLocalMain"><div>국내 여행지</div></a>
                  <ul>
                     <li><a href="goLocalMain"><div>전국</div></a></li>
                     <li><a href="goLocalMain"><div>패키지 여행</div></a></li>
                  </ul></li>
               <li><a href="#"><div>여행 후기</div></a>
                  <ul>
                     <li><a href="goReviewMain"><div>여행 게시판</div></a></li>
                     <li><a href="goReviewWrite"><div>여행 후기 남기기</div></a></li>                     
                  </ul></li>

               <li><a href="#"><div>여행 가이드</div></a>
                  <ul>
                     <li><a href="goSurveyWrite"><div>나만의 여행지 찾기</div></a></li>
                     <li><a href="goSurveyWrite"><div>주변 명소 모아보기</div></a></li>
                  </ul></li>
               <c:choose>
                  <c:when test="${sessionScope['email'] == null}">
                     <li><a href="#"><div>로그인/회원가입</div></a>
                        <ul>
                           <li><a href="goMember"><div>회원가입</div></a></li>
                           <li><a href="goLogin"><div>로그인</div></a></li>
                        </ul></li>
                  </c:when>
                  <c:when test="${sessionScope['email'] != null}">
                     <li><a href="#"><div>${sessionScope['name']} 님</div></a>
                        <ul>
                           <li><a href="goMypage?id=${sessionScope['id']}"><div>마이페이지</div></a></li>
                           <li><a href="logout"><div>로그아웃</div></a></li>
                           <li><a href="#"><div>버킷 리스트</div></a></li>
                        </ul></li>
                  </c:when>
               </c:choose>
            </ul>
         </nav>
         <!-- #primary-menu end -->
      </div>
   </div>
</header>
<!-- #header end -->