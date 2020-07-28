<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../header.jsp"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
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
<!-- Page Title
============================================= -->
<!-- Contact Form & Map Overlay Section
============================================= -->
<script type="text/javascript">
$(document).ready(
        function($) {
            var address = $("#address").val().split("/");
            
            $("#sample2_postcode").val(address[0]);
            $("#sample2_address").val(address[1]);
            $("#sample2_extraAddress").val(address[2]);
            $("#sample2_detailAddress").val(address[3]);
        });
</script>

<section id="page-title" class="page-title-parallax page-title-dark"
			style="background-image: url('resources/images/main/mypagemain.jpg'); padding: 120px 0; margin: 0 auto;"
			data-stellar-background-ratio="0.3">

			<div class="container clearfix">
				<h1 style="color:#3b2e5a">${sessionScope['name']}&nbsp;��</h1>
				<span style="color: #ffffff">����������</span>
			<ol class="breadcrumb">
				<li><a href="/" style="color: #ffffff">Ȩ</a></li>
				<li><a href="logout" style="color: #ffffff">�α׾ƿ�</a></li>
				<li class="active" style="color: #ffffff">����������</li>
			</ol>
			</div>

		</section>
	
<!-- #page-title end -->
<p>
<div class="container clearfix"></div>

<!-- Contact Form Overlay
            ============================================= -->

