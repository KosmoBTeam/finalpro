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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4ebe4b5dd8c56619a4b9036bc01619aa&libraries=services,clusterer,drawing"></script>


 
<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">
   
       <!-- #header end -->

        <!-- Page Title
        ============================================= -->
       <section id="page-title" class="page-title-parallax page-title-dark" style="padding: 200px 0; 
        background-image:url('resources/images/hotel/hotelreservemain.jpg'); background-size: cover; 
        background-position: center center;" 
        data-stellar-background-ratio="0.2">

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
                           placeholder="${title }"></td>
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
                      
      
                        
                     <!-- ȣ�� �� ���� -->

                  
                         

                        </div>
                        <!-- End FAQs -->

                        </div>
                    </div>

                    <!-- Sidebar
                    ============================================= -->
                    <div class="sidebar nobottommargin col_last clearfix">
                        <div class="sidebar-widgets-wrap">
                        
                            <div class="widget quick-contact-widget clearfix">
                     <!-- ������� -->
                     <h3 style="font-weight: bold;">${title }</h3>
                     
                     <img  src="${vo.img }">
                     
                               

                            </div>
                            
                            <div class="widget clearfix" style="height: 100%;">

                                <h3 style="font-weight: bold;">�� ����</h3>
                                <ul>
                                     <li>${vo.address }</li>
                                     <li>${vo.tel }</li>
                                     <c:forEach var="e" items="${detail }">
                                     <li>${e }</li>
                                     </c:forEach>
                                </ul>

                               

                                
                            </div>                                                   
                        
                            <div class="widget clearfix">

                                

                                  <h3>��ġ</h3>
                                  <div id="map" style="width: 240px; height: 180px;"></div>
                                  

                                   

                                

                                <script>
                                    $(function() {
                                        $( "#sidebar-tabs" ).tabs({ show: { effect: "fade", duration: 400 } });
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
      <script>
      var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
      mapOption = { 
          center: new kakao.maps.LatLng(${vo.mapy}, ${vo.mapx}), // ������ �߽���ǥ
          level: 3 // ������ Ȯ�� ����
      };

  var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

  // ��Ŀ�� ǥ�õ� ��ġ�Դϴ� 
  var markerPosition  = new kakao.maps.LatLng(${vo.mapy}, ${vo.mapx}); 

  // ��Ŀ�� �����մϴ�
  var marker = new kakao.maps.Marker({
      position: markerPosition
  });

  // ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
  marker.setMap(map);

      </script>

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