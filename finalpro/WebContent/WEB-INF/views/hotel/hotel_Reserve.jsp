<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp"%>
<body class="stretched">

	<!-- Document Wrapper
    ============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- #header end -->

		<section id="slider" class="full-screen">
			<img src="resources/images/hotel/bedroom.jpg"
				style="width: 100%; height: 100%;">
			<div class="container clearfix vertical-middle dark">

				<div class="heading-block title-center nobottomborder topmargin-md">
					<p
						style="color: white; font-size: 50px; text-align: center; font-weight: bold;">전국
						다양한 숙소를 경험해보세요.</p>
					<!-- 예약폼 -->

					<form class="form-horizontal" style="margin: 0 auto;"
						action="hotelIn" method="post">
					
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-3 control-label"
								style="color: white;">아이디</label>
							<div class="col-sm-9">
								<input type="text" class="form-control"
									value="${sessionScope['id']}" id="id" name="id" placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-3 control-label"
								style="color: white;">이름</label>
							<div class="col-sm-9">
								<input type="text" class="form-control"
									value="${sessionScope['name']}" id="name" name="name"
									placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-3 control-label"
								style="color: white;">전화번호</label>
							<div class="col-sm-9">
								<input type="text" class="form-control"
									value="${sessionScope['phone']}" id="phone" name="phone"
									placeholder="">
							</div>
						</div>

						<div class="form-group">
							<label for="inputEmail3" class="col-sm-3 control-label"
								style="color: white;">${title }</label>
							<div class="col-sm-9">
								<select name="honame" id="honame" class="form-control"
									required="required">
									<option value="${title }">${title }</option>
								</select>
							</div>
						</div>


						<div class="form-group">
							<label for="inputEmail3" class="col-sm-3 control-label"
								style="color: white;">객실 종류</label>
							<div class="col-sm-9" id="roomtype">
								<!-- 로직짜기 -->
								<c:forEach var="e" items="${list}">
									<div class="col-sm-2"
										style="font-size: 18px; font-weight: bold;" id="div1">
										<input type="checkbox" id="roomtype" name="roomtype"
											value=${e.roomtype } />${e.roomtype } : ${e.pay }원
												<input type="hidden" value="${e.num }" name="num">
									</div>
								</c:forEach>
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword3" class="col-sm-3 control-label"
								style="color: white;">체크인 날짜</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="checkin"
									name="checkin" placeholder="2020-06-06">
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword3" class="col-sm-3 control-label"
								style="color: white;">체크아웃 날짜</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="checkout"
									name="checkout" placeholder="2020-06-07">
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword3" class="col-sm-3 control-label"
								style="color: white;">인원수</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="people"
									name="people" placeholder="숫자만 입력해주세요">
							</div>
						</div>
						<p>
							<button type="submit" class="btn btn-primary btn-lg" id="btn1">예약하기</button>
						</p>
					</form>
				</div>
				<!-- 예약하기 버튼 구현 -->
				<script>
					$('')
							.change(
									function() {
										var a = $(this).val();
										if (a == "제주 신라호텔") {
											document.getElementById("div1").innerHTML = '<input type="checkbox" class="checkbox" id="roomtype" name="roomtype" value="싱글"/>싱글 - 50000';
											document.getElementById("div2").innerHTML = '<input type="checkbox" class="checkbox" id="roomtype" name="roomtype" value="더블"/>더블 - 70000';
											document.getElementById("div3").innerHTML = '<input type="checkbox" class="checkbox" id="roomtype" name="roomtype"  value="트윈"/>트윈 - 100000';
											document.getElementById("div4").innerHTML = '<input type="checkbox" class="checkbox" id="roomtype" name="roomtype" value="스위트"/>스위트 - 150000';
										} else if (a == "제주 롯데호텔") {
											document.getElementById("div1").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="싱글"/> 싱글 - 40000';
											document.getElementById("div2").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="더블"/> 더블 - 60000';
											document.getElementById("div3").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="트윈"/> 트윈 - 90000';
											document.getElementById("div4").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="스위트"/> 스위트 - 120000';
										} else if (a == "제주 히든클리프 호텔 네이처") {
											document.getElementById("div1").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="싱글"/>싱글 - 30000';
											document.getElementById("div2").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="더블"/>더블 - 50000';
											document.getElementById("div3").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="트윈"/>트윈 - 80000';
											document.getElementById("div4").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="스위트"/>스위트 - 110000';
										} else if (a == "인천 네스트 호텔") {
											document.getElementById("div1").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="싱글"/>싱글 - 30000';
											document.getElementById("div2").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="더블"/>더블 - 50000';
											document.getElementById("div3").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="트윈"/>트윈 - 80000';
											document.getElementById("div4").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="스위트"/>스위트 - 110000';
										} else if (a == "인천 파라다이스 시티") {
											document.getElementById("div1").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="싱글"/>싱글 - 30000';
											document.getElementById("div2").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="더블"/>더블 - 50000';
											document.getElementById("div3").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="트윈"/>트윈 - 80000';
											document.getElementById("div4").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="스위트"/>스위트 - 110000';
										} else if (a == "인천 쉐라톤 그랜드") {
											document.getElementById("div1").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="싱글"/>싱글 - 30000';
											document.getElementById("div2").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="더블"/>더블 - 50000';
											document.getElementById("div3").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="트윈"/>트윈 - 80000';
											document.getElementById("div4").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="스위트"/>스위트 - 110000';
										}

									});

					var newDate = new Date(2015, 5, 15);
					$('#countdown-ex1').countdown({
						until : newDate
					});

					$("#widget-subscribe-form")
							.validate(
									{
										submitHandler : function(form) {
											$(form)
													.find('.input-group-addon')
													.find('.icon-email2')
													.removeClass('icon-email2')
													.addClass(
															'icon-line-loader icon-spin');
											$(form)
													.ajaxSubmit(
															{
																target : '#widget-subscribe-form-result',
																success : function() {
																	$(form)
																			.find(
																					'.input-group-addon')
																			.find(
																					'.icon-line-loader')
																			.removeClass(
																					'icon-line-loader icon-spin')
																			.addClass(
																					'icon-email2');
																	$(
																			'#widget-subscribe-form')
																			.find(
																					'.form-control')
																			.val(
																					'');
																	$(
																			'#widget-subscribe-form-result')
																			.attr(
																					'data-notify-msg',
																					$(
																							'#widget-subscribe-form-result')
																							.html())
																			.html(
																					'');
																	IGNITE.widget
																			.notifications($('#widget-subscribe-form-result'));
																}
															});
										}
									});
				</script>
			</div>

		</section>

	</div>
	<!-- #wrapper end -->

	<!-- Go To Top
    ============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- Footer Scripts
    ============================================= -->
	<script type="text/javascript" src="resources/js/functions.js"></script>

</body>
</html>
<%@include file="../footer.jsp"%>