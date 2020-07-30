<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.jsp"%>
<body>
   <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
   <title>Login</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <!--===============================================================================================-->
   <link rel="icon" type="image/png"
      href="resources/images/icons/favicon.ico" />
   <!--===============================================================================================-->
   <link rel="stylesheet" type="text/css"
      href="resources/vendor/bootstrap/css/bootstrap.min.css" />
   <!--===============================================================================================-->
   <link rel="stylesheet" type="text/css"
      href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
   <!--===============================================================================================-->
   <link rel="stylesheet" type="text/css"
      href="resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" />
   <!--===============================================================================================-->
   <link rel="stylesheet" type="text/css"
      href="resources/vendor/animate/animate.css" />
   <!--===============================================================================================-->
   <!--===============================================================================================-->
   <link rel="stylesheet" type="text/css"
      href="resources/vendor/animsition/css/animsition.min.css" />
   <!--===============================================================================================-->
   <link rel="stylesheet" type="text/css"
      href="resources/vendor/select2/select2.min.css" />
   <!--===============================================================================================-->
   <link rel="stylesheet" type="text/css"
      href="resources/vendor/daterangepicker/daterangepicker.css" />
   <!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="resources/css/util.css" />
   <link rel="stylesheet" type="text/css" href="resources/css/main.css" />
   <script type="text/javascript"
      src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"
      charset="utf-8"></script>
   <script type="text/javascript"
      src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
      
   <style type="text/css">
html, div, body, h3 {
   margin: 0;
   padding: 0;
}

h3 {
   display: inline-block;
   padding: 0.6em;
}

</style>

   <div class="limiter">
      <div class="container-login100">
         <div class="wrap-login100">
            <div class="login100-form-title-2"
               style="background-image: url('resources/images/kakaopayimg.jpg');">
            </div>

            <%-- <form class="login100-form validate-form" action="<c:url value='/member/memLogin'/>" method="post" >  --%>
            <form class="login100-form validate-form" action="kakao.jsp"
               onsubmit="return beforeSubmit()" method="post"
               style="padding: 43px 88px 93px 190px;">
               
               <div class="wrap-input100 validate-input m-b-26">
                  <span class="label-input100">호텔명</span> <input class="input100"
                     type="text" id="totalPrice" value="${list.honame}">
                  <span class="focus-input100"></span>
               </div>
               
               <div class="wrap-input100 validate-input m-b-26">
                  <span class="label-input100">예약자</span> <input class="input100"
                     type="text" id="name" name="name" value="${sessionScope['name']}">
                  <span class="focus-input100"></span>
               </div>
               
               <div class="wrap-input100 validate-input m-b-26">
                  <span class="label-input100">이메일</span> <input class="input100"
                     type="text" id="email" name="email" value="${sessionScope['email']}">
                  <span class="focus-input100"></span>
               </div>
               
               <div class="wrap-input100 validate-input m-b-26">
                  <span class="label-input100">전화번호</span> <input class="input100"
                     type="text" id="phone" name="phone" value="${sessionScope['phone']}">
                  <span class="focus-input100"></span>
               </div>
               
 				<input class="input100" type="hidden" id="address" name="address" value="${sessionScope['address']}">
               
               <div class="wrap-input100 validate-input m-b-26">
                  <span class="label-input100">객실 종류</span> <input class="input100"
                     type="text" value="${list.roomtype}">
                  <span class="focus-input100"></span>
               </div>
               
               <div class="wrap-input100 validate-input m-b-26">
                  <span class="label-input100">체크인</span> <input class="input100"
                     type="text" value="${list.checkin}">
                  <span class="focus-input100"></span>
               </div>
               
               <div class="wrap-input100 validate-input m-b-26">
                  <span class="label-input100">체크아웃</span> <input class="input100"
                     type="text" value="${list.checkout}">
                  <span class="focus-input100"></span>
               </div>
               
               <div class="wrap-input100 validate-input m-b-26">
                  <span class="label-input100">인원수</span> <input class="input100"
                     type="text" value="${list.people}명">
                  <span class="focus-input100"></span>
               </div>
               
               <div class="wrap-input100 validate-input m-b-26">
                  <span class="label-input100">총 가격</span> <input class="input100"
                     type="text" id="totalPrice" name="totalPrice" value="${list.pay}">
                  <span class="focus-input100"></span>
               </div>


               <div class="container-login100-form-btn">
               		<input class="login100-form-btn" type="submit" value="결제하기" style="background-color: #EAAF22;">&nbsp;&nbsp;
               		<input class="login100-form-btn" type="reset" value="취소하기" style="background-color: #EAAF22;">
               </div>
            </form>

         </div>
      </div>
   </div>


   <%@include file="../footer.jsp"%>
   <script type="text/javascript">
      
   </script>
</body>
</html>