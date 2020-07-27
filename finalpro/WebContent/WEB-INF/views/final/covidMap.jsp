<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp"%>
<style>
	#covid{
		color: red;
	}
</style>
<!-- #header end -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4ebe4b5dd8c56619a4b9036bc01619aa&libraries=services,clusterer,drawing"></script>
<body class="stretched">

	<!-- Document Wrapper
    ============================================= -->
	<div id="wrapper" class="clearfix">



		<!-- Page Title
        ============================================= -->
			<section id="page-title" class="page-title-parallax page-title-dark"
			style="background-image: url('resources/images/main/covid2.jpg'); padding: 120px 0; margin: 0 auto;"
			data-stellar-background-ratio="0.3">

			<div class="container clearfix">
				<h1 id="covid" style="color: rgb(179 30 30);">COVID-19</h1>
				<span style="color:black;">지역별 코로나 확진자 현황</span>
			</div>

		</section>
		<!-- end -->

		<!-- Content
        ============================================= -->
		<section id="content">

			<div class="content-wrap bgcolor-grey-light">

				<div class="container clearfix">
				
					<!-- 코로나 맵 -->
                <div class="divider"><i class="icon-circle"></i></div>
                <div>
                 <strong style="color:; font-size: 38px; display: flow-root; text-align: center; margin-bottom: 20px;">코로나 현황판</strong></div>
               <div class="row" style=" width: 100%; height: 600px; ">
              
                    <div class="col-md-8" style="height: 600px; text-align: center;" >
                    <!-- 코로나 테이블 시작 -->
                    <table class="table table-condensed table table-striped" style="right: 100%;">
                    <thead style="border: 1px;  border: 1px ; ">
                    <tr>
                    <th  style="text-align: center;">시도명</th>
                    <th  style="text-align: center;">확진환자(명)</th>
                    <th  style="text-align: center;">격리해제(명)</th>
                    <th  style="text-align: center;">사망자(명)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${cityarr }" var="city"  varStatus="status">
                  
                    <tr  style="color: black; font-weight: bold;" >
                    <td>${city }</td> 
                    <td>${cohwakarr[status.index]}</td>
                    <td>${geokarr[status.index]}</td>
                    <td>${diearr[status.index]}</td>
                    </tr>
                    
                 
                    </c:forEach>
                    
                    
                    
                    </tbody>
                    </table>
                    
                    
                    
                    </div>
                    
                    
                    
                    
                    <div class="col-md-4" style="height: 600px; text-align: center;" id="piechart">
                    
                    </div>
					<script src="https://d3js.org/d3.v3.min.js"></script>     
					<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>

                    <script>
                    

                    var jsondata = ${info}
                        var chartDonut = c3.generate({
                            bindto: "#piechart",
                            data: {
                              json: [jsondata],
                              keys: {
                                value: Object.keys(jsondata),
                              },
                            
                              type: "donut",
                            },
                            donut: {
                               title: "지역별 코로나 확진자 현황",
                            },
                          color: {
                               pattern: ['#1f77b4', '#aec7e8', '#ff7f0e', '#ffbb78', '#2ca02c', '#98df8a', '#d62728', '#ff9896', '#9467bd', '#c5b0d5', '#8c564b', '#c49c94', '#e377c2', '#f7b6d2', '#7f7f7f', '#c7c7c7', '#bcbd22', '#dbdb8d', '#17becf', '#9edae5']
                           }
                          });
                        
                     
                    </script>
                    
                    
               </div>
                <!-- 날씨정보 or 코로나맵 -->


				</div>

			</div>

		</section>
		<!-- #content end -->

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