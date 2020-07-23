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
		<h1>${sessionScope['name']}님의정보</h1>
		<!--홈/호텔소개/회원가입 이거임  -->
		<ol class="breadcrumb">
			<li><a href="/">홈</a></li>
			<li><a href="logout">로그아웃</a></li>
			<li class="active">마이페이지</li>
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
		<h3>회원정보</h3>
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
				<label for="template-contactform-name">우편번호
					<button type="button" class="btn btn-link"
						onclick="sample2_execDaumPostcode()">우편번호 찾기</button>
				</label><br> <input type="text" class="well well-sm" name="ad0"
					id="sample2_postcode" size="35" placeholder="ex) 19xxx">
			</div>

			<div class="col-md-6">
				<label for="template-contactform-name">기본주소</label><br> <input
					type="text" class="well well-sm" name="ad1" id="sample2_address"
					size="35" placeholder="기본주소" required="required">
			</div>
		</div>

		<div class="row">

			<div class="col-md-6">
				<label for="template-contactform-name">동,면,읍</label><br> <input
					type="text" class="well well-sm" id="sample2_extraAddress"
					size="35" placeholder="동,면,읍" required="required" name="ad2">
			</div>

			<div class="col-md-6">
				<label for="template-contactform-name">상세주소</label><br> <input
					type="text" class="well well-sm" name="ad3"
					id="sample2_detailAddress" size="35" placeholder="상세주소"
					required="required">
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<label for="template-contactform-name">성함</label><br> <input
					type="text" class="well well-sm" name="name" id="" size="35"
					placeholder="Name" value="${sessionScope['name']}"
					required="required">
			</div>

			<div class="col-md-6">
				<label for="template-contactform-name">전화번호</label><br> <input
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
				<span>회원정보수정</span> <i class="icon-angle-right"></i>
			</button>
			<button type="button"
				onclick="location.href='deleteMember?id=${sessionScope['id']}'"
				class="button button-medium button-reveal button-3d button-rounded tright nomargin"
				style="color: black;">
				<span>탈퇴하기</span> <i class="icon-angle-right"></i>
			</button>
		</div>
	</form>
	<div id="layer"
		style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
			id="btnCloseLayer"
			style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
			onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>
	<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->

	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
        // 우편번호 찾기 화면을 넣을 element
        var element_layer = document.getElementById('layer');

        function closeDaumPostcode() {
            // iframe을 넣은 element를 안보이게 한다.
            element_layer.style.display = 'none';
        }

        function sample2_execDaumPostcode() {
            new daum.Postcode(
                    {
                        oncomplete : function(data) {
                            // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                            var addr = ''; // 주소 변수
                            var extraAddr = ''; // 참고항목 변수

                            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                addr = data.roadAddress;
                            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                addr = data.jibunAddress;
                            }

                            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                            if (data.userSelectedType === 'R') {
                                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                if (data.bname !== ''
                                        && /[동|로|가]$/g.test(data.bname)) {
                                    extraAddr += data.bname;
                                }
                                // 건물명이 있고, 공동주택일 경우 추가한다.
                                if (data.buildingName !== ''
                                        && data.apartment === 'Y') {
                                    extraAddr += (extraAddr !== '' ? ', '
                                            + data.buildingName
                                            : data.buildingName);
                                }
                                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                if (extraAddr !== '') {
                                    extraAddr = ' (' + extraAddr + ')';
                                }
                                // 조합된 참고항목을 해당 필드에 넣는다.
                                document
                                        .getElementById("sample2_extraAddress").value = extraAddr;

                            } else {
                                document
                                        .getElementById("sample2_extraAddress").value = '';
                            }

                            // 우편번호와 주소 정보를 해당 필드에 넣는다.
                            document.getElementById('sample2_postcode').value = data.zonecode;
                            document.getElementById("sample2_address").value = addr;
                            // 커서를 상세주소 필드로 이동한다.
                            document
                                    .getElementById("sample2_detailAddress")
                                    .focus();

                            // iframe을 넣은 element를 안보이게 한다.
                            // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                            element_layer.style.display = 'none';
                        },
                        width : '100%',
                        height : '100%',
                        maxSuggestItems : 5
                    }).embed(element_layer);

            // iframe을 넣은 element를 보이게 한다.
            element_layer.style.display = 'block';

            // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
            initLayerPosition();
        }

        // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
        // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
        // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
        function initLayerPosition() {
            var width = 300; //우편번호서비스가 들어갈 element의 width
            var height = 400; //우편번호서비스가 들어갈 element의 height
            var borderWidth = 5; //샘플에서 사용하는 border의 두께

            // 위에서 선언한 값들을 실제 element에 넣는다.
            element_layer.style.width = width + 'px';
            element_layer.style.height = height + 'px';
            element_layer.style.border = borderWidth + 'px solid';
            // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
            element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
                    + 'px';
            element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
                    + 'px';
        }
    </script>



	<!-- 여기서부터 호텔예약 정보  -->

	<h2>${sessionScope['name']}님의호텔예약현황</h2>
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
							<p>*체크인 날짜 : ${e.checkin} ~ *체크아웃 날짜 : ${e.checkout}</p>
						</div>
						<button type="button"
							onclick="location.href='deleteReserve?id=${sessionScope['id']}&hrnum=${e.hrnum }'"
							class="button button-medium button-reveal button-3d button-rounded tright nomargin"
							style="color: black;">
							<span>취소하기</span> <i class="icon-angle-right"></i>
						</button>
						<button type="button"
							onclick="location.href='goHotelSuccess?hrnum=${e.hrnum}&id=${sessionScope['id']}'"
							class="button button-medium button-reveal button-3d button-rounded tright nomargin"
							style="color: black;">
							<span>상세페이지</span> <i class="icon-angle-right"></i>
						</button>
						<button type="button"
							onclick="location.href='goReviewWrite?honame=${e.honame}'"
							class="button button-medium button-reveal button-3d button-rounded tright nomargin"
							style="color: black;">
							<span>호텔리뷰작성하기</span> <i class="icon-angle-right"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="line"></div>
	</c:forEach>


	<!--호텔예약 정보 종료 -->

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