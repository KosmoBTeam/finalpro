<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp" %>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">



 
<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">
   
       <!-- #header end -->

        <!-- Page Title
        ============================================= -->
        <section id="page-title" class="page-title-parallax page-title-dark" style="padding: 200px 0; background-image:url('resources/images/hotel/hotelreservemain.jpg'); background-size: cover; background-position: center center;" data-stellar-background-ratio="0.2">

            <div class="container clearfix">
                <h1>호텔 예약하기</h1>
                <span>호텔 예약 </span>
            </div>

        </section><!-- #page-title end -->

        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap bgcolor-grey-light">

                <div class="container clearfix">

                    <div class="postcontent nobottommargin clearfix">
                        <div class="nobottommargin">

                     <!-- Start FAQs -->
                     <div id="faqs" class="faqs">

                            <div id="faqs-list" class="fancy-title title-bottom-border">
                                <h3>예약하기</h3>
                            </div>
                  <!-- 예약 내용 시작 -->
                          <div>
                   <form class="form-horizontal" style="margin: 0 auto;"
                  action="hotelIn" method="post">        
               <div class="container" style="width: 690px">
     
  <table class="table">
    <thead>
      <tr>
        <th>아이디</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td> <input type="text" class="form-control" value="${sessionScope['id']}" id="id" name="id"  placeholder=""></td>
        
        </tr>
    </tbody>
    
    <thead>
      <tr>
        <th>이름</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td> <input type="text" class="form-control"  value="${sessionScope['name']}" id="name" name="name"  placeholder=""
></td>
        </tr>
    </tbody>
    
    <thead>
      <tr>
        <th>전화번호</th>
      </tr>
    </thead>
    <tbody>
      <tr> <td> <input type="text" class="form-control" value="${sessionScope['phone']}" id="phone" name="phone"
                           placeholder=""></td>
      </tr>
    </tbody>
    <thead>
      <tr>
        <th>호텔명</th>
      </tr>
    </thead>
    <tbody>
      <tr> <td> <input type="text" class="form-control" value="${title }" id="honame" name="honame"
                           placeholder=""></td>
      </tr>
    </tbody>
    <thead>
      <tr>
        <th>객실 종류 및 가격</th>
      </tr>
    </thead>
    <tbody>
      <tr>
      
         <td><c:forEach var="e" items="${list}">
		<input type="checkbox" id="roomtype" name="roomtype"
                                 value=${e.roomtype } onclick="doOpenCheck(this);"/>${e.roomtype } : ${e.pay }원
                                 <input type="hidden" value="${e.num }" name="num"> 
                  <br>                
                        </c:forEach>
                                    
</td>
      </tr>
    </tbody>
    
    <thead>
      <tr>
        <th>체크인 날짜</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>   <input type="text" class="form-control" id="checkin"
                           name="checkin" >
                    
</td>
      </tr>
    </tbody>
    
    <thead>
      <tr>
        <th>체크아웃 날짜</th>
      </tr>
    </thead>
    <tbody>
      <tr>
         <td> <input type="text" class="form-control" id="checkout"
                           name="checkout" ></td>
      </tr>
    </tbody>
    
    <thead>
      <tr>
        <th>인원수</th>
      </tr>
    </thead>
    <tbody>
      <tr>
         <td><input type="number" min="1" max="100" class="form-control" id="people"
                           name="people" ></td>
      </tr>
       <thead>
      <tr>
       <th> <button type="submit" id="quick-contact-form-submit" name="quick-contact-form-submit" 
       class="btn button button-small nomargin">예약하기</button>
       </th>
      </tr>
    </thead>
    </tbody>
    
   
    
  </table>
