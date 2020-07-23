<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../header.jsp"%>
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
<section id="page-title" class="page-title-parallax"
	style="background-image: url(&amp;quot;resources/images/main/main5.jpg&amp;quot;); padding: 120px 0;"
	data-stellar-background-ratio="0.3">

	<div class="container clearfix" style="border-width: 3px;">
		<h1>${sessionScope['name']}��������</h1>
		<!--Ȩ/ȣ�ڼҰ�/ȸ������ �̰���  -->
		<ol class="breadcrumb">
			<li><a href="/">Ȩ</a></li>
			<li><a href="logout">�α׾ƿ�</a></li>
			<li class="active">����������</li>
		</ol>
	</div>
</section>
<!-- #page-title end -->
<p>
<div class="container clearfix"></div>

<!-- Contact Form Overlay
            ============================================= -->
<div id="contact-form-overlay" class="clearfix bgcolor-grey">

	<div class="fancy-title title-dotted-border">
		<h3>ȸ������</h3>
	</div>
	<div id="contact-form-result" data-notify-type="success"
		data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>



	<form name="form1" method="post" action="editMember" id="joinForm"
		onsubmit="return beforeSubmit()">
		<input type="hidden" name="id" value="${sessionScope['id']}" id="id">
		<input type="hidden" value="${sessionScope['address']}" id="address"
			name="address">
		<%-- <input type="hidden" name="reservation_number" id="reservation_number" value="${reservation_number}"> --%>

		<!--     <span id="ERROR"></span> -->
		<div class="row">
			<div class="col-md-6">
				<label for="template-contactform-name">�����ȣ
					<button type="button" class="btn btn-link"
						onclick="sample2_execDaumPostcode()">�����ȣ ã��</button>
				</label><br> <input type="text" class="well well-sm" name="ad0"
					id="sample2_postcode" size="35" placeholder="ex) 19xxx">
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
					placeholder="Name" value="${sessionScope['name']}"
					required="required">
			</div>

			<div class="col-md-6">
				<label for="template-contactform-name">��ȭ��ȣ</label><br> <input
					type="text" class="well well-sm" name="phone" id="" size="35"
					placeholder="Tel" value="${sessionScope['phone']}"
					required="required">
			</div>
		</div>

		<div class="col_full">
			<label for="template-contactform-name">E-mail</label> <br> <input
				type="email" class="well well-sm" name="email" id="m_userEmail"
				size="85" placeholder="Email" value="${sessionScope['email']}"
				required="required">
		</div>

		<div class="clearfix" style="text-align: center;">
			<button type="submit"
				class="button button-medium button-reveal button-3d button-rounded tright nomargin"
				style="color: black;">
				<span>ȸ����������</span> <i class="icon-angle-right"></i>
			</button>
			<button type="button"
				onclick="location.href='deleteMember?id=${sessionScope['id']}'"
				class="button button-medium button-reveal button-3d button-rounded tright nomargin"
				style="color: black;">
				<span>Ż���ϱ�</span> <i class="icon-angle-right"></i>
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



	<!-- ���⼭���� ȣ�ڿ��� ����  -->

	<h2>${sessionScope['name']}����ȣ�ڿ�����Ȳ</h2>
	<c:forEach var="e" items="${list}">
		<div class="owl-item active" style="width: 600px; margin-right: 30px;">
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
						<button type="button"
							onclick="location.href='deleteReserve?id=${sessionScope['id']}&hrnum=${e.hrnum }'"
							class="button button-medium button-reveal button-3d button-rounded tright nomargin"
							style="color: black;">
							<span>����ϱ�</span> <i class="icon-angle-right"></i>
						</button>
						<button type="button"
							onclick="location.href='goHotelSuccess?hrnum=${e.hrnum}&id=${sessionScope['id']}'"
							class="button button-medium button-reveal button-3d button-rounded tright nomargin"
							style="color: black;">
							<span>��������</span> <i class="icon-angle-right"></i>
						</button>
						<button type="button"
							onclick="location.href='goReviewWrite?honame=${e.honame}'"
							class="button button-medium button-reveal button-3d button-rounded tright nomargin"
							style="color: black;">
							<span>ȣ�ڸ����ۼ��ϱ�</span> <i class="icon-angle-right"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="line"></div>
	</c:forEach>


	<!--ȣ�ڿ��� ���� ���� -->

	<!-- Contact Info
                ============================================= -->



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