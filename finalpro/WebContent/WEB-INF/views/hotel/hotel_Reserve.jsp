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
						style="color: white; font-size: 50px; text-align: center; font-weight: bold;">����
						�پ��� ���Ҹ� �����غ�����.</p>
					<!-- ������ -->

					<form class="form-horizontal" style="margin: 0 auto;"
						action="hotelIn" method="post">
					
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-3 control-label"
								style="color: white;">���̵�</label>
							<div class="col-sm-9">
								<input type="text" class="form-control"
									value="${sessionScope['id']}" id="id" name="id" placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-3 control-label"
								style="color: white;">�̸�</label>
							<div class="col-sm-9">
								<input type="text" class="form-control"
									value="${sessionScope['name']}" id="name" name="name"
									placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-3 control-label"
								style="color: white;">��ȭ��ȣ</label>
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
								style="color: white;">���� ����</label>
							<div class="col-sm-9" id="roomtype">
								<!-- ����¥�� -->
								<c:forEach var="e" items="${list}">
									<div class="col-sm-2"
										style="font-size: 18px; font-weight: bold;" id="div1">
										<input type="checkbox" id="roomtype" name="roomtype"
											value=${e.roomtype } />${e.roomtype } : ${e.pay }��
												<input type="hidden" value="${e.num }" name="num">
									</div>
								</c:forEach>
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword3" class="col-sm-3 control-label"
								style="color: white;">üũ�� ��¥</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="checkin"
									name="checkin" placeholder="2020-06-06">
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword3" class="col-sm-3 control-label"
								style="color: white;">üũ�ƿ� ��¥</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="checkout"
									name="checkout" placeholder="2020-06-07">
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword3" class="col-sm-3 control-label"
								style="color: white;">�ο���</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="people"
									name="people" placeholder="���ڸ� �Է����ּ���">
							</div>
						</div>
						<p>
							<button type="submit" class="btn btn-primary btn-lg" id="btn1">�����ϱ�</button>
						</p>
					</form>
				</div>
				<!-- �����ϱ� ��ư ���� -->
				<script>
					$('')
							.change(
									function() {
										var a = $(this).val();
										if (a == "���� �Ŷ�ȣ��") {
											document.getElementById("div1").innerHTML = '<input type="checkbox" class="checkbox" id="roomtype" name="roomtype" value="�̱�"/>�̱� - 50000';
											document.getElementById("div2").innerHTML = '<input type="checkbox" class="checkbox" id="roomtype" name="roomtype" value="����"/>���� - 70000';
											document.getElementById("div3").innerHTML = '<input type="checkbox" class="checkbox" id="roomtype" name="roomtype"  value="Ʈ��"/>Ʈ�� - 100000';
											document.getElementById("div4").innerHTML = '<input type="checkbox" class="checkbox" id="roomtype" name="roomtype" value="����Ʈ"/>����Ʈ - 150000';
										} else if (a == "���� �Ե�ȣ��") {
											document.getElementById("div1").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="�̱�"/> �̱� - 40000';
											document.getElementById("div2").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="����"/> ���� - 60000';
											document.getElementById("div3").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="Ʈ��"/> Ʈ�� - 90000';
											document.getElementById("div4").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="����Ʈ"/> ����Ʈ - 120000';
										} else if (a == "���� ����Ŭ���� ȣ�� ����ó") {
											document.getElementById("div1").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="�̱�"/>�̱� - 30000';
											document.getElementById("div2").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="����"/>���� - 50000';
											document.getElementById("div3").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="Ʈ��"/>Ʈ�� - 80000';
											document.getElementById("div4").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="����Ʈ"/>����Ʈ - 110000';
										} else if (a == "��õ �׽�Ʈ ȣ��") {
											document.getElementById("div1").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="�̱�"/>�̱� - 30000';
											document.getElementById("div2").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="����"/>���� - 50000';
											document.getElementById("div3").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="Ʈ��"/>Ʈ�� - 80000';
											document.getElementById("div4").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="����Ʈ"/>����Ʈ - 110000';
										} else if (a == "��õ �Ķ���̽� ��Ƽ") {
											document.getElementById("div1").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="�̱�"/>�̱� - 30000';
											document.getElementById("div2").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="����"/>���� - 50000';
											document.getElementById("div3").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="Ʈ��"/>Ʈ�� - 80000';
											document.getElementById("div4").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="����Ʈ"/>����Ʈ - 110000';
										} else if (a == "��õ ������ �׷���") {
											document.getElementById("div1").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="�̱�"/>�̱� - 30000';
											document.getElementById("div2").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="����"/>���� - 50000';
											document.getElementById("div3").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="Ʈ��"/>Ʈ�� - 80000';
											document.getElementById("div4").innerHTML = '<input type="checkbox" id="roomtype" name="roomtype" value="����Ʈ"/>����Ʈ - 110000';
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