</div>
               
               
                </form> </div> 
                <script>
                function doOpenCheck(chk){
                    var obj = document.getElementsByName("roomtype");
                    for(var i=0; i<obj.length; i++){
                        if(obj[i] != chk){
                            obj[i].checked = false;
                        }
                    }
                }
                $("#checkin").datepicker();
                $("#checkout").datepicker();





                </script>            
                       
                        <!-- 예약 내용 끝 -->

							<!-- 호텔 사진 -->
                        <div class="divider"><i class="icon-circle"></i></div>
                     <div
                        class="section1 parallax notopmargin nobottommargin notopborder"
                        style="background-image: url(&amp;quot;resources/images/main/main5.jpg&amp;quot;); padding: 50px 0;"
                        data-stellar-background-ratio="0.3">
                        <div class="container clearfix">
                           <div class="row">
                              <div id="oc-testi" class="owl-carousel testimonials-carousel">
                                 <c:forEach var="e" items="${listfood }">
                                    <div class="oc-item pf-food">
                                       <div class="testimonial">
                                          <div class="testi-image1">
                                             <a><img src="resources/images/hotel/jejuhotel1.JPG"
                                                alt="" style=" width:336px; height:225px;"></a>
                                          </div>
                                          <br><br><br>
                                       </div>
                                    </div>
                                 </c:forEach>
                              </div>

                              <script type="text/javascript">
                                 jQuery(document).ready(function($) {
                                    var ocTesti = $("#oc-testi");
                                    ocTesti.owlCarousel({
                                       margin : 20,
                                       nav : true,
                                       dots : true,
                                       responsive : {0 : {items : 1},768 : {items : 2},992 : {items : 3}}});});
                              </script>
                           </div>
                        </div>
                     </div>
      
                        
							<!-- 호텔 상세 내용 -->
                            <div class="divider"><i class="icon-circle"></i></div>

							<div class="row">
									<div class="col-xs-6 col-sm-4" id="faq-1">
										<h3>편의 시설</h3>
										<ul>
											<li>464개의 금연 객실</li>
											<li>매일 하우스키핑</li>
											<li>6 개의 레스토랑 및 바/라운지</li>
											<li>풀서비스 스파</li>
											<li>실내 수영장</li>
											<li>루프탑 테라스</li>
											<li>아침 식사 가능</li>
											<li>무료 지역 셔틀</li>
											<li>피트니스 센터</li>
											<li>컨퍼런스 센터</li>
											<li>공항 셔틀</li>
											<li>24시간 운영 프런트 데스크</li>
											<li>무료 WiFi</li>
										</ul>
									</div>
									<div class="col-xs-6 col-sm-4">
										<h3>주변 명소</h3>
										<ul>
											<li>중구에 위치</li>
											<li>동대문역사문화공원(걸어서 18분 거리)</li>
											<li>N서울타워(걸어서 25분 거리)</li>
											<li>명동거리(걸어서 28분 거리)</li>
											<li>남대문시장(걸어서 36분 거리)</li>
											<li>서울특별시청(걸어서 37분 거리)</li>
											<li>남산공원(걸어서 8분 거리)</li>
											<li>한국의집(걸어서 13분 거리)</li>
											<li>동대문 디자인 플라자(걸어서 14분 거리)</li>
											<li>동대문역사문화공원(걸어서 15분 거리)</li>
											<li>흥인지문(걸어서 22분 거리)</li>
										</ul>

									</div>

									<div class="col-xs-6 col-sm-4">
										<h3>가족 편의 시설</h3>

										<ul>
											<li>어린이 수영장</li>
											<li>냉장고</li>
											<li>프리미엄 TV 채널</li>
											<li>TV</li>
											<li>무료 세면용품</li>
											<li>정원</li>
										</ul>
									</div>


								</div>
						
                            <div class="divider"><i class="icon-circle"></i></div>

                            <h3 id="faq-1">What are the hours of operation?</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dolor elit, vulputate a lorem eu, maximus sodales nunc. Mauris enim diam, posuere quis eros a, pretium semper mauris. Pellentesque ac ligula volutpat, pharetra mauris id, tempus velit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum quis justo egestas, euismod ligula sed, auctor quam. Nulla iaculis consequat tellus, nec tincidunt erat bibendum in. Phasellus iaculis ipsum orci, eget placerat ipsum rhoncus ut. Praesent vel purus faucibus, hendrerit velit a, sollicitudin magna. Morbi congue fringilla elementum. Quisque bibendum lorem vel ex viverra tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>

                            <div class="divider divider-right"><a href="#" data-scrollto="#faqs-list"><i class="icon-chevron-up"></i></a></div>

                            <h3 id="faq-2">Holiday Hours</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dolor elit, vulputate a lorem eu, maximus sodales nunc. Mauris enim diam, posuere quis eros a, pretium semper mauris. Pellentesque ac ligula volutpat, pharetra mauris id, tempus velit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum quis justo egestas, euismod ligula sed, auctor quam. Nulla iaculis consequat tellus, nec tincidunt erat bibendum in. Phasellus iaculis ipsum orci, eget placerat ipsum rhoncus ut. Praesent vel purus faucibus, hendrerit velit a, sollicitudin magna. Morbi congue fringilla elementum. Quisque bibendum lorem vel ex viverra tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>

                            <div class="divider divider-right"><a href="#" data-scrollto="#faqs-list"><i class="icon-chevron-up"></i></a></div>

                            <h3 id="faq-3">What is the current promotion? Are there any specials?</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dolor elit, vulputate a lorem eu, maximus sodales nunc. Mauris enim diam, posuere quis eros a, pretium semper mauris. Pellentesque ac ligula volutpat, pharetra mauris id, tempus velit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum quis justo egestas, euismod ligula sed, auctor quam. Nulla iaculis consequat tellus, nec tincidunt erat bibendum in. Phasellus iaculis ipsum orci, eget placerat ipsum rhoncus ut. Praesent vel purus faucibus, hendrerit velit a, sollicitudin magna. Morbi congue fringilla elementum. Quisque bibendum lorem vel ex viverra tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>

                            <div class="divider divider-right"><a href="#" data-scrollto="#faqs-list"><i class="icon-chevron-up"></i></a></div>

                            <h3 id="faq-4">Do you offer catering?</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dolor elit, vulputate a lorem eu, maximus sodales nunc. Mauris enim diam, posuere quis eros a, pretium semper mauris. Pellentesque ac ligula volutpat, pharetra mauris id, tempus velit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum quis justo egestas, euismod ligula sed, auctor quam. Nulla iaculis consequat tellus, nec tincidunt erat bibendum in. Phasellus iaculis ipsum orci, eget placerat ipsum rhoncus ut. Praesent vel purus faucibus, hendrerit velit a, sollicitudin magna. Morbi congue fringilla elementum. Quisque bibendum lorem vel ex viverra tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>

                            <div class="divider divider-right"><a href="#" data-scrollto="#faqs-list"><i class="icon-chevron-up"></i></a></div>

                            <h3 id="faq-5">Where will you be building future restaurants?</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dolor elit, vulputate a lorem eu, maximus sodales nunc. Mauris enim diam, posuere quis eros a, pretium semper mauris. Pellentesque ac ligula volutpat, pharetra mauris id, tempus velit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum quis justo egestas, euismod ligula sed, auctor quam. Nulla iaculis consequat tellus, nec tincidunt erat bibendum in. Phasellus iaculis ipsum orci, eget placerat ipsum rhoncus ut. Praesent vel purus faucibus, hendrerit velit a, sollicitudin magna. Morbi congue fringilla elementum. Quisque bibendum lorem vel ex viverra tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>

                            <div class="divider divider-right"><a href="#" data-scrollto="#faqs-list"><i class="icon-chevron-up"></i></a></div>

                            <h3 id="faq-6">Where do I fill out a survey of my visit?</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dolor elit, vulputate a lorem eu, maximus sodales nunc. Mauris enim diam, posuere quis eros a, pretium semper mauris. Pellentesque ac ligula volutpat, pharetra mauris id, tempus velit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum quis justo egestas, euismod ligula sed, auctor quam. Nulla iaculis consequat tellus, nec tincidunt erat bibendum in. Phasellus iaculis ipsum orci, eget placerat ipsum rhoncus ut. Praesent vel purus faucibus, hendrerit velit a, sollicitudin magna. Morbi congue fringilla elementum. Quisque bibendum lorem vel ex viverra tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>

                            <div class="divider divider-right"><a href="#" data-scrollto="#faqs-list"><i class="icon-chevron-up"></i></a></div>

                            <h3 id="faq-7">Where can I get a coupon?</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dolor elit, vulputate a lorem eu, maximus sodales nunc. Mauris enim diam, posuere quis eros a, pretium semper mauris. Pellentesque ac ligula volutpat, pharetra mauris id, tempus velit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum quis justo egestas, euismod ligula sed, auctor quam. Nulla iaculis consequat tellus, nec tincidunt erat bibendum in. Phasellus iaculis ipsum orci, eget placerat ipsum rhoncus ut. Praesent vel purus faucibus, hendrerit velit a, sollicitudin magna. Morbi congue fringilla elementum. Quisque bibendum lorem vel ex viverra tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>

                            <div class="divider divider-right"><a href="#" data-scrollto="#faqs-list"><i class="icon-chevron-up"></i></a></div>

                            <h3 id="faq-8">Do you give back to local organizations?</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dolor elit, vulputate a lorem eu, maximus sodales nunc. Mauris enim diam, posuere quis eros a, pretium semper mauris. Pellentesque ac ligula volutpat, pharetra mauris id, tempus velit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum quis justo egestas, euismod ligula sed, auctor quam. Nulla iaculis consequat tellus, nec tincidunt erat bibendum in. Phasellus iaculis ipsum orci, eget placerat ipsum rhoncus ut. Praesent vel purus faucibus, hendrerit velit a, sollicitudin magna. Morbi congue fringilla elementum. Quisque bibendum lorem vel ex viverra tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>

                            <div class="divider divider-right"><a href="#" data-scrollto="#faqs-list"><i class="icon-chevron-up"></i></a></div>

                            <h3 id="faq-9">Do you offer group discounts?</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dolor elit, vulputate a lorem eu, maximus sodales nunc. Mauris enim diam, posuere quis eros a, pretium semper mauris. Pellentesque ac ligula volutpat, pharetra mauris id, tempus velit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum quis justo egestas, euismod ligula sed, auctor quam. Nulla iaculis consequat tellus, nec tincidunt erat bibendum in. Phasellus iaculis ipsum orci, eget placerat ipsum rhoncus ut. Praesent vel purus faucibus, hendrerit velit a, sollicitudin magna. Morbi congue fringilla elementum. Quisque bibendum lorem vel ex viverra tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>

                            <div class="divider divider-right"><a href="#" data-scrollto="#faqs-list"><i class="icon-chevron-up"></i></a></div>

                            <h3 id="faq-10">Is there a free birthday offer in the restaurant?</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dolor elit, vulputate a lorem eu, maximus sodales nunc. Mauris enim diam, posuere quis eros a, pretium semper mauris. Pellentesque ac ligula volutpat, pharetra mauris id, tempus velit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum quis justo egestas, euismod ligula sed, auctor quam. Nulla iaculis consequat tellus, nec tincidunt erat bibendum in. Phasellus iaculis ipsum orci, eget placerat ipsum rhoncus ut. Praesent vel purus faucibus, hendrerit velit a, sollicitudin magna. Morbi congue fringilla elementum. Quisque bibendum lorem vel ex viverra tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>

                        </div>
                        <!-- End FAQs -->

                        </div>
                    </div>

                    <!-- Sidebar
                    ============================================= -->
                    <div class="sidebar nobottommargin col_last clearfix">
                        <div class="sidebar-widgets-wrap">
                        
                            <div class="widget quick-contact-widget clearfix">

                                <h4>호텔 주변 명소는?</h4>
                                <div id="quick-contact-form-result" data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>
                                <form id="quick-contact-form" name="quick-contact-form" action="resources/include/quickcontact.php" method="post" class="quick-contact-form nobottommargin">
                                    <div class="form-process"></div>
                                    
                                    <div style="width: 240px; height: 173px; background-image: url('resources/images/icons/mapicon.jpg')"></div>
                                    <br>
                                    <button type="button" id="quick-contact-form-submit" name="quick-contact-form-submit" 
                                    class="btn button button-small nomargin" value="submit"
                                    onclick="location.href=gosearchmap">주변 검색하기</button>
                                </form>

                                <script type="text/javascript">

                                    $("#quick-contact-form").validate({
                                        submitHandler: function(form) {
                                            $(form).find('.form-process').fadeIn();
                                            $(form).ajaxSubmit({
                                                target: '#quick-contact-form-result',
                                                success: function() {
                                                    $(form).find('.form-process').fadeOut();
                                                    $(form).find('.sm-form-control').val('');
                                                    $('#quick-contact-form-result').attr('data-notify-msg', $('#quick-contact-form-result').html()).html('');
                                                    IGNITE.widget.notifications($('#quick-contact-form-result'));
                                                }
                                            });
                                        }
                                    });

                                </script>

                            </div>
                            
                         </div>   
                    </div><!-- .sidebar end -->
                </div>

          </div>

        </section><!-- #content end -->

        <!-- Footer
        ============================================= -->
      

    </div><!-- #wrapper end -->

    <!-- Go To Top
    ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- Footer Scripts
    ============================================= -->
    <script type="text/javascript" src="resources/js/functions.js"></script>

</body>
</html>
<%@include file="../footer.jsp"%>