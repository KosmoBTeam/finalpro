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
				<div class="login100-form-title"
					style="background-image: url(<c:url value='/resources/images/bg-01.jpg'/>);">
					<!-- 					<span class="login100-form-title-1"></span> -->
					<span class="login100-form-title-1">�� �� �� ȣ �� ��</span>
				</div>

				<%-- <form class="login100-form validate-form" action="<c:url value='/member/memLogin'/>" method="post" >  --%>
				<form class="login100-form validate-form" action="changepwd"
					onsubmit="return beforeSubmit()" method="post"
					style="padding: 43px 88px 93px 190px;">
					<div class="row">
						<div class="col-md-6">
							<label for="template-contactform-name">�� ��й�ȣ</label> <br> <input
								type="password" class="well well-sm" id="m_password" size="85"
								name="pwd" placeholder="Password" required="required"
								maxlength="15" style="width: 300px;">
						</div>
					</div>
					<div class="row">
						<div class="col-md-6" style="max-width: 75%;">
							<label for="template-contactform-name">��й�ȣ Ȯ�� </label> <font
								id="PasswordCheck" size="2"> </font> <br> <input
								type="password" class="well well-sm" name="cpwd"
								id="m_password2" size="85" placeholder="Password Check"
								required="required" maxlength="15" style="width: 300px;">
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<label for="template-contactform-name">���� ��й�ȣ</label> <br>
							<input type="password" class="well well-sm" name="nowpwd"
								id="new_password" size="85" placeholder="Password"
								required="required" maxlength="15" style="width: 300px;">
						</div>
					</div>
					<font id="aaa" size="2" color="red"> </font>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit"
							style="background-color: yellow; color: black;">�����ϱ�</button>
						<!-- 	onclick="location.href='MemberAddForm2.jsp'"></button> -->
					</div>
					<input type="hidden" value="${sessionScope['id']}" name="id"
						id="m_id">
				</form>
			</div>
		</div>
	</div>


	<%@include file="../footer.jsp"%>
	<script type="text/javascript">
		$(function() {
			$("#m_password2").keyup(function() {
				if ($("#m_password").val() == $("#m_password2").val()) {
					$("#PasswordCheck").html('��й�ȣ�� ��ġ�մϴ�');
					$("#PasswordCheck").css("color", "blue");
					$('#m_password').change(function() {
						$("#PasswordCheck").html('��й�ȣ�� ��ġ���� �ʽ��ϴ�.');
						$("#PasswordCheck").css("color", "red");
					})
				} else {
					$("#PasswordCheck").html('��й�ȣ�� ��ġ���� �ʽ��ϴ�.');
					$("#PasswordCheck").css("color", "red");
				}
			});
		});

		function beforeSubmit() {
			var Check = false;
			$.ajax({
				type : 'POST',
				url : "checkPwd",
				data : {
					id : $('#m_id').val(),
					pwd : $('#new_password').val()
				},
				success : function(result) {
					if (result === 1) { //int��  �������� ó�� �� ��.
						Check = true;

					} else if (result === 0) {
						Check = false;
					}
					if (Check) {
						if ($("#PasswordCheck").text() == '��й�ȣ�� ��ġ�մϴ�') {
							var confirmPwd = confirm('��й�ȣ�� ���� �Ͻðڽ��ϱ�?');
							if (confirmPwd === true) {
								alert("��й�ȣ�� ���������� �ٲ�����ϴ�.")
								return true;
							} else {
								return false;
							}
						} else {
							alert("�� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.")
							return false;
						}
					} else {
						alert("�߸��� ��й�ȣ�Դϴ�.")
						return false;
					}
				}
			});

		}

	</script>
</body>
</html>