<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    <!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp" %>

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

      </section><!-- #page-title end -->

        <!-- Contact Form & Map Overlay Section
        ============================================= -->
        <section id="map-overlay">

            <div class="container clearfix bgcolor-grey" style="width: fit-content;">
               <br>
               <div class="fancy-title title-dotted-border">
                  <h3>전체투표 결과 보기</h3>
               </div>
            
                 <div id="column_chart_div1"></div>
                 <br>
               <div style="width: 1200px; height: 280px; display: flex;"> 
               <div id = "piechart1" style = "width : 400px; height : 280px; flex: 1;"></div> 
               <div id = "piechart2" style = "width : 400px; height : 280px; flex: 1;"></div> 
               <div id = "piechart3" style = "width : 400px; height : 280px; flex: 1;"></div> 
            </div>
         
            <div style="width: 1200px; height: 280px; display: flex;"> 
               <div id = "piechart4" style = "width : 400px; height : 280px; flex: 1;"></div> 
               <div id = "piechart5" style = "width : 400px; height : 280px; flex: 1;"></div> 
               <div id = "piechart6" style = "width : 400px; height : 280px; flex: 1;"></div> 
            </div>
         
            <div style="width: 1200px; height: 280px; display: flex;"> 
               <div id = "piechart7" style = "width : 400px; height : 280px; flex: 1;"></div> 
               <div id = "piechart8" style = "width : 400px; height : 280px; flex: 1;"></div> 
               <div id = "piechart9" style = "width : 400px; height : 280px; flex: 1;"></div> 
            </div>
          

         <a href="goLocalDetail?locnum=${locnum}" 
                            class="button button-rounded button-reveal button-large button-3d topmargin-sm noleftmargin tright" 
                            style="color:#FFF; margin: 30px; float: right;">
                            <i class="icon-angle-right"></i><span>추천 여행지로 이동하기</span></a>  
          </div>  
</div><!-- #wrapper end -->

    <script type="text/javascript" src="resources/js/functions.js"></script>
<script src="https://www.gstatic.com/charts/loader.js"></script>
<script>
//구글 시각화 API를 로딩하는 메소드
google.charts.load('current', {packages: ['corechart']});
google.charts.setOnLoadCallback(columnChart1);
google.charts.setOnLoadCallback(pieChart1);
google.charts.setOnLoadCallback(pieChart2);
google.charts.setOnLoadCallback(pieChart3);
google.charts.setOnLoadCallback(pieChart4);
google.charts.setOnLoadCallback(pieChart5);
google.charts.setOnLoadCallback(pieChart6);
google.charts.setOnLoadCallback(pieChart7);
google.charts.setOnLoadCallback(pieChart8);
google.charts.setOnLoadCallback(pieChart9);
// 구글 시각화 API가 로딩이 완료되면,
// 인자로 전달된 콜백함수를 내부적으로 호출하여 차트를 그리는 메소드
// 화면이 실행될때 함께 실행된다.
//google.charts.setOnLoadCallback(columnChart1);
// 묶은 세로 막대형 차트 1
function columnChart1() {
// 버튼 클릭 시 ajax를 사용하여 서버로부터 json 배열 객체를 가져왔다고 가정함
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
} // drawColumnChart1()의 끝

