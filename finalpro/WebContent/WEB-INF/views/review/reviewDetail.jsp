<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ include file="../header.jsp"%>
<html dir="ltr" lang="ko">
   <style type="text/css">
html, div, body, h3 {
   margin: 0;
   padding: 0;
}

h3 {
   display: inline-block;
   padding: 0.6em;
}
</style>
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
				<h1 style="color:#3b2e5a">���� �����</h1>
				<span style="color: #ffffff">������ �߾��� ����ϼ���!</span>
			</div>

		</section>
   <script type="text/javascript">
      function repl() {
         document.getElementById("repl").action = "insertRepl";
         document.getElementById("repl").submit;
      };
      function deleteRepl(repl) {
         var con=confirm('����� �����Ͻðڽ��ϱ�?');
         if(con){
            alert('����� �����Ǿ����ϴ�.')
            document.getElementById("repl").action = "deleteRepl?rpnum="+repl;
            document.getElementById("repl").submit();
            }else{
               document.getElementById("repl").action = ""
               }
      };
      var a = 0;
      function updateRepl(num,content) {
         if(a===0){
         document.getElementById("contentup").innerHTML='<input type="text" id="uptx" name="content" value='+content+' style="width: 435px;">';
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
      style="animation-duration: 1.5s; opacity: 1; width: 800px; margin-top: 120px; margin-top: 105px; margin-bottom: 105px; margin: 0 auto;">
      <!-- Page Title
        ============================================= -->

      <div style="text-align: left; font-family: serif; height: 100%; padding: 5%;">
         <img id="page-title" class="page-title-parallax" src="${vo.img }" style="width: 900px; padding: 0px; height: 410px; background-position: 50% 0px;"
            data-stellar-background-ratio="0.3">               
                  <div class="entry-overlay-meta">
                            <h2 style="height: 20px;"><a href="goHotelDetail?num=2">���� : ${vo.title }</a></h2>
                            <ul class="iconlist" style="height: 60px;">
                               <li><i class="icon-map-marker2"></i><strong>���̵� : </strong>${vo.id}<c:if test="${vo.id eq sessionScope['id']}">
                                                    <button class="btn button button-small">
                                             <label for="sujung">����</label>
                                                </button>
                                          <button class="btn button button-small">
                                       <label for="sakje">����</label>
                                             </button>
                                    </c:if></li>
                                <li><i class="icon-calendar3"></i> <strong>���� : </strong> ${vo.rdate }</li>
                                <li><i class="icon-eye"></i> <strong>��ȸ�� : </strong> ${vo.hit }</li>
                                <li><i class="icon-map-marker2"></i> <strong>ȣ�ڸ� : </strong>${vo.honame}</li>
                            </ul>
                        </div>


         <div class="single-post nobottommargin"
            style="margin: -5%; text-align: left; height: 475px; padding: 40px;">
            <h2 style="height: 25px;">����</h2>
            
            <div style="border: groove; height: 380px; border-radius: 10px;">
         <table> 
            <tr>
               <th style="font-size: 20px; font-family: fantasy;">
               ${vo.detail }
               </th>
            </tr>
         </table>
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
                  <button type="button"
                     onclick="location.href='deleteReview?num=${vo.num }' "
                     class="btn button button-small" id="sakje" style="display: none;">����</button>
                  <button class="btn button button-small" type="submit" id="sujung"
                     style="display: none;">����</button>
               </c:if>
               <div class="postcontent nobottommargin clearfix"
                  style="width: 100%; margin: 20px; text-align: -webkit-center; height: 175px;">
                  <table style="width: 100%; margin: 0; margin-top: 1%;">
                     <tr>
                        <th colspan="3" style="text-align: center;"></th>
                     </tr>
                     <tr>
                        <th style="width: 10%;">${sessionScope['id']}:</th>
                        <td><input type="text" name="content"
                           placeholder="����� �ۼ��غ�����~!" style="width: 100%;"></td>
                        <td style="width: 10%;"><button
                              class="btn button button-small" onclick="repl()">�ۼ�</button></td>
                     </tr>
                  </table>
                  <table style="width: 95%; margin: 10px;">
                     <c:forEach var="e" items="${repl}">
                        <tr>
                           <th style="width: 150px;">${e.id }:</th>
                           <td id="contentup" style="width: 100%;"><a
                              style="width: 435px;">${e.content }</a></td>
                           <c:if test="${e.id eq sessionScope['id']}">
                              <td style="width: 0%; text-align: center;"><button
                                    onclick="deleteRepl(${e.num })"
                                    class="btn button button-small" type="button">����</button></td>
                              <td style="width: 0%; text-align: left;"><button
                                    id="upbut" type="button"
                                    onclick="updateRepl(${e.num},'${e.content}')"
                                    class="btn button button-small">����</button></td>
                           </c:if>
                        </tr>
                     </c:forEach>
                  </table>
               </div>

            </form>

         </div>


      </div>
</div>

</div>
      <!-- #page-title end -->

      <!-- Content
        ============================================= -->

      <!-- #content end -->

   </div>
</body>


   <!-- #wrapper end -->

   <!-- Go To Top
    ============================================= -->
   <div id="gotoTop" class="icon-angle-up"></div>

   <!-- Footer Scripts
    ============================================= -->
   <script type="text/javascript" src="resources/js/functions.js"></script>


</html>
<%@include file="../footer.jsp"%>