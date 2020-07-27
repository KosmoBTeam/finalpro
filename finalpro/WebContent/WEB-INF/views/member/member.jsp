<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../header.jsp"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title></title>
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
.login100-form-title::before{

}
.login100-form-title{
	
}

</style>



<div class="limiter">

	<!-- Contact Form Overlay
                ============================================= -->
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-form-title"
				style="background-color: white;">
				<!-- 					<span class="login100-form-title-1"></span> -->
				<span class="login100-form-title-1">ȸ �� �� ��</span>
			</div>

			<div id="contact-form-result" data-notify-type="success"
				data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>

			<!-- Contact Form
                    ============================================= -->
			<script>
				var Check = false;

				function duplicate() {
					$
							.ajax({
								type : 'POST',
								url : "checkId",
								data : {
									id : $('#m_id').val()
								},
								success : function(result) {
									if (result == 0) { //int��  �������� ó�� �� ��.
										$("#OK").html('��� ������ ID �Դϴ�.');
										$("#OK").css("color", "blue");
										Check = true;
									} else if (result == 1) {
										$("#OK").html('�ߺ��Ǵ� ID�Դϴ�!');
										$("#OK").css("color", "red");
										Check = false;
									} else if ($.trim(result) == -1) {
										$("#OK")
												.html(
														'������ �������θ�,Ư������,���� ���� ����, ���� ���� 5-12�� ���Ϸ� ���ּ���!');
										$("#OK").css("color", "red");
										Check = false;
									}
								}
							});
				}

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
					if ($("#sample2_postcode").val() == "" || null) {
						alert('�����ȣ ã�⸦ Ŭ�����ּ���')
						return false;
					}

					if (Check) {
						if ($("#PasswordCheck").text() == '��й�ȣ�� ��ġ�մϴ�') {
							alert('������ �Ϸ�Ǿ����ϴ�');
							return true;
						} else {
							alert("Password �� Ȯ�����ּ���")
							return false;
						}
					} else {
						alert('ID �ߺ��˻縦 ���ּ���')
						$("#OK").html('�ߺ� �˻縦 ���ּ���!!')
						return false;
					}
				}
				$(function() {
					$("#m_id").change(function() {
						Check = false;
					});
				});
			</script>

			<form name="form1" method="post" action="joinMember" id="joinForm"
				class="login100-form validate-form" onsubmit="return beforeSubmit()"
				style="padding: 43px 88px 93px 100px;">
				<%-- <input type="hidden" name="reservation_number" id="reservation_number" value="${reservation_number}"> --%>

				<div class="row">

					<div class="col-md-6">
						<label for="template-contactform-name">���̵�
							<button type="button" class="btn btn-primary" id="duplicateCheck"
								onclick="duplicate()" style="">�ߺ�Ȯ��</button>
						</label> <input type="text" class="well well-sm" name="id" id="m_id"
							size="85" placeholder="ID" required="required" maxlength="12"
							style="width: 300px;">
					</div>
					<font id="OK" size="1"> </font>
				</div>

				<!-- 	<span id="ERROR"></span> -->
				<div class="row">
					<div class="col-md-6">
						<label for="template-contactform-name">��й�ȣ</label> <br> <input
							type="password" class="well well-sm" name="pwd" id="m_password"
							size="85" placeholder="Password" required="required"
							maxlength="15" style="width: 300px;">
					</div>
				</div>

				<div class="row">
					<div class="col-md-6">
						<label for="template-contactform-name">��й�ȣ Ȯ�� </label> <font
							id="PasswordCheck" size="2"> </font> <br> <input
							type="password" class="well well-sm" name="cpwd" id="m_password2"
							size="85" placeholder="Password Check" required="required"
							maxlength="15" style="width: 300px;">
					</div>
				</div>

				<div class="row">
					<div class="col-md-6">
						<label for="template-contactform-name">�����ȣ
							<button type="button" class="btn btn-primary"
								onclick="sample2_execDaumPostcode()">�����ȣ ã��</button>
						</label><br> <input type="text" class="well well-sm" name="ad0"
							id="sample2_postcode" size="35" placeholder="ex) 19xxx"
							readonly="readonly">
					</div>

					<div class="col-md-6">
						<label for="template-contactform-name">�⺻�ּ�</label><br> <input
							type="text" class="well well-sm" name="ad1" id="sample2_address"
							size="35" placeholder="�⺻�ּ�" required="required">
					</div>
				</div>

				<div class="row">

					<div class="col-md-6">
						<label for="template-contactform-name">��,��,��</label><br> <input
							type="text" class="well well-sm" id="sample2_extraAddress"
							size="35" placeholder="��,��,��" required="required" name="ad2">
					</div>

					<div class="col-md-6">
						<label for="template-contactform-name">���ּ�</label><br> <input
							type="text" class="well well-sm" name="ad3"
							id="sample2_detailAddress" size="35" placeholder="���ּ�"
							required="required">
					</div>

				</div>


				<div class="row">
					<div class="col-md-6">
						<label for="template-contactform-name">����</label><br> <input
							type="text" class="well well-sm" name="name" id="" size="35"
							placeholder="Name" required="required">
					</div>

					<div class="col-md-6">
						<label for="template-contactform-name">��ȭ��ȣ</label><br> <input
							type="text" class="well well-sm" name="phone" id="" size="35"
							placeholder="Tel" required="required">
					</div>
				</div>


				<div class="col_full">
					<label for="template-contactform-name">E-mail</label> <br> <input
						type="email" class="well well-sm" name="email" id="m_userEmail"
						size="85" placeholder="Email" required="required">
				</div>


				<div class="clearfix" style="text-align: center;">
					<button type="submit" class="login100-form-btn"
						style="position: absolute; color: black; bottom: 60px; left: 40%; background-color: yellow;"
						value="ȸ�� ���� �Ϸ�!">
						<span>ȸ�� ���� �Ϸ�!</span>
					</button>
				</div>
			</form>

			<!-- iOS������ position:fixed ���װ� ����, �����ϴ� ����Ʈ�� �°� position:absolute ���� �̿��Ͽ� top,left�� ���� �ʿ� -->
			<div id="layer"
				style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
				<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
					id="btnCloseLayer"
					style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
					onclick="closeDaumPostcode()" alt="�ݱ� ��ư">
			</div>

			<script
				src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<script>
				// �����ȣ ã�� ȭ���� ���� element
				var element_layer = document.getElementById('layer');

				function closeDaumPostcode() {
					// iframe�� ���� element�� �Ⱥ��̰� �Ѵ�.
					element_layer.style.display = 'none';
				}

				function sample2_execDaumPostcode() {
					new daum.Postcode(
							{
								oncomplete : function(data) {
									// �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

									// �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
									// �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
									var addr = ''; // �ּ� ����
									var extraAddr = ''; // �����׸� ����

									//����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
									if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
										addr = data.roadAddress;
									} else { // ����ڰ� ���� �ּҸ� �������� ���(J)
										addr = data.jibunAddress.replace(
												data.bname, "");
										last = addr.substring(addr
												.lastIndexOf(" "), addr.length);
										addr = addr.replace(last, "");
									}

									// ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
									if (data.userSelectedType === 'R') {
										// ���������� ���� ��� �߰��Ѵ�. (�������� ����)
										// �������� ��� ������ ���ڰ� "��/��/��"�� ������.
										if (data.bname !== ''
												&& /[��|��|��]$/g.test(data.bname)) {
											extraAddr += data.bname;
										}
										// �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
										if (data.buildingName !== ''
												&& data.apartment === 'Y') {
											extraAddr += (extraAddr !== '' ? ', '
													+ data.buildingName
													: data.buildingName);
										}
										// ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
										if (extraAddr !== '') {
											extraAddr = ' (' + extraAddr + ')';
										}
										// ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
										document
												.getElementById("sample2_extraAddress").value = extraAddr;

									} else {
										if (data.bname !== ''
												&& /[��|��|��]$/g.test(data.bname)) {
											extraAddr += data.bname;
										}
										extraAddr += " " + last;
										document
												.getElementById("sample2_extraAddress").value = extraAddr;
									}

									// �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
									document.getElementById('sample2_postcode').value = data.zonecode;
									document.getElementById("sample2_address").value = addr;
									// Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
									document.getElementById(
											"sample2_detailAddress").focus();

									// iframe�� ���� element�� �Ⱥ��̰� �Ѵ�.
									// (autoClose:false ����� �̿��Ѵٸ�, �Ʒ� �ڵ带 �����ؾ� ȭ�鿡�� ������� �ʴ´�.)
									element_layer.style.display = 'none';
								},
								width : '100%',
								height : '100%',
								maxSuggestItems : 5
							}).embed(element_layer);

					// iframe�� ���� element�� ���̰� �Ѵ�.
					element_layer.style.display = 'block';

					// iframe�� ���� element�� ��ġ�� ȭ���� ����� �̵���Ų��.
					initLayerPosition();
				}

				// �������� ũ�� ���濡 ���� ���̾ ����� �̵���Ű���� �ϽǶ�����
				// resize�̺�Ʈ��, orientationchange�̺�Ʈ�� �̿��Ͽ� ���� ����ɶ����� �Ʒ� �Լ��� ���� ���� �ֽðų�,
				// ���� element_layer�� top,left���� ������ �ֽø� �˴ϴ�.
				function initLayerPosition() {
					var width = 300; //�����ȣ���񽺰� �� element�� width
					var height = 400; //�����ȣ���񽺰� �� element�� height
					var borderWidth = 5; //���ÿ��� ����ϴ� border�� �β�

					// ������ ������ ������ ���� element�� �ִ´�.
					element_layer.style.width = width + 'px';
					element_layer.style.height = height + 'px';
					element_layer.style.border = borderWidth + 'px solid';
					// ����Ǵ� ������ ȭ�� �ʺ�� ���� ���� �����ͼ� �߾ӿ� �� �� �ֵ��� ��ġ�� ����Ѵ�.
					element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
							+ 'px';
					element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
							+ 'px';
				}
			</script>



			<!-- Contact Info
                    ============================================= -->


			<!-- Twitter
                    ============================================= -->

			<script type="text/javascript">
				jQuery(document)
						.ready(
								function($) {
									$
											.getJSON(
													'include/twitter/tweets.php?username=envato&count=3',
													function(tweets) {
														$(
																"#twitter-scroller .slider-wrap")
																.html(
																		sm_format_twitter3(tweets));
													});
								});
			</script>
		</div>
	</div>


</div>
<!-- Contact Form Overlay End -->

<script type="text/javascript">
	jQuery(document).ready(function($) {

		var ocTeam = $("#oc-team-list");

		ocTeam.owlCarousel({
			responsive : {
				0 : {
					items : 1
				},
				600 : {
					items : 1
				},
				1000 : {
					items : 2
				}
			},
			margin : 30,
			nav : false,
			dots : true
		});

	});
</script>
<br>
<%@include file="../footer.jsp"%>
<div id="gotoTop" class="icon-angle-up"></div>

<!-- Footer Scripts
    ============================================= -->
<script type="text/javascript" src="resources/js/functions.js"></script>

</body>
</html>