function pieChart1(){

    var data = google.visualization.arrayToDataTable([
      ['동반자','투표수', {role: "style"}],
      ['혼자 여행',30, "#b87333"],
      ['커플 여행',30, "silver"],
      ['친구와 여행',25, "gold"],
      ['가족 여행',22, "color: #e5e4e2"],
      ['단체 여행',27, "red"]
    ]);

    var options = {
       title: '누구와 함께 여행을 떠나고 싶으신가요?',
       pieHole: 0.3,
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart1'));
    chart.draw(data, options);
  }
function pieChart2(){

    var data = google.visualization.arrayToDataTable([
      ['여행시 중요도','투표수', {role: "style"}],
      ['경비',30, "#b87333"],
      ['숙소',20, "silver"],
      ['음식',25, "gold"],
      ['관광지 매력도',20, "silver"],
      ['여행객 밀집도',25, "gold"],
      ['기타',25, "gold"]
    ]);

    var options = {
       title: '여행시 가장 중요하게 생각하는 요소는 무엇인가요?',
       pieHole: 0.3,
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart2'));
    chart.draw(data, options);
  }
function pieChart3(){
    var data = google.visualization.arrayToDataTable([
      ['여행 컨셉','투표수', {role: "style"}],
      ['호캉스',30, "#b87333"],
      ['식도락',20, "silver"],
      ['액티비티',25, "gold"],
      ['축제/행사',20, "silver"],
      ['기타',25, "gold"]
    ]);
    var options = {
       title: '선호하는 여행 컨셉은 무엇인가요?',
         pieHole: 0.3,        
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart3'));
    chart.draw(data, options);
  }
function pieChart4(){
    var data = google.visualization.arrayToDataTable([
      ['여행 목적','투표수', {role: "style"}],
      ['쇼핑',30, "#b87333"],
      ['일상탈피',20, "silver"],
      ['새로운 경험',25, "gold"],
      ['휴식',20, "silver"],
      ['식도락',25, "gold"]
    ]);
    var options = {
       title: '여행의 주된 목적은 무엇인가요?',
         pieHole: 0.3,
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart4'));
    chart.draw(data, options);
  }
function pieChart5(){

    var data = google.visualization.arrayToDataTable([
      ['여행 장소','투표수', {role: "style"}],
      ['산',30, "#b87333"],
      ['바다',20, "silver"],
      ['계곡',25, "gold"],
      ['도심',20, "silver"],
      ['기타',25, "gold"]
    ]);
    var options = {
        title: '어디로 여행을 떠나고 싶으신가요?',
         pieHole: 0.3,
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart5'));
    chart.draw(data, options);
  }
function pieChart6(){
    var data = google.visualization.arrayToDataTable([
      ['여행 일정','투표수', {role: "style"}],
      ['당일(1박)',30, "#b87333"],
      ['1박2일',20, "silver"],
      ['2박3일',25, "gold"],
      ['3일 이상',25, "gold"]
    ]);
    var options = {
      title: '선호하는 여행 기간은 며칠인가요?',
         pieHole: 0.3,
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart6'));
    chart.draw(data, options);
  }
function pieChart7(){
    var data = google.visualization.arrayToDataTable([
      ['여행 시간','투표수', {role: "style"}],
      ['1시간 이내',30, "#b87333"],
      ['2시간 이내',20, "silver"],
      ['3시간 이내',25, "gold"],
      ['상관 없음',25, "gold"]
    ]);
    var options = {
      title: '여행을 떠날 때 가장 적절한 소요시간은 얼마인가요?',
     pieHole: 0.3,            
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart7'));
    chart.draw(data, options);
  }
function pieChart8(){

    var data = google.visualization.arrayToDataTable([
      ['계절','투표수', {role: "style"}],
      ['봄',30, "#b87333"],
      ['여름',20, "silver"],
      ['가을',25, "gold"],
      ['겨울',20, "silver"],
      ['상관 없음',25, "gold"]
    ]);

    var options = {
      title: '가장 여행을 떠나고 싶은 계절은 언제 인가요?',
     pieHole: 0.3,            

    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart8'));
    chart.draw(data, options);
  }
function pieChart9(){
    var data = google.visualization.arrayToDataTable([
      ['코로나 종식 후','투표수', {role: "style"}],
      ['여행',30, "#b87333"],
      ['지인 모임',20, "silver"],
      ['영화/공연 관람',25, "gold"],
      ['운동',20, "silver"],
      ['기타',25, "gold"]
    ]);
    var options = {
      title: '코로나 19가 종식 되면 가장 먼저 무엇을 하고 싶은가요?',
     pieHole: 0.3,            
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart9'));
    chart.draw(data, options);
  }
  document.onload(function(){
	  
  })
</script>   
</body>
</html>
<%@include file="../footer.jsp"%>