<div class="limiter">
	<div class="container-login100">
		<div class="wrap-login100" style="font-size: large; width: 900px;">


			<form name="form1" method="post" action="editMember" id="joinForm"
				onsubmit="return beforeSubmit()"
				style="padding-top: 50px; text-align: center;">
				<input type="hidden" name="id" value="${sessionScope['id']}" id="id">
				<input type="hidden" value="${sessionScope['address']}" id="address"
					name="address">
				<%-- <input type="hidden" name="reservation_number" id="reservation_number" value="${reservation_number}"> --%>

				<!--     <span id="ERROR"></span> -->
				<div class="row">
					<div class="col-md-6">
						<label for="template-contactform-name"><b
							class="text-warning">�����ȣ</b> <a type="button"
							class="btn btn-primary" onclick="sample2_execDaumPostcode()" style="background-color: #EAAF22">�����ȣ
								ã��</a> </label><br> <input type="text" class="well well-sm" name="ad0"
							id="sample2_postcode" size="35" placeholder="ex) 19xxx">
					</div>

					<div class="col-md-6">
						<label for="template-contactform-name"><b
							class="text-warning">�⺻�ּ�</b></label><br> <input type="text"
							class="well well-sm" name="ad1" id="sample2_address" size="35"
							placeholder="�⺻�ּ�" required="required">
					</div>
				</div>

				<div class="row">

					<div class="col-md-6">
						<label for="template-contactform-name"><b
							class="text-warning">��,��,��</b></label><br> <input type="text"
							class="well well-sm" id="sample2_extraAddress" size="35"
							placeholder="��,��,��" required="required" name="ad2">
					</div>

					<div class="col-md-6">
						<label for="template-contactform-name"><b
							class="text-warning">���ּ�</b></label><br> <input type="text"
							class="well well-sm" name="ad3" id="sample2_detailAddress"
							size="35" placeholder="���ּ�" required="required">
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<label for="template-contactform-name"><b
							class="text-warning">����</b></label><br> <input type="text"
							class="well well-sm" name="name" id="" size="35"
							placeholder="Name" value="${sessionScope['name']}"
							required="required">
					</div>

					<div class="col-md-6">
						<label for="template-contactform-name"><b
							class="text-warning">��ȭ��ȣ</b></label><br> <input type="text"
							class="well well-sm" name="phone" id="" size="35"
							placeholder="Tel" value="${sessionScope['phone']}"
							required="required">
					</div>
				</div>

				<div class="col_full">
					<label for="template-contactform-name"><b
						class="text-warning">E-mail</b></label> <br> <input type="email"
						class="well well-sm" name="email" id="m_userEmail" size="85"
						placeholder="Email" value="${sessionScope['email']}"
						required="required" style="width: 300px;">
				</div>
				<div class="row" style="padding-top: 20px; display: flow-root;">
					<button type="submit" class="login100-form-btn"
						style="color: ; background-color: #EAAF22; display: inline-block;"
						value="ȸ����������">
						<span>ȸ����������</span>
					</button>
					<button type="button"
						onclick="location.href='gopwd'"
						class="login100-form-btn"
						style="color: ; display: inline-block; background-color: #EAAF22;"
						value="��й�ȣ �����ϱ�">
						<span>��й�ȣ �����ϱ�</span>
					</button>
					<button type="button"
						onclick="location.href='deleteMember?id=${sessionScope['id']}'"
						class="login100-form-btn"
						style="color: ; display: inline-block; background-color: #EAAF22;"
						value="Ż���ϱ�">
						<span>Ż���ϱ�</span>
					</button>
				</div>
			</form>
			<div id="layer"
				style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
				<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
					id="btnCloseLayer"
					style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
					onclick="closeDaumPostcode()" alt="�ݱ� ��ư">
			</div>
			<!-- iOS������ position:fixed ���װ� ����, �����ϴ� ����Ʈ�� �°� position:absolute ���� �̿��Ͽ� top,left�� ���� �ʿ� -->

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
                                addr = data.jibunAddress;
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
                                document
                                        .getElementById("sample2_extraAddress").value = '';
                            }

                            // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                            document.getElementById('sample2_postcode').value = data.zonecode;
                            document.getElementById("sample2_address").value = addr;
                            // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
                            document
                                    .getElementById("sample2_detailAddress")
                                    .focus();

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

			<div class="line" style="background-color: gray;"></div>
			<!-- ���⼭���� ȣ�ڿ��� ����  -->
			<span class="login100-form-title-1"
				style="position: relative; bottom: 0%; text-align: center; display: block; color: #EAAF22; ">${sessionScope['name']}&nbsp;����
				ȣ�� ������Ȳ</span>
			<div class="line"></div>
			<div class="clearfix" style="margin-top: 5px; padding-left: 7%;">

				<c:forEach var="e" items="${list}">
					<div class="owl-item active"
						style="width: 600px; margin-right: 30px;">
						<div class="oc-item">
							<div class="team team-list clearfix">
								<div class="team-image">
									<a href="hotelDetail"><img
										src="resources/images/hotel/detail/${e.img}" alt=""></a>
								</div>
								<div class="team-desc">
									<div class="team-title">
										<a href=""><h4>${e.honame}</h4></a> <span>${e.roomtype }</span>
									</div>
									<div class="team-content" style="margin-bottom: 10px;">
										<p>*üũ�� ��¥ : ${e.checkin} ~ *üũ�ƿ� ��¥ : ${e.checkout}</p>
									</div>



								</div>
							</div>
						</div>
					</div>
					<div class="row" style="padding-top: 20px; display: flow-root;">
						<button type="button"
							onclick="location.href='goHotelSuccess?hrnum=${e.hrnum}&id=${sessionScope['id']}'"
							class="login100-form-btn"
							style="color: black; background-color: yellow; display: inline-block;"
							value="��������">
							<span>��������</span>
						</button>
						<button type="button"
							onclick="location.href='goReviewWrite?honame=${e.honame}'"
							class="login100-form-btn"
							style="color: black; display: inline-block; background-color: yellow;"
							value="ȣ�ڸ����ۼ��ϱ�">
							<span>ȣ�ڸ����ۼ�</span>
						</button>
						<button type="button"
							onclick="location.href='deleteReserve?id=${sessionScope['id']}&hrnum=${e.hrnum }'"
							class="login100-form-btn"
							style="color: black; display: inline-block; background-color: yellow;"
							value="����ϱ�">
							<span>����ϱ�</span>
						</button>
					</div>

					<div class="line"
						style="margin-top: auto; border-top-color: white;"></div>
				</c:forEach>

			</div>
			<!--ȣ�ڿ��� ���� ���� -->

			<!-- Contact Info
                ============================================= -->



		</div>
	</div>
</div>

<!-- Contact Form Overlay End -->
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
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