<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="../header.jsp"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<meta name="description" content="Bootstrap 3 Website Template" />



</head>

<body class="stretched">

	<div class="container clearfix">

		<!-- Contact Form Overlay
                ============================================= -->
		<div id="contact-form-overlay" class="clearfix bgcolor-grey">
			<h4>스타트립</h4>
			<h4>회원가입을 축하드립니다! 감사합니다</h4>
			<div class="clearfix" style="text-align: center;">
				<button onclick="goLogin()"
					class="button button-medium button-reveal button-3d button-rounded tright nomargin"
					style="color: black;">
					<span>로그인</span> <i class="icon-angle-right"></i>
				</button>
			</div>
		</div>
		<!-- Contact Form Overlay End -->

	</div>


	<%@include file="../footer.jsp"%>
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- Footer Scripts
    ============================================= -->
<script type="text/javascript">
function goLogin() {
	location.href="goLogin";
}
</script>

</body>
</html>