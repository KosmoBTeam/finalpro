<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp" %>

<!-- �������� �ּ�ȭ�� �ֽ� CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- �ΰ����� �׸� -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- �������� �ּ�ȭ�� �ֽ� �ڹٽ�ũ��Ʈ -->
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
                <h1>ȣ�� �����ϱ�</h1>
                <span>ȣ�� ���� </span>
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
                                <h3>�����ϱ�</h3>
                            </div>
                  <!-- ���� ���� ���� -->
                          <div>
                   <form class="form-horizontal" style="margin: 0 auto;"
                  action="hotelIn" method="post">        
               <div class="container" style="width: 690px">
     
  <table class="table">
    <thead>
      <tr>
        <th>���̵�</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td> <input type="text" class="form-control" value="${sessionScope['id']}" id="id" name="id"  placeholder=""></td>
        
        </tr>
    </tbody>
    
    <thead>
      <tr>
        <th>�̸�</th>
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
        <th>��ȭ��ȣ</th>
      </tr>
    </thead>
    <tbody>
      <tr> <td> <input type="text" class="form-control" value="${sessionScope['phone']}" id="phone" name="phone"
                           placeholder=""></td>
      </tr>
    </tbody>
    <thead>
      <tr>
        <th>ȣ�ڸ�</th>
      </tr>
    </thead>
    <tbody>
      <tr> <td> <input type="text" class="form-control" value="${title }" id="honame" name="honame"
                           placeholder=""></td>
      </tr>
    </tbody>
    <thead>
      <tr>
        <th>���� ���� �� ����</th>
      </tr>
    </thead>
    <tbody>
      <tr>
      
         <td><c:forEach var="e" items="${list}">
		<input type="checkbox" id="roomtype" name="roomtype"
                                 value=${e.roomtype } onclick="doOpenCheck(this);"/>${e.roomtype } : ${e.pay }��
                                 <input type="hidden" value="${e.num }" name="num"> 
                  <br>                
                        </c:forEach>
                                    
</td>
      </tr>
    </tbody>
    
    <thead>
      <tr>
        <th>üũ�� ��¥</th>
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
        <th>üũ�ƿ� ��¥</th>
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
        <th>�ο���</th>
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
       class="btn button button-small nomargin">�����ϱ�</button>
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
                       
                        <!-- ���� ���� �� -->

							<!-- ȣ�� ���� -->
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
      
                        
							<!-- ȣ�� �� ���� -->
                            <div class="divider"><i class="icon-circle"></i></div>

							<div class="row">
									<div class="col-xs-6 col-sm-4" id="faq-1">
										<h3>���� �ü�</h3>
										<ul>
											<li>464���� �ݿ� ����</li>
											<li>���� �Ͽ콺Ű��</li>
											<li>6 ���� ������� �� ��/�����</li>
											<li>Ǯ���� ����</li>
											<li>�ǳ� ������</li>
											<li>����ž �׶�</li>
											<li>��ħ �Ļ� ����</li>
											<li>���� ���� ��Ʋ</li>
											<li>��Ʈ�Ͻ� ����</li>
											<li>���۷��� ����</li>
											<li>���� ��Ʋ</li>
											<li>24�ð� � ����Ʈ ����ũ</li>
											<li>���� WiFi</li>
										</ul>
									</div>
									<div class="col-xs-6 col-sm-4">
										<h3>�ֺ� ���</h3>
										<ul>
											<li>�߱��� ��ġ</li>
											<li>���빮���繮ȭ����(�ɾ 18�� �Ÿ�)</li>
											<li>N����Ÿ��(�ɾ 25�� �Ÿ�)</li>
											<li>���Ÿ�(�ɾ 28�� �Ÿ�)</li>
											<li>���빮����(�ɾ 36�� �Ÿ�)</li>
											<li>����Ư����û(�ɾ 37�� �Ÿ�)</li>
											<li>�������(�ɾ 8�� �Ÿ�)</li>
											<li>�ѱ�����(�ɾ 13�� �Ÿ�)</li>
											<li>���빮 ������ �ö���(�ɾ 14�� �Ÿ�)</li>
											<li>���빮���繮ȭ����(�ɾ 15�� �Ÿ�)</li>
											<li>��������(�ɾ 22�� �Ÿ�)</li>
										</ul>

									</div>

									<div class="col-xs-6 col-sm-4">
										<h3>���� ���� �ü�</h3>

										<ul>
											<li>��� ������</li>
											<li>�����</li>
											<li>�����̾� TV ä��</li>
											<li>TV</li>
											<li>���� �����ǰ</li>
											<li>����</li>
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

                                <h4>ȣ�� �ֺ� ��Ҵ�?</h4>
                                <div id="quick-contact-form-result" data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>
                                <form id="quick-contact-form" name="quick-contact-form" action="resources/include/quickcontact.php" method="post" class="quick-contact-form nobottommargin">
                                    <div class="form-process"></div>
                                    
                                    <div style="width: 240px; height: 173px; background-image: url('resources/images/icons/mapicon.jpg')"></div>
                                    <br>
                                    <button type="button" id="quick-contact-form-submit" name="quick-contact-form-submit" 
                                    class="btn button button-small nomargin" value="submit"
                                    onclick="location.href=gosearchmap">�ֺ� �˻��ϱ�</button>
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