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
			<h4>��ŸƮ��</h4>
			<h4>ȸ�������� ���ϵ帳�ϴ�! �����մϴ�</h4>
			<div class="clearfix" style="text-align: center;">
				<button onclick="goLogin()"
					class="button button-medium button-reveal button-3d button-rounded tright nomargin"
					style="color: black;">
					<span>�α���</span> <i class="icon-angle-right"></i>
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