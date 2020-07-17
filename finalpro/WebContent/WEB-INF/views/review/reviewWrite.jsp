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

		<!-- Page Title
        ============================================= -->
		<section id="page-title" class="page-title-parallax page-title-dark"
			style="padding: 200px 0; background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTWzS94JdMAG0xiwqSqIXb1357QriGZf4xnxzeZeBm1T481SLI5&usqp=CAU'); background-size: cover; background-position: center center;"
			data-stellar-background-ratio="0.2">

			<div class="container clearfix">
				<h1>여행 후기 작성</h1>
				<span>StarTrip과 함께 한 시간을 글로 남겨보세요</span>
			</div>

		</section>
		<!-- #page-title end -->

		<!-- Content
        ============================================= -->
		<section id="content">

			<div
				class="section content-wrap notopmargin nobottommargin bgcolor-grey-light">

				<div class="container clearfix">

					<!-- Postcontent
                    ============================================= -->
					<div class="postcontent nobottommargin">

						<h3>StarTrip과 함께 한 시간을 글로 남겨보세요</h3>

						<div id="contact-form-result" data-notify-type="success"
							data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>

						<form class="nobottommargin" id="template-contactform"
							name="template-contactform" action="reviewWrite" method="post"
							enctype="multipart/form-data">
							<input type="hidden" name="id" value="${sessionScope['id']}">
							<div class="form-process"></div>

							<div class="clear"></div>
							<div class="col_two_third">
								<label for="template-contactform-subject">호텔명 <small>*</small></label>
								<input type="text" id="template-contactform-subject"
									name="honame" value="${honame }" class="required sm-form-control" readonly="readonly"/>
							</div>
							<div class="col_two_third">
								<label for="template-contactform-subject">제목 <small>*</small></label>
								<input type="text" id="template-contactform-subject"
									name="title" value="" class="required sm-form-control" />
							</div>
							<div class="clear"></div>

							<div class="col_full">
								<label for="template-contactform-message">내용 <small>*</small></label>
								<textarea class="required sm-form-control"
									id="template-contactform-message" name="detail" rows="6"
									cols="30"></textarea>
							</div>
							<div class="col_full hidden">
								<input type="text" id="template-contactform-botcheck"
									name="template-contactform-botcheck" value=""
									class="sm-form-control" />
							</div>

							<div class="col_full">
								<button class="btn button nomargin" type="submit"
									id="template-contactform-submit"
									name="template-contactform-submit" value="submit">등록하기</button>
							</div>
							<input type="file" name="mfile" id="mfile" style="display: none;">
							<input type="text" name="img" id="img" style="display: none;">
						</form>


					</div>
					<!-- .postcontent end -->

					<!-- Sidebar
                    ============================================= -->
					<table border="1">
						<tr>
							<td id="picture" style="width: 230px; height: 230px;"><img
								id="sajin"
								src="https://www.bloter.net/wp-content/uploads/2016/08/%EC%8A%A4%EB%A7%88%ED%8A%B8%ED%8F%B0-%EC%82%AC%EC%A7%84.jpg"
								style="width: inherit; height: inherit;"></td>
						</tr>
					</table>

					<div class="sidebar col_last nobottommargin">
						<label for="mfile" class="btn button nomargin"
							id="template-contactform-submit">사진 불러오기</label>
					</div>
					<!-- Sidebar end-->
				</div>
			</div>
		</section>
		<!-- #content end -->
	</div>
	<script type="text/javascript">
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#sajin').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}

		$("#mfile").change(function() {
			readURL(this);
			$("#img").attr('value', this.value);
		});
	</script>
	<!-- Footer

		<!-- Go To Top
    ============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- Footer Scripts
    ============================================= -->
	<script type="text/javascript" src="resources/js/functions.js"></script>
</body>
</html>
<%@include file="../footer.jsp"%>