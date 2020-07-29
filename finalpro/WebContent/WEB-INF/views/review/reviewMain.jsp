<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<%@include file="../header.jsp"%>

<body class="stretched">

   <!-- Document Wrapper
    ============================================= -->
   <div id="wrapper" class="clearfix">



      <!-- Page Title
        ============================================= -->
      <section id="page-title" class="page-title-parallax" 
        style="background-image: url('resources/images/main/reviewmain.jpg'); 
        padding: 120px 0;" data-stellar-background-ratio="0.3">

            <div class="container clearfix">
                <h1 style="color: #ffffff">여행 게시판</h1>
                <span style="color: #ffffff">소중한 추억을 남겨주세요.</span>
                <ol class="breadcrumb">
                    <li><a href="main">Home</a></li>
                    <li><a href="goReviewMain">여행 게시판</a></li>
                </ol>
            </div>

        </section><!-- #page-title end -->

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
                              <div class="entry-image" style="width: 300px; height: 250px;">
                                 <a href="#"> <img src="resources/images/${e.img}" alt=""
                                    style="width: 300px; height: 250px;">
                                 </a>
                              </div>
                              <div class="entry-c">

                                 <div class="entry-title">
                                    <h2>
                                       <a href="deleteReview?num=${e.num }">${e.title}</a>
                                    </h2>
                                 </div>
                                 <ul class="entry-meta clearfix">
                                    <li><a href="#"><i class="icon-calendar"></i>${e.rdate}</a></li>
                                    <li><b><i class="icon-eye"></i>${e.hit }</b></li>
                                    <li><b>${e.honame }</b></li>
                                 </ul>
                                 <ul class="entry-meta clearfix">
                                    <li style="position: absolute;"><i class="fas fa-user"></i><b>
                                          ${e.id }님</b></li>
                                 </ul>
                                 <div class="entry-content">
                                    <p>${e.detail}</p>
                                    <c:choose>
                                       <c:when test="${e.id eq sessionScope['id']}">
                                          <button type="submit" class="btn button button-small">
                                             <i class="icon-pen">나의 게시물</i>
                                          </button>
                                       </c:when>
                                       <c:otherwise>
                                          <button type="submit" class="btn button button-small">더
                                             읽어보기</button>
                                       </c:otherwise>
                                    </c:choose>
                                 </div>

                              </div>

                           </div>
                        </form>
                     </c:forEach>
                  </div>

                  <!-- Pagination
                        ============================================= -->
                  <div style="text-align: center;">
                     <ul class="pagination">

                        <li class="previous"><c:if test="${paging.nowPage != 1 }">
                              <a
                                 href="goReviewMain?nowPage=${paging.nowPage-1}&cntPerPage=${paging.cntPerPage}">&larr;
                                 Older</a>
                           </c:if> <c:if test="${paging.nowPage==1}">
                              <a
                                 href="goReviewMain?nowPage=${paging.nowPage}&cntPerPage=${paging.cntPerPage}">&larr;
                                 Older</a>
                           </c:if></li>
                        <c:forEach begin="${paging.startPage }" end="${paging.endPage }"
                           var="p">
                           <c:choose>
                              <c:when test="${p == paging.nowPage }">
                                 <li><a>${p }</a></li>
                                 <!-- 현재 페이지 일 경우 링크 해제 -->
                              </c:when>
                              <c:when test="${p != paging.nowPage }">
                                 <!-- 다른 페이지 링크 -->
                                 <li><a
                                    href="goReviewMain?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
                                 </li>
                              </c:when>
                           </c:choose>
                        </c:forEach>

                        <li class="next"><c:if
                              test="${paging.nowPage != paging.lastPage}">
                              <a
                                 href="goReviewMain?nowPage=${paging.nowPage+1 }&cntPerPage=${paging.cntPerPage}">Newer
                                 &rarr;</a>
                           </c:if> <c:if test="${paging.nowPage == paging.lastPage}">
                              <a
                                 href="goReviewMain?nowPage=${paging.nowPage }&cntPerPage=${paging.cntPerPage}">Newer
                                 &rarr;</a>
                           </c:if></li>

                     </ul>
                  </div>
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

                     <div class="widget clearfix"
                        style="padding-top: 10px !important;">

                        <h4>조회수 TOP5 리뷰</h4>
                        <div id="post-list-footer">
                           <c:forEach varStatus="i" var="e" items="${review5List}">
                              <div class="spost clearfix" style="margin-top: 20px;">
                                 <div class="entry-image">
                                    <a
                                       href="goReviewDetail?num=${e.num }&id=${sessionScope['id']}"
                                       class="nobg"><img src="resources/images/${e.img}"
                                       alt=""></a>
                                 </div>
                                 <div class="entry-c">
                                    <div class="entry-title">
                                       <h4>
                                          <a
                                             href="goReviewDetail?num=${e.num }&id=${sessionScope['id']}">${e.title}</a>
                                       </h4>
                                       <p class="nobottommargin"></p>
                                    </div>
                                    <ul class="entry-meta">
                                       <li>조회수 : ${e.hit}</li>
                                    </ul>
                                 </div>
                              </div>
                           </c:forEach>
                        </div>

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