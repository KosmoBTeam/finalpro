<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp"%>

<!-- <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
    function oneCheckbox(option){
        var obj = document.getElementsByName("checkbox1");
        for(var i=0; i<obj.length; i++){
            if(obj[i] != a){
                obj[i].checked = false;
            }
        }
    }
</script> -->

<body class="stretched">

   <!-- Document Wrapper
    ============================================= -->
   <div id="wrapper" class="clearfix">

      <!-- #header end -->

      <!-- Page Title
        ============================================= -->
      <section id="page-title" class="page-title-parallax"
         style="background-image: url('resources/images/survey/surveychart2.jpg'); padding: 120px 0;"
         data-stellar-background-ratio="0.3">

         <div class="container clearfix">
            <h1 style="color: #ffffff">설문조사 결과</h1>
            <span style="color: #ffffff">StarTrip Trip Guide</span>
            <ol class="breadcrumb">
               <li><a href="main" style="color: #ffffff">Home</a></li>
               <li class="active" style="color: #ffffff">설문조사</li>
            </ol>
         </div>

      </section>
      <!-- #page-title end -->

      <!-- Contact Form & Map Overlay Section
        ============================================= -->
      <section id="map-overlay">

         <div class="container clearfix bgcolor-grey"
            style="width: fit-content;">
            <br>
            <div class="fancy-title title-dotted-border">
               <h3>전체투표 결과 보기</h3>
            </div>

            <div id="column_chart_div1"></div>
            <br>
            <div style="width: 1200px; height: 280px; display: flex;">
               <div id="piechart1" style="width: 400px; height: 280px; flex: 1;"></div>
               <div id="piechart2" style="width: 400px; height: 280px; flex: 1;"></div>
               <div id="piechart3" style="width: 400px; height: 280px; flex: 1;"></div>
            </div>

            <div style="width: 1200px; height: 280px; display: flex;">
               <div id="piechart4" style="width: 400px; height: 280px; flex: 1;"></div>
               <div id="piechart5" style="width: 400px; height: 280px; flex: 1;"></div>
               <div id="piechart6" style="width: 400px; height: 280px; flex: 1;"></div>
            </div>

            <div style="width: 1200px; height: 280px; display: flex;">
               <div id="piechart7" style="width: 400px; height: 280px; flex: 1;"></div>
               <div id="piechart8" style="width: 400px; height: 280px; flex: 1;"></div>
               <div id="piechart9" style="width: 400px; height: 280px; flex: 1;"></div>
            </div>


            <a href="goLocalDetail?locnum=${locnum}"
               class="button button-rounded button-reveal button-large button-3d topmargin-sm noleftmargin tright"
               style="color: #FFF; margin: 30px; float: right;"> <i
               class="icon-angle-right"></i><span>추천 여행지로 이동하기</span></a>
         </div>
   </div>
   <!-- #wrapper end -->

   <script type="text/javascript" src="resources/js/functions.js"></script>
   <script src="https://www.gstatic.com/charts/loader.js"></script>
   <script>
//구글 시각화 API를 로딩하는 메소드
google.charts.load('current', {packages: ['corechart']});
google.charts.setOnLoadCallback(columnChart1);
google.charts.setOnLoadCallback(pieChart);
// 구글 시각화 API가 로딩이 완료되면,
// 인자로 전달된 콜백함수를 내부적으로 호출하여 차트를 그리는 메소드
// 화면이 실행될때 함께 실행된다.
//google.charts.setOnLoadCallback(columnChart1);
// 묶은 세로 막대형 차트 1
function columnChart1() {
   var url ="getcolumnChartDetail"
      $.ajax({
         url : url,
         dataType : "json",
         success : function(d) {
            var result = [];
            var sub = new Set(d.sub);            
            result.push(['항목', '투표수']);
            for (var i = 0; i < d.surveyTitle.length; i++) {               
                  result.push([d.surveyTitle[i], d.cnt[i]]);
               }
            console.log(result)               
            var data = google.visualization.arrayToDataTable(result);
            var options = {      
                  width: 1200,
                  height: 500,               
                  legend: { position: 'none' },
                    series: { 0: { color:'#EAAF22'}},   
                  title:'----------------------------------------------------  인기 지역 순위  ----------------------------------------------------',   
                  titleTextStyle: {
                     
                     fontSize: 20,
                     color:'#EAAF22'   ,   
                     fontName: 'Arial',
                     
                  },
                  animation: { //차트가 뿌려질때 실행될 애니메이션 효과
                          startup: true,
                          duration: 1000,
                          easing: 'linear' },      
            };
            var chart = new google.visualization.ColumnChart(document.getElementById('column_chart_div1'));
            chart.draw(data, options);
      
        },
        error:function(e){
        console.log(e);
     }
      });   
   }
// 버튼 클릭 시 ajax를 사용하여 서버로부터 json 배열 객체를 가져왔다고 가정함
/*
var arr = [
['지역', '투표수',{ role: "style" }],
['제주도', 21, "#b87333"],
['서울', 11, "silver"],
['강원도', 66, "gold"],
['충청도', 53, "color: #e5e4e2"],
['경상도', 53, "color: #e5e4e2"],
['전라도', 53, "color: #e5e4e2"],
['인천', 53, "color: #e5e4e2"],
['대구', 53, "color: #e5e4e2"],
['광주', 53, "color: #e5e4e2"],
['대전', 53, "color: #e5e4e2"],
['울산', 53, "color: #e5e4e2"],
['부산', 53, "color: #e5e4e2"]
];
// 실 데이터를 가진 데이터테이블 객체를 반환하는 메소드
var dataTable = google.visualization.arrayToDataTable(arr);
// 옵션객체 준비
var options = {
title: '가장 선호하는 국내여행지는?',
width: 1200,
height: 500,
hAxis: {
title: '지역',
titleTextStyle: {
}
}
};
// 차트를 그릴 영역인 div 객체를 가져옴
var objDiv = document.getElementById('column_chart_div1');
// 인자로 전달한 div 객체의 영역에 컬럼차트를 그릴수 있는 차트객체를 반환
var chart = new google.visualization.ColumnChart(objDiv);
// 차트객체에 데이터테이블과 옵션 객체를 인자로 전달하여 차트 그리는 메소드
chart.draw(dataTable, options);
*/
 
// drawColumnChart1()의 끝

function pieChart(){
   var url ="getPieChartDetail"
   $.ajax({
      url : url,
      dataType : "json",
      success : function(d) {
         var result = [];
         var k = 1
         var sub = new Set(d.sub);
         /* for(var i = 0 ;i<44; i++){
            for(var j in sub){
               console.log(d.sub[i] === sub[j]);
               if(d.sub[i] === sub[j]){         
                    result.push([d.surveyTitle[i], d.cnt[i]]);
               }else{
                  result.unshift([sub[j],"투표수"]);   
                  console.log(result);
                  var data = google.visualization.arrayToDataTable(result);
                   var options = {
                      title: j,
                      pieHole: 0.3,
                   };
                   //그림 반복해서 넣을 것.
                  var chart = new google.visualization.PieChart(document.getElementById('piechart'+k));
                      chart.draw(data, options);
                  k++;
                  result = [];
               }
            }console.log(k); */
            for(let item of sub){
               result.push([item,"투표수"]);
               for(var i = 0 ;i<44; i++){
                  /* console.log(d.sub[i]);
                  console.log(item);
                  console.log(d.sub[i] === item); */
                  if(item.includes(d.sub[i])){         
                       result.push([d.surveyTitle[i], d.cnt[i]]);
                  }
               }
               var data = google.visualization.arrayToDataTable(result);
                var options = {
                   title: item,
                  titleTextStyle: {fontSize: 13},
                    pieHole: 0.3,
                };
                //그림 반복해서 넣을 것.
               var chart = new google.visualization.PieChart(document.getElementById('piechart'+k));
                   chart.draw(data, options);
               k++;
               result = [];/* console.log(k); */
         }
     },
     error:function(e){
     console.log(e)
  }
   })
}
</script>
</body>
</html>
<%@include file="../footer.jsp"%>