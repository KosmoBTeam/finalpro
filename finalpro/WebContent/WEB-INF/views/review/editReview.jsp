<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ include file="../header.jsp"%>
<html dir="ltr" lang="ko">
<body class="stretched">

	<!-- Document Wrapper
    ============================================= -->
	<div id="wrapper" class="clearfix">



		<!-- Page Title
        ============================================= -->
		<section id="page-title" class="page-title-parallax"
			style="background-image: url('resources/images/logo.png'); padding: 120px 0;"
			data-stellar-background-ratio="0.3">

			<div class="container clearfix">
				<h1>${vo.title }</h1>

			</div>

		</section>
		<!-- #page-title end -->

		<!-- Content
        ============================================= -->
		<section id="content">

			<div class="content-wrap bgcolor-grey-light">

				<div class="container clearfix">

					<!-- Post Content
                    ============================================= -->
					<div class="postcontent nobottommargin clearfix">
						<form action="editReview" method="post"
							enctype="multipart/form-data">
							<input type="hidden" value="${vo.id}" name="id" /> <input
								type="hidden" value="${vo.num }" name="num">
							<div class="single-post nobottommargin">

								<!-- Single Post
                            ============================================= -->
								<div class="entry clearfix">

									<!-- Entry Title
                                ============================================= -->
									<div class="entry-title">
										<h2>
											<input type="text" value="${vo.title }" name="title" />
										</h2>
									</div>
									<!-- .entry-title end -->

									<!-- Entry Meta
                                ============================================= -->
									<ul class="entry-meta clearfix">
										<li>${vo.rdate}</li>
										<li><a><i class="icon-user"></i> ${vo.hit }</a></li>

									</ul>
									<!-- .entry-meta end -->

									<!-- Entry Content
                                ============================================= -->
									<div class="entry-content notopmargin">

										<!-- Entry Image
                                    ============================================= -->
										<div class="entry-image alignleft">
											<a>
												<table border="1">
													<tr>
														<td id="picture" style="width: 230px; height: 230px;"><img
															id="sajin" src="resources/images/${vo.img }"
															style="width: inherit; height: inherit;"></td>
													</tr>
												</table> <label for="mfile" class="btn button nomargin"
												id="template-contactform-submit">사진 불러오기</label> <input
												type="file" name="mfile" id="mfile" style="display: none;">
												<input type="hidden" name="img" id="img" value="${vo.img }">
											</a>
										</div>
									</div>
									<textarea name="detail" style="width: 500px; height: 800px;">
									${vo.detail }  
									</textarea>
								</div>
							</div>
							<c:if test="${vo.id eq sessionScope['id']}">
								<a href="deleteReview?num=${vo.num }"
									class="btn button button-small">삭제</a>
								<button class="btn button button-small" type="submit">수정완료하기</button>
							</c:if>
						</form>
					</div>
		</section>
		<!-- #content end -->

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