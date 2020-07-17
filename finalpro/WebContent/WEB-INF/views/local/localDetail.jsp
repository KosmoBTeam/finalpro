<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@ include file="../header.jsp"%>
<body class="stretched">

	<!-- Document Wrapper
    ============================================= -->
	<div id="wrapper" class="clearfix">
		<!-- #header end -->

		<!-- Page Title
        ============================================= -->
		<section id="page-title" class="page-title-dark">
			<div class="container clearfix">
				<h1>${name }</h1>
			</div>
		</section>
		<!-- #page-title end -->

		<!-- Content
        ============================================= -->
		<section id="content">
			<div class="content-wrap bgcolor-grey-light">
				<div class="container clearfix">
					<!-- Portfolio Filter
                    ============================================= -->
					<ul id="portfolio-filter" class="clearfix">
						<li class="activeFilter"><a href="#" data-filter="*">All</a></li>
						<li><a href="#" data-filter=".pf-food">식당</a></li>
						<li><a href="#" data-filter=".pf-hotel">호텔</a></li>
						<li><a href="#" data-filter=".pf-act">여행지</a></li>
					</ul>
					<!-- #portfolio-filter end -->

					<div class="clear"></div>

					<!-- Portfolio Items
                    ============================================= -->
					<div id="portfolio" class="portfolio-1 clearfix">
						<c:forEach var="e" items="${listfood }">

							<article class="portfolio-item pf-classes pf-food alt clearfix">

								<div class="portfolio-image">
									<div class="fslider" data-arrows="false">
										<div class="flexslider">
											<div class="slider-wrap">
												<div class="slide">
													<img src="resources/images/local/detail/${e.img }" alt="">
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="portfolio-desc">
									<h3>${e.title }</h3>
									<span>${e.address }</a></span>
									<p>${e.tel }<br>${e.detail }
									</p>
								</div>
								<!-- Portfolio Single - Share
                        	============================================= -->

								<!-- Portfolio Single - Share End -->
							</article>
						</c:forEach>



						<c:forEach var="f" items="${listhotel }">

							<article class="portfolio-item pf-classes pf-hotel alt clearfix">
								<form action="goHotelReserve" method="post">
									<input type="hidden" value="${f.title}" name="title"> <input
										type="hidden" value="${f.num}" name="num">
									<div class="portfolio-image">
										<div class="fslider" data-arrows="false">
											<div class="flexslider">
												<div class="slider-wrap">
													<div class="slide">
														<img src="resources/images/local/detail/${f.img }" alt="">
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="portfolio-desc">
										<h3>${f.title }</h3>
										<span>${f.address }</span>
										<p>${f.tel }<br>${f.detail }
										</p>
										<br>
										<br>
										<br>
										<br>
										<br>
										<br>
										<br>
										<br> <button type="submit"
											class="btn button button-light noleftmargin">예약하러 가기</button> <a
											href="goHotelDetail?num=${f.num}"
											class="btn button button-light noleftmargin">상세페이지</a>
									</div>
								</form>
								<!-- Portfolio Single - Share
                        	============================================= -->

								<!-- Portfolio Single - Share End -->
							</article>

						</c:forEach>




						<c:forEach var="g" items="${listact }">

							<article class="portfolio-item pf-classes pf-act alt clearfix">

								<div class="portfolio-image">
									<div class="fslider" data-arrows="false">
										<div class="flexslider">
											<div class="slider-wrap">
												<div class="slide">
													<img src="resources/images/local/detail/${g.img }" alt="">
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="portfolio-desc">
									<h3>${g.title }</h3>
									<span>${g.address }</a></span>
									<p>${g.tel }<br>${g.detail }
									</p>
								</div>
								<!-- Portfolio Single - Share
                        	============================================= -->

								<!-- Portfolio Single - Share End -->
							</article>
						</c:forEach>
					</div>
					<!-- #portfolio end -->


					<!-- Portfolio Script
                    ============================================= -->
					<script type="text/javascript">
						jQuery(window)
								.load(
										function() {
											var $container = $('#portfolio');
											$container.isotope({
												transitionDuration : '0.65s'
											});
											$('#portfolio-filter a')
													.click(
															function() {
																$(
																		'#portfolio-filter li')
																		.removeClass(
																				'activeFilter');
																$(this)
																		.parent(
																				'li')
																		.addClass(
																				'activeFilter');
																var selector = $(
																		this)
																		.attr(
																				'data-filter');
																$container
																		.isotope({
																			filter : selector
																		});
																return false;
															});
											$('#portfolio-shuffle')
													.click(
															function() {
																$container
																		.isotope(
																				'updateSortData')
																		.isotope(
																				{
																					sortBy : 'random'
																				});
															});
											$(window).resize(function() {
												$container.isotope('layout');
											});
										});
					</script>
					<!-- Portfolio Script End -->
				</div>
			</div>
		</section>
		<!-- #content end -->

		<!-- Footer
        ============================================= -->

		<!-- #footer end -->

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