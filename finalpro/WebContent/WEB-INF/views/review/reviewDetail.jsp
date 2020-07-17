<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ include file="../header.jsp"%>
<html dir="ltr" lang="ko">
<body class="stretched">
	<script type="text/javascript">
		function repl() {
			document.getElementById("repl").action = "insertRepl";
			document.getElementById("repl").submit;
		};
		function deleteRepl(repl) {
			document.getElementById("repl").action = "deleteRepl?rpnum="+repl;
			document.getElementById("repl").submit;
		};
		var a = 0;
		function updateRepl(num,content) {
			if(a===0){
			document.getElementById("contentup").innerHTML='<input type="text" id="uptx" name="content" value='+content+' style="width: 1000px;">';
			a=1;
			}else{
				console.log("updateRepl?rpnum="+num+"&rpcon="+content);
				document.getElementById("repl").action = "updateRepl?rpnum="+num+"&rpcon="+document.getElementById("uptx").value;
				document.getElementById("upbut").type="submit";
				
				document.getElementById("repl").submit;	
			}
		};
	</script>
	<!-- Document Wrapper
    ============================================= -->
	<div id="wrapper" class="clearfix">



		<!-- Page Title
        ============================================= -->
		<section id="page-title" class="page-title-parallax"
			style="background-image: url('resources/images/logo.png'); padding: 120px 0;"
			data-stellar-background-ratio="0.3">

			<div class="container clearfix">
				<h1>상세 리뷰페이지</h1>


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
						<form action="goEditReview" method="post" id="repl">
							<input type="hidden" value="${vo.title }" name="title" /> <input
								type="hidden" value="${vo.rdate}" name="rdate" /> <input
								type="hidden" value="${vo.hit}" name="hit" /> <input
								type="hidden" value="${vo.img}" name="img" /> <input
								type="hidden" value="${vo.detail}" name="detail" /> <input
								type="hidden" value="${vo.id}" name="id" /> <input
								type="hidden" value="${vo.num}" name="num" />
							<div class="single-post nobottommargin">

								<!-- Single Post
                            ============================================= -->
								<div class="entry clearfix">

									<!-- Entry Title
                                ============================================= -->
									<div class="entry-title">
										<h1>${vo.title }</h1>
										<h3>작성자 : ${vo.id}</h3>
									</div>
									<!-- .entry-title end -->

									<!-- Entry Meta
                                ============================================= -->
									<ul class="entry-meta clearfix">
										<li><i class="icon-calendar3"></i> ${vo.rdate }</li>
										<li><a><i class="icon-user"></i> ${vo.hit }</a></li>
										<li>호텔명 : ${vo.honame}</li>
									</ul>
									<!-- .entry-meta end -->

									<!-- Entry Content
                                ============================================= -->
									<div class="entry-content notopmargin">

										<!-- Entry Image
                                    ============================================= -->
										<div class="entry-image alignleft">
											<a><img src="resources/images/${vo.img }"
												alt="Blog Single"></a>
										</div>
									</div>
									<p>${vo.detail }</p>
								</div>
							</div>
							<c:if test="${vo.id eq sessionScope['id']}">
								<a href="deleteReview?num=${vo.num }"
									class="btn button button-small">삭제</a>
								<button class="btn button button-small" type="submit">수정</button>
							</c:if>
							<div class="postcontent nobottommargin clearfix">
								<table style="margin-top: 100px;">
									<tr>
										<th colspan="3"><h1>StartRepl! 댓글을 적어보아요!</h1>
										</th>
									</tr>
									<tr>
										<th>${sessionScope['id']}</th>
										<td><input type="text" name="content"
											placeholder="댓글을 작성해보세요~!" style="width: 1000px;"></td>
										<td><button class="btn button button-small"
												onclick="repl()">작성</button></td>
									</tr>
								</table>
								<table style="width: 1300px;">
									<c:forEach var="e" items="${repl}">
										<tr>
											<th style="width: 150px; ">${e.id }님의repl:</th>
											<td id="contentup" style="width: 1000px;"><a style="width: 1000px;" >${e.content }</a></td>
											<td style="width: 200px;">${e.rdate }</td>
											<c:if test="${e.id eq sessionScope['id']}">
												<td><button onclick="deleteRepl(${e.num })"
														class="btn button button-small">삭제</button></td>
												<td><button id="upbut" type="button" onclick="updateRepl(${e.num},'${e.content}')"
														class="btn button button-small">수정</button></td>
											</c:if>
										</tr>
									</c:forEach>
								</table>
							</div>

						</form>

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