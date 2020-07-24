<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ include file="../header.jsp"%>
<html dir="ltr" lang="ko"">

<body>
	<script type="text/javascript">
		function repl() {
			document.getElementById("repl").action = "insertRepl";
			document.getElementById("repl").submit;
		};
		function deleteRepl(repl) {
			var con=confirm('댓글을 삭제하시겠습니까?');
			if(con){
				alert('댓글이 삭제되었습니다.')
				document.getElementById("repl").action = "deleteRepl?rpnum="+repl;
				document.getElementById("repl").submit();
				}else{
					document.getElementById("repl").action = ""
					}
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
				
				document.getElementById("repl").submit();	
			}
		};
	</script>
	<!-- Document Wrapper
    ============================================= -->
	<div id="wrapper" class="clearfix"
		style="animation-duration: 1.5s; opacity: 1;">
		<!-- Page Title
        ============================================= -->




		<div style="text-align: center; font-family: serif;">
			<img id="page-title" class="page-title-parallax"
				src="resources/images/${vo.img }"
				style="padding: 120px 0; width: -webkit-fill-available; padding: 0px 0px; height: max-content; height: 400px;"
				data-stellar-background-ratio="0.3"> <span
				style="font-size: 70px;">${vo.title }</span>
			<h2>
				여행자 : ${vo.id}
				<c:if test="${vo.id eq sessionScope['id']}">
					<button class="btn button button-small">
						<label for="sujung">수정</label>
					</button>
					<button class="btn button button-small">
						<label for="sakje">삭제</label>
					</button>
				</c:if>
			</h2>
			<ul class="entry-meta clearfix"
				style="text-align: center; display: inline-block; font-size: 30px;">
				<li><i class="icon-calendar3"></i> ${vo.rdate }</li>
				<li><a><i class="icon-eye"></i> ${vo.hit }</a></li>
				<li>${vo.honame}</li>
			</ul>
			<div class="single-post nobottommargin" style="margin: 5%;">
				<div class="entry clearfix">
					<p style="font-size: 20px; font-family: fantasy;">${vo.detail }</p>
				</div>
			</div>

			<!-- Post Content
                    ============================================= -->
			<div class="postcontent nobottommargin clearfix" style="width: 100%;">
				<form action="goEditReview" method="post" id="repl">
					<input type="hidden" value="${vo.title }" name="title" /> <input
						type="hidden" value="${vo.rdate}" name="rdate" /> <input
						type="hidden" value="${vo.hit}" name="hit" /> <input
						type="hidden" value="${vo.img}" name="img" /> <input
						type="hidden" value="${vo.detail}" name="detail" /> <input
						type="hidden" value="${vo.id}" name="id" /> <input type="hidden"
						value="${vo.num}" name="num" />

					<c:if test="${vo.id eq sessionScope['id']}">
						<a href="deleteReview?num=${vo.num }"
							class="btn button button-small" id="sakje" style="display: none;">삭제</a>
						<button class="btn button button-small" type="submit" id="sujung"
							style="display: none;">수정</button>
					</c:if>
					<div class="postcontent nobottommargin clearfix"
						style="width: 100%; margin: 0; text-align: -webkit-center;">
						<table style="width: 80%; margin: 0; margin-top: 5%;">
							<tr>
								<th colspan="3" style="text-align: center;"><h1>StartRepl!
										나만의 댓글을 적어보아요!</h1></th>
							</tr>
							<tr>
								<th style="width: 10%;">${sessionScope['id']}:</th>
								<td><input type="text" name="content"
									placeholder="댓글을 작성해보세요~!" style="width: 100%;"></td>
								<td style="width: 10%;"><button
										class="btn button button-small" onclick="repl()">작성</button></td>
							</tr>
						</table>
						<table style="width: 80%; margin: 0;">
							<c:forEach var="e" items="${repl}">
								<tr>
									<th style="width: 150px;">${e.id }:</th>
									<td id="contentup" style="width: 100%;"><a
										style="width: 1000px;">${e.content }</a></td>
									<td style="width: 200px;">${e.rdate }</td>
								</tr>

								<tr>
									<c:if test="${e.id eq sessionScope['id']}">
										<td style="width: 0%; text-align: center;"><button
												onclick="deleteRepl(${e.num })"
												class="btn button button-small" type="button">삭제</button></td>
										<td style="width: 0%; text-align: left;"><button
												id="upbut" type="button"
												onclick="updateRepl(${e.num},'${e.content}')"
												class="btn button button-small">수정</button></td>
									</c:if>
								</tr>
							</c:forEach>
						</table>
					</div>

				</form>

			</div>


		</div>



		<!-- #page-title end -->

		<!-- Content
        ============================================= -->

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
<style>
.entry-meta li {
	font-size: 25px;
}

.entry-meta li i {
	font-size: 25px;
}

p {
	font-size: 20px;
	font-family: fantasy;
}

.single-post .entry p {
	margin: 0 0
}

html, body {
	height: 100% !important;
}
</style>