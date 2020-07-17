<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp"%>


<body class="stretched">

	<!-- Document Wrapper
    ============================================= -->
	<div id="wrapper" class="clearfix">



		<!-- Page Title
        ============================================= -->
		<section id="page-title" class="page-title-parallax page-title-dark"
			style="background-image: url('resources/images/logo.png'); padding: 120px 0;"
			data-stellar-background-ratio="0.3">

			<div class="container clearfix">
				<h1>Events List</h1>
				<span>A List of Your Events with a Sidebar</span>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">Events</li>
				</ol>
			</div>

		</section>
		<!-- #page-title end -->

		<!-- Content
        ============================================= -->
		<section id="content">

			<div class="content-wrap bgcolor-grey-light">

				<div class="container clearfix">

					<div class="postcontent nobottommargin">

						<div id="posts" class="events small-thumbs">

							<c:forEach var="e" items="${list}">
								<form action="goReviewDetail" method="post">
									<input type="hidden" value="${e.img }" name="img"> <input
										type="hidden" value="${e.title }" name="title"> <input
										type="hidden" value="${e.detail }" name="detail"> <input
										type="hidden" value="${e.hit }" name="hit"> <input
										type="hidden" value="${e.rdate }" name="rdate"> <input
										type="hidden" value="${e.num }" name="num"> <input
										type="hidden" value="${e.id }" name="id"> <input
										type="hidden" value="${e.honame }" name="honame"> <input
										type="hidden" value="${e.num}" name="num">
									<div class="entry clearfix">
										<div class="entry-image">
											<a href="#"> <img src="resources/images/${e.img}" alt="">
											</a>
										</div>
										<div class="entry-c">

											<div class="entry-title">
												<h2>
													<a href="deleteReview?num=${e.num }">${e.title}</a>
												</h2>
											</div>
											<ul class="entry-meta clearfix">
												<li><a href="#"><i class="icon-time"></i>${e.rdate}</a>/
													<b>조회수 : ${e.hit }</b></li>
												<li>호텔명 : ${e.honame }</li>
											</ul>
											<div class="entry-content">
												<p>${e.detail}</p>
												<button type="submit" class="btn button button-small">더
													읽어보기</button>
												<c:if test="${e.id eq sessionScope['id']}">
													<a href="deleteReview?num=${e.num }"
														class="btn button button-small">삭제</a>
												</c:if>
											</div>
										</div>
									</div>
								</form>
							</c:forEach>
						</div>

						<!-- Pagination
                        ============================================= -->
						<ul class="pager nomargin">

							<li class="previous"><c:if test="${paging.startPage != 1 }">
									<a
										href="goReviewMain?nowPage=${paging.nowPage-1}&cntPerPage=${paging.cntPerPage}">&larr;
										Older</a>
								</c:if> <c:if test="${paging.startPage==1}">
									<a href="#">&larr; Older</a>
								</c:if></li>
							<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
								var="p">
								<c:choose>
									<c:when test="${p == paging.nowPage }">
										<b>${p }</b>
										<!-- 현재 페이지 일 경우 링크 해제 -->
									</c:when>
									<c:when test="${p != paging.nowPage }">
										<!-- 다른 페이지 링크 -->
										<a
											href="goReviewMain?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
									</c:when>
								</c:choose>
							</c:forEach>

							<li class="next"><c:if
									test="${paging.endPage != paging.lastPage}">
									<a
										href="goReviewMain?nowPage=${paging.nowPage+1 }&cntPerPage=${paging.cntPerPage}">Newer
										&rarr;</a>
								</c:if> <c:if test="${paging.endPage == paging.lastPage}">
									<a href="#">Newer &rarr;</a>
								</c:if></li>

						</ul>
						<!-- .pager end -->
						<ul style="text-align: center; list-style: none;">
							<li><form action="goReviewMain" method="post">
									<%-- <input type="hidden" name="page" value="${param.page }"> --%>
									<select name="searchType">
										<option value="1">아이디</option>
										<option value="2">제목</option>
										<option value="3">내용</option>
									</select>&nbsp;<input type="text" name="searchValue"> <input
										type="submit" value="Search">
								</form></li>
						</ul>
					</div>

					<div class="sidebar nobottommargin col_last clearfix">
						<div class="sidebar-widgets-wrap">

							<div class="widget clearfix">

								<h4>Events</h4>
								<div id="post-list-footer">

									<div class="spost clearfix">
										<div class="entry-image">
											<a href="#" class="nobg"><img
												src="http://placehold.it/100x100" alt=""></a>
										</div>
										<div class="entry-c">
											<div class="entry-title">
												<h4>
													<a href="#">NYC Restaurant Week</a>
												</h4>
												<p class="nobottommargin">Lorem ipsum dolor sit amet
													consectetur adipis...</p>
											</div>
											<ul class="entry-meta">
												<li>17th Dec 2015</li>
											</ul>
										</div>
									</div>

									<div class="spost clearfix">
										<div class="entry-image">
											<a href="#" class="nobg"><img
												src="http://placehold.it/100x100" alt=""></a>
										</div>
										<div class="entry-c">
											<div class="entry-title">
												<h4>
													<a href="#">Kids Food Fest</a>
												</h4>
												<p class="nobottommargin">Lorem ipsum dolor sit amet
													consectetur adipis...</p>
											</div>
											<ul class="entry-meta">
												<li>8th June 2015</li>
											</ul>
										</div>
									</div>

									<div class="spost clearfix">
										<div class="entry-image">
											<a href="#" class="nobg"><img
												src="http://placehold.it/100x100" alt=""></a>
										</div>
										<div class="entry-c">
											<div class="entry-title">
												<h4>
													<a href="#">Taste of the Old World</a>
												</h4>
												<p class="nobottommargin">Lorem ipsum dolor sit amet
													consectetur adipis...</p>
											</div>
											<ul class="entry-meta">
												<li>22nd Sept 2015</li>
											</ul>
										</div>
									</div>

								</div>

							</div>

							<div class="widget clearfix">

								<h4>Media Gallery</h4>
								<div id="oc-portfolio-sidebar" class="owl-carousel portfolio-5">

									<div class="oc-item">
										<div class="iportfolio">
											<div class="portfolio-image">
												<a href="#"> <img src="http://placehold.it/400x300"
													alt="">
												</a>
												<div class="portfolio-overlay">
													<a href="http://vimeo.com/16270111" class="center-icon"
														data-lightbox="iframe"><i class="icon-play"></i></a>
												</div>
											</div>
											<div class="portfolio-desc center nobottompadding">
												<h3>
													<a href="portfolio-single-video.html">Specialties</a>
												</h3>
												<span><a href="#">Wines, Beer</a></span>
											</div>
										</div>
									</div>

									<div class="oc-item">
										<div class="iportfolio">
											<div class="portfolio-image">
												<a href="portfolio-single.html"> <img
													src="http://placehold.it/400x300" alt="">
												</a>
												<div class="portfolio-overlay">
													<a href="http://placehold.it/1000x667" class="center-icon"
														data-lightbox="image"><i class="icon-picture"></i></a>
												</div>
											</div>
											<div class="portfolio-desc center nobottompadding">
												<h3>
													<a href="portfolio-single.html">Gatronomy</a>
												</h3>
												<span><a href="#">Soups, Salads</a></span>
											</div>
										</div>
									</div>

								</div>

								<script type="text/javascript">
									jQuery(document)
											.ready(
													function($) {

														var ocClients = $("#oc-portfolio-sidebar");

														ocClients
																.owlCarousel({
																	items : 1,
																	margin : 10,
																	loop : true,
																	nav : false,
																	autoplay : true,
																	dots : true,
																	autoplayHoverPause : true
																});

													});
								</script>

							</div>

							<div class="widget quick-contact-widget clearfix">

								<h4>Quick Contact</h4>
								<div id="quick-contact-form-result" data-notify-type="success"
									data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>
								<form id="quick-contact-form" name="quick-contact-form"
									action="include/quickcontact.php" method="post"
									class="quick-contact-form nobottommargin">
									<div class="form-process"></div>

									<input type="text"
										class="required sm-form-control input-block-level"
										id="quick-contact-form-name" name="quick-contact-form-name"
										value="" placeholder="Full Name" /> <input type="text"
										class="required sm-form-control email input-block-level"
										id="quick-contact-form-email" name="quick-contact-form-email"
										value="" placeholder="Email Address" />
									<textarea
										class="required sm-form-control input-block-level short-textarea"
										id="quick-contact-form-message"
										name="quick-contact-form-message" rows="4" cols="30"
										placeholder="Message"></textarea>
									<input type="text" class="hidden"
										id="quick-contact-form-botcheck"
										name="quick-contact-form-botcheck" value="" />
									<button type="submit" id="quick-contact-form-submit"
										name="quick-contact-form-submit"
										class="btn button button-small nomargin" value="submit">Send
										Email</button>
								</form>

								<script type="text/javascript">
									$("#quick-contact-form")
											.validate(
													{
														submitHandler : function(
																form) {
															$(form)
																	.find(
																			'.form-process')
																	.fadeIn();
															$(form)
																	.ajaxSubmit(
																			{
																				target : '#quick-contact-form-result',
																				success : function() {
																					$(
																							form)
																							.find(
																									'.form-process')
																							.fadeOut();
																					$(
																							form)
																							.find(
																									'.sm-form-control')
																							.val(
																									'');
																					$(
																							'#quick-contact-form-result')
																							.attr(
																									'data-notify-msg',
																									$(
																											'#quick-contact-form-result')
																											.html())
																							.html(
																									'');
																					IGNITE.widget
																							.notifications($('#quick-contact-form-result'));
																				}
																			});
														}
													});
								</script>

							</div>

						</div>
					</div>

				</div>

			</div>

		</section>
		<!-- #content end -->



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