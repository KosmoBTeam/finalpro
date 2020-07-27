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

	<div class="limiter" style="background-image: url('resourcs/images/main/success.jpg');">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title"
					style="background-color: white;">
					<!-- 					<span class="login100-form-title-1"></span> -->
					<span class="login100-form-title-1" >Start Your Trip!</span>
				</div>

				<%-- <form class="login100-form validate-form" action="<c:url value='/member/memLogin'/>" method="post" >  --%>
				<div class="login100-form validate-form"
					style="padding: 43px 88px 150px 100px;">

					<div class="clearfix">
						<div class="row">
							<!-- <img alt="" src="resources/images/joinsuccess.jpg"
								style="padding-bottom: 30px;"> -->
						</div>
						<div class="row">
							<h1>
								새로운 여행의 시작을 축하 드립니다! <br> <br>여행의 시작은 역시 스타트립!
							</h1>
						</div>

						<button onclick="goLogin()" class="login100-form-btn"
							style=" margin-top: 50px; bottom: 10%; position: absolute; left: 35%;background-color: #EAAF22;">
							로그인
						</button>
					</div>

				</div>

			</div>
		</div>
	</div>


	<%@include file="../footer.jsp"%>
	<script type="text/javascript">
		function goLogin() {
			location.href = "goLogin"
		}
	</script>
</body>
</html>