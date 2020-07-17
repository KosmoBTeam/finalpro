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
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  <style type="text/css">
  html, div, body,h3{
  	margin: 0;
  	padding: 0;
  }
  h3{
  	display: inline-block;
  	padding: 0.6em;
  }
  </style>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title"
					style="background-image: url(<c:url value='/resources/images/bg-01.jpg'/>);">
					<!-- 					<span class="login100-form-title-1"></span> -->
					<span class="login100-form-title-1">Hotel Delluna</span>
				</div>

				<%-- <form class="login100-form validate-form" action="<c:url value='/member/memLogin'/>" method="post" >  --%>
				<form class="login100-form validate-form" action="login"
					onsubmit="return beforeSubmit()" method="post">
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="ID를 입력해주세요">
						<span class="label-input100">아이디</span> <input class="input100"
							type="text" id="m_id" name="id" placeholder="Enter username">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18"
						data-validate="비밀번호를 입력해주세요">
						<span class="label-input100">비밀번호</span> <input class="input100"
							type="password" id="m_password" name="pwd"
							placeholder="Enter password"> <span
							class="focus-input100"></span>
					</div>
					<font id="aaa" size="2" color="red"> </font>
					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox"
								name="remember-me"> <label class="label-checkbox100"
								for="ckb1"> Remember me </label>
						</div>
						<div>
							<!-- <a href="searchIdpass.jsp" class="txt1"> Forgot Password? </a> -->
						</div>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">로그인</button>
						<button class="login100-form-btn" type="button" value="회원가입"
							onclick="location.href='goMember'">회원가입</button>
						<!-- 	onclick="location.href='MemberAddForm2.jsp'"></button> -->
					</div>
					<input type="hidden" value="${next }" name="next">
					<div id="naver_id_login" style="text-align:center;margin-top: 20px;"><a href="${url}"><img width="223" src="resources/images/naver.PNG"/></a></div>
					<h3>${error}</h3>
				</form>

			</div>
		</div>
	</div>


	<%@include file="../footer.jsp"%>
	<script type="text/javascript">
		
	</script>
</body>
</html>