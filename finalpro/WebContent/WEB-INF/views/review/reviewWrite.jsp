<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp"%>
<!-- #header end -->

<body class="stretched">

	<!-- Document Wrapper
    ============================================= -->
	<div id="wrapper" class="clearfix">



		<!-- Page Title
        ============================================= -->
			<section id="page-title" class="page-title-parallax page-title-dark"
			style="background-image: url('resources/images/main/reviewmain.jpg'); padding: 120px 0; margin: 0 auto;"
			data-stellar-background-ratio="0.3">

			<div class="container clearfix">
				<h1 style="color:#3b2e5a">리뷰 남기기</h1>
				<span style="color: #ffffff">소중한 추억을 기록하세요!</span>
			</div>

		</section>
		<!-- end -->

		<!-- Content
        ============================================= -->
		<section id="content">

			<div class="content-wrap bgcolor-grey-light">

				<div class="container clearfix">
				
				<form>
  <div class="form-group">
  <input type="hidden" name="id" value="${sessionScope['id']}">
    <label for="exampleInputEmail1">제목</label>
    <input type="text" class="form-control" placeholder="제목을 입력하세요" name="title" id="">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">내용</label>
    <textarea class="form-control" rows="8" name="detail" placeholder="내용을 작성해주세요"></textarea>
    <input type="hidden" id="hotelname" name="honame"
								value="${honame }" class="" />
  </div>
  <div class="form-group">
   <p class="help-block">사진을 업로드 할 사진을 선택해주세요.</p>
    <label for="mfile">사진 업로드</label>
    <input type="file" name="mfile" id="mfile">
    <input type="hidden" name="img"	id="img">
  </div>
  <div class="form-group">
  <button type="submit" class="btn pull-right btn btn-warning">등록 하기</button>
  </div>
</form>

				</div>

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
		<!-- Footer
        ============================================= -